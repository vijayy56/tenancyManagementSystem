package db.tenancy.repo;

import db.tenancy.model.Lease;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LeaseRepository extends JpaRepository<Lease, Integer> {

    Lease findByResidentID(Integer residentId);

    List<Lease> findLeasesByResidentIDIn(List<Integer> residentIds);

}
