package db.tenancy.repo;

import db.tenancy.model.Resident;
import db.tenancy.model.WorkOrder;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface WorkOrderRepository extends JpaRepository<WorkOrder, Integer> {

    List<WorkOrder> findWorkOrderByOwnerID(Integer ownerId);

}
