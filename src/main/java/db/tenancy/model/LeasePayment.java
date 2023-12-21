package db.tenancy.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "LeasePayment")
public class LeasePayment {
    @Id
    private int LeasePaymentID;
    @Column
    private int LeaseID;

    @Column
    private int PaymentTypeID;
    @Column
    private String PaymentDate;
    @Column
    private String PaymentDueDate;

}
