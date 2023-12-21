package db.tenancy.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Lease")
public class Lease {

    @Id
    private int LeaseID;

    @Column
    private String UnitNo;

    @Column(name="ResidentID")
    private int residentID;
    @Column
    private Date LeaseStartDate;
    @Column
    private Date LeaseEndDate;
    @Column
    private int MonthlyRent;
    @Column
    private int SecurityDeposit;

    // Getters and setters
}
