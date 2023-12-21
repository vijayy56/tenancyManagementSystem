package db.tenancy.service;

import db.tenancy.model.Lease;
import db.tenancy.model.Resident;
import db.tenancy.repo.LeaseRepository;
import db.tenancy.repo.ResidentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class LeaseService {
    @Autowired
    private LeaseRepository leaseRepository;
    @Autowired
    private ResidentRepository residentRepository;
    public List<Lease> findLeases() {
        return leaseRepository.findAll();
    }

    public List<Lease> findLeasesOfOwner(Integer ownerId) {
        List<Resident> residents = residentRepository.findResidentByOwnerId(ownerId);
        List<Integer> residentIDs =residents.stream()
                .map(Resident::getResidentId)
                .collect(Collectors.toList());

        return leaseRepository.findLeasesByResidentIDIn(residentIDs);
    }


    public Lease findLeaseOfResident(Integer residentId) {
        return leaseRepository.findByResidentID(residentId);
    }
}