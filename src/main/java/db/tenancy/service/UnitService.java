package db.tenancy.service;

import db.tenancy.model.Unit;
import db.tenancy.repo.UnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitService {
    @Autowired
    private UnitRepository unitRepository;

    public List<Unit> findLeases() {
        return unitRepository.findAll();
    }
}