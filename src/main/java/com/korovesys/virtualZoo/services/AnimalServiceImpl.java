package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import com.korovesys.virtualZoo.repositories.AnimalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class AnimalServiceImpl implements AnimalServiceInterface {

    @Autowired
    AnimalRepo animalRepo;

    @Override
    public List<Animal> findAllAnimals() {
        return animalRepo.findAll();
    }

    @Override
    public Animal findAnimalById(UUID id) {
        return animalRepo.getById(id);
    }

    @Override
    public List<AnimalProjection> getAllAnimalsToProjection() {
        return animalRepo.findBy();
    }
}
