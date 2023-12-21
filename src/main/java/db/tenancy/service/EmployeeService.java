package db.tenancy.service;

import db.tenancy.model.Employee;
import db.tenancy.repo.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> findLeases() {
        return employeeRepository.findAll();
    }
}