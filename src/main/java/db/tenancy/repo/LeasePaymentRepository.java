package db.tenancy.repo;

import db.tenancy.model.LeasePayment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LeasePaymentRepository extends JpaRepository<LeasePayment, Integer> {

}
