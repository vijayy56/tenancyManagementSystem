package db.tenancy.model;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "WorkOrder")
@Data
public class WorkOrder {

        @Id
        @Column(name = "WorkOrderID")
        private int workOrderID;

        @Column(name = "UnitNo")
        private String unitNo;

        @Column(name = "WorkOrderType")
        private String workOrderType;

        @Column(name = "WorkOrderStartDate")
        private String workOrderStartDate;

        @Column(name = "Priority")
        private String priority;

        @Column(name = "WorkOrderEndDate")
        private String workOrderEndDate;

       @Column
        private Integer EmployeeID;

        @Column(name = "OwnerID")
        private Integer ownerID;
}
