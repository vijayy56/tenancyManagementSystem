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
@Table(name="SupplierOrder")
public class SupplierOrder {
    @Id
    private int OrderID;

    @Column
    private String SupplierName;

    @Column
    private int PaymentTypeID;

    @Column
    private String TransactionDate;
    @Column
    private String TransactionAmount;

}
