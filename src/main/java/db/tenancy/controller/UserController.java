package db.tenancy.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import db.tenancy.model.*;
import db.tenancy.repo.OwnerRepository;
import db.tenancy.repo.ResidentRepository;
import db.tenancy.repo.UserRepository;
import db.tenancy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import static db.tenancy.controller.BCryptPasswordEncoder.decrypt;
import static db.tenancy.controller.BCryptPasswordEncoder.encrypt;

@Controller
public class UserController {

    String secretKey = "ThisIsASecretKey";

    @Autowired
    private UserRepository urepo;
    @Autowired
    LeaseService leaseService;

    @Autowired
    EmployeeService employeeService;
    @Autowired
    ResidentService residentService;
    @Autowired
    UnitService unitService;


    @Autowired
    ResidentRepository residentRepository;

    @Autowired
    OwnerRepository ownerRepository;
    @Autowired
    WorkOrderService workOrderService;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/signup")
    public String getSignup() {
        return "signup";
    }

    @RequestMapping("/owner_signup")
    public String getOwnerSignup() {
        return "owner_signup";
    }

    @RequestMapping("/login")
    public String getLogin() {
        return "login";
    }

    @GetMapping("/leaseResident")
    public String getLeaseResident(){

        return "leaseResident";
    }

    @PostMapping("/resident_home")
    public String getHomeResident() {
        return "resident_home";
    }

    @GetMapping("/login-resident")
    public String getResidentLogin() {
        return "login-resident";
    }

    @PostMapping("/login-resident")
    public String loginResident(@RequestParam("username") String username,
                                @RequestParam("password") String password,
                                HttpSession session, ModelMap modelMap) throws Exception {
        Resident resident = residentRepository.findByEmailAndPassword(username, password);
//        String pass = decrypt(resident.getPassword(), secretKey);



        if (resident != null) {
            String uname = resident.getEmail();
            String upass = resident.getPassword();

            if (username.equalsIgnoreCase(uname) && password.equalsIgnoreCase(upass)) {
                session.setAttribute("username", username);
                session.setAttribute("residentId",resident.getResidentId());
                return "resident_home";
            } else {
                modelMap.put("error", "Invalid Account");
                return "login-resident";
            }
        } else {
            modelMap.put("error", "Invalid Account");
            return "login-resident";
        }
    }



    @PostMapping("/addUser")
    public ModelAndView addUser(@RequestParam("user_email") String user_email, User user) throws Exception {
        ModelAndView mv = new ModelAndView("login-resident");
        List<Resident> list = residentRepository.findResidentByEmail(user_email);

        if (list.size() != 0) {
            mv.addObject("message", "Oops! There is already a user registered with the email provided.");
        } else {
            Resident resident = new Resident();
            resident.setEmail(user_email);
            resident.setFirstName(user.getUser_fname());
            resident.setLastName(user.getUser_lname());
            resident.setPhoneNumber(user.getUser_mobile());
            resident.setPassword(user.getUser_pass());
            Random random = new Random();
            resident.setResidentId(random.nextInt(100000 - 100 + 1) + 10);

            residentRepository.save(resident);
            mv.addObject("message", "User has been successfully registered.");

        }

        return mv;
    }

    @GetMapping("/dummy")
    public String dummy() {
        return "dummy";
    }

    @PostMapping("/login")
    public String login_user(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             HttpSession session, ModelMap modelMap) {

        Owner owner = ownerRepository.findByEmailIdAndPassword(username, password);

        if (owner != null) {
            String uname = owner.getEmailId();
            String upass = owner.getPassword();


            if (username.equalsIgnoreCase(uname) && password.equalsIgnoreCase(upass)) {

                session.setAttribute("username", username);
                session.setAttribute("ownerId",owner.getOwnerId());
                return "owner_home";
            } else {
                modelMap.put("error", "Invalid Account");
                return "login";
            }
        } else {
            modelMap.put("error", "Invalid Account");
            return "login";
        }
    }


    @GetMapping("/leases")
    public String showLeases(Model model,HttpSession session) {
        Integer ownerId= (Integer)session.getAttribute("ownerId");
        List<Lease> leases = leaseService.findLeasesOfOwner(ownerId);
        model.addAttribute("leases", leases);
        return "leases"; // name of the Thymeleaf template
    }

    @GetMapping("/availability")
    public String showAvailability(Model model) {

        return "leases";
    }

    @GetMapping("/resident_home")
    public String showResidentHome(Model model) {
        return "resident_home"; // name of the Thymeleaf template
    }

    @GetMapping("/owner_home")
    public String showOwnerHome(Model model) {

        return "owner_home"; // name of the Thymeleaf template
    }
    @GetMapping("/workorder")
    public String showWOtDetails(Model model,HttpSession session) {
        Integer ownerId= (Integer)session.getAttribute("ownerId");
        List<WorkOrder> workorders = workOrderService.findOwnersWorkOrders(ownerId);
//        List<WorkOrder> workorders = workOrderService.findWorkOrder();
        model.addAttribute("workorders", workorders);
        return "workorder";
    }

    @GetMapping("/residents")
    public String showResidents(Model model,HttpSession session) {
        Integer ownerId= (Integer)session.getAttribute("ownerId");
        List<Resident> residents = residentService.findOwnersResidents(ownerId);
//        List<Resident> residents = residentService.findResidents();
        model.addAttribute("residents", residents);
        return "resident_test";
    }
    @GetMapping("/leasedetails")
    public String displayLease(Model model,HttpSession session) {
        Integer residentId = (Integer) session.getAttribute("residentId");
        Lease leases = leaseService.findLeaseOfResident(residentId);
        model.addAttribute("leases", leases);
        return "leasedetails"; // name of the Thymeleaf template
    }

    @GetMapping("/leaseOwner")
    public String displayLeaseOwner(Model model,HttpSession session) {
        List<Lease> leases = leaseService.findLeases();
        model.addAttribute("leases", leases);
        return "leasedetails"; // name of the Thymeleaf template
    }


    @GetMapping("/lease")
    public String displayResidentLease(Model model,HttpSession session) {
        Integer residentId = (Integer) session.getAttribute("residentId");
        Lease leases = leaseService.findLeaseOfResident(residentId);
        model.addAttribute("leases", leases);
        return "leasedetails"; // name of the Thymeleaf template
    }

    @GetMapping("/leasepayment")
    public String displayLeasePayment(Model model) {
        return "leasepayment"; // name of the Thymeleaf template
    }
    @GetMapping("/placeworkorder")
    public String raiseWO(Model model) {
        return "raiseWO";
    }
}