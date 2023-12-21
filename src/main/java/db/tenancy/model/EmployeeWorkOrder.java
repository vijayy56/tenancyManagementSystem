package db.tenancy.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Employee_WorkOrder")
public class EmployeeWorkOrder {

    @Id
    @Column(name = "Employee_WorkOrder")
    private int employeeWorkOrder;

    @Column(name = "EmployeeID")
    private int EmployeeID;

    @Column(name = "WorkOrderID")
    private int workOrderID;

    @Column(name = "ActualHours")
    private int actualHours;

    @Column(name = "CompletionDate")
    private String completionDate;

    @Column(name = "Rating")
    private String rating;

    @Column(name = "Status")
    private String status;
}