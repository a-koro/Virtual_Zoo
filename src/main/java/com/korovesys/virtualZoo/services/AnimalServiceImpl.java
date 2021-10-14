package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.dtos.TrickDto;
import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.entities.Trick;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import com.korovesys.virtualZoo.repositories.AnimalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
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
        Optional<Animal> animal = animalRepo.findById(id);
        return animal.isPresent() ? animal.get() : null;
    }

    @Override
    public List<AnimalProjection> getAllAnimalsToProjection() {
        return animalRepo.findBy();
    }

    @Override
    public TrickDto doRandomTrick(Animal animal) {

        TrickDto trick = new TrickDto();
        trick.setTrick(animal.doTrick());
        return trick;
    }

    @Override
    public Animal learnTrick(Animal animal) {
        Optional<Trick> trickToLearn = animal.getSpecies().getTricks()
                .stream()
                .filter(trick -> !animal.getTricks().contains(trick))
                .findAny();

        if (trickToLearn.isPresent()) {
            animal.getTricks().add(trickToLearn.get());
            animalRepo.save(animal);
        }

        return animal;
    }
}
