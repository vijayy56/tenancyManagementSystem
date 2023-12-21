package db.tenancy.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Resident")
public class Resident {

    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ResidentId;
    @Column
    private String FirstName;
    @Column
    private String LastName;
    @Column(name ="Email")
    private String email;

    @Column(name ="Password")
    private String password;
    @Column
    private String PhoneNumber;

    @Column(nullable = true)
    private Integer LeaseID;
    @Column(nullable = true)
    private String UnitNo;
    @Column(name="OwnerId",nullable = true)
    private Integer ownerId;
}

