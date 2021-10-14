package com.korovesys.virtualZoo.controllers;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.services.AnimalServiceImpl;
import com.korovesys.virtualZoo.services.SpeciesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
public class TrainingController {

    @Autowired
    SpeciesServiceImpl speciesService;

    @Autowired
    AnimalServiceImpl animalService;

    @GetMapping("/{animalId}/doTrick")
    public ResponseEntity doTrick(@PathVariable String animalId) {
        Animal animal = animalService.findAnimalById(UUID.fromString(animalId));

        return animal != null ?
                ResponseEntity.ok(animalService.doRandomTrick(animal)) : ResponseEntity.badRequest().build();
    }

    @GetMapping("/{animalId}/learnTrick")
    public ResponseEntity learnTrick(@PathVariable String animalId) {
        Animal animal = animalService.findAnimalById(UUID.fromString(animalId));

        return animal != null ?
                ResponseEntity.ok(animalService.learnTrick(animal)) : ResponseEntity.badRequest().build();
    }
}
