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
@Table(name = "Owners")
public class Owner {

    @Id
    private int OwnerId;
    @Column
    private String FirstName;
    @Column
    private String LastName;
    @Column(name = "EmailId")
    private String emailId;
    @Column(name = "Password")
    private String password;
    // Getters and setters
}
