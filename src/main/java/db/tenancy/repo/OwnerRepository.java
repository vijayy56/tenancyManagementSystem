package db.tenancy.repo;


import db.tenancy.model.Owner;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OwnerRepository extends JpaRepository<Owner, Integer> {
    Owner findByEmailIdAndPassword(String email,String pass);
}
