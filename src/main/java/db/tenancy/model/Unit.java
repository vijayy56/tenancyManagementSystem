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
@Table(name = "Units")
public class Unit {

    @Id
    @Column(name = "UnitNo")
    private String UnitNo;
    @Column
    private Integer AreaSQFT;
    @Column
    private Integer Bedroom;
    @Column
    private Integer Bathroom;
    @Column
    private Integer Garage;
    @Column
    private Boolean isAvailable;
    @Column
    private int OwnerID;

}
