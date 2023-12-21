package db.tenancy.service;

import db.tenancy.model.Resident;
import db.tenancy.repo.ResidentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResidentService {
    @Autowired
    private ResidentRepository residentRepository;

    public List<Resident> findResidents() {
        return residentRepository.findAll();
    }

    public List<Resident> findOwnersResidents(Integer ownerId) {
        return residentRepository.findResidentByOwnerId(ownerId);
    }



}