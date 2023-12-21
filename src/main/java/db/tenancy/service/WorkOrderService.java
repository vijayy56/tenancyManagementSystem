package db.tenancy.service;

import db.tenancy.model.Resident;
import db.tenancy.model.WorkOrder;
import db.tenancy.repo.WorkOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkOrderService {
    @Autowired
    private WorkOrderRepository woRepository;

    public List<WorkOrder> findWorkOrder() {
        return woRepository.findAll();
    }

    public List<WorkOrder> findOwnersWorkOrders(Integer ownerId) {
        return woRepository.findWorkOrderByOwnerID(ownerId);
    }
}