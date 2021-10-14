package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.projections.SpeciesProjection;
import com.korovesys.virtualZoo.repositories.SpeciesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpeciesServiceImpl implements SpeciesServiceInterface{

    @Autowired
    SpeciesRepo speciesRepo;

    @Override
    public List<SpeciesProjection> getAllSpecies() {
        return speciesRepo.findBy();
    }
}
