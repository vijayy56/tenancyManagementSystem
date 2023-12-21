package db.tenancy.repo;

import db.tenancy.model.Resident;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResidentRepository extends JpaRepository<Resident, Integer> {
    List<Resident> findResidentByEmail(String Email);

    List<Resident> findResidentByOwnerId(Integer ownerId);


    Resident findByEmailAndPassword(String email,String password);
}
