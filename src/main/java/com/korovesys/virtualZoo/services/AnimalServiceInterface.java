package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.dtos.TrickDto;
import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

public interface AnimalServiceInterface {

    public List<Animal> findAllAnimals();

    public Animal findAnimalById(UUID id);

    public List<AnimalProjection> getAllAnimalsToProjection();

    public TrickDto doRandomTrick(Animal animal);

    public Animal learnTrick(Animal animal);

    public Animal welcomeAnimalToZoo(String animalName, String speciesName) throws SQLException;
}
