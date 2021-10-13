package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;

import java.util.List;
import java.util.UUID;

public interface AnimalServiceInterface {

    public List<Animal> findAllAnimals();

    public Animal findAnimalById(UUID id);

    public List<AnimalProjection> getAllAnimalsToProjection();
}
