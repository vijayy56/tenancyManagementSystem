package db.tenancy.repo;

import db.tenancy.model.EmployeeWorkOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeWorkOrderRepository extends JpaRepository<EmployeeWorkOrder, Integer> {

}
