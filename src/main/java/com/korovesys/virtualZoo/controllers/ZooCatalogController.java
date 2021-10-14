package com.korovesys.virtualZoo.controllers;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import com.korovesys.virtualZoo.services.AnimalServiceImpl;
import com.korovesys.virtualZoo.services.SpeciesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ZooCatalogController {

    @Autowired
    AnimalServiceImpl animalService;

    @Autowired
    SpeciesServiceImpl speciesService;

    @GetMapping("/allAnimalData")
    public List<Animal> getAllAnimals() {

        return animalService.findAllAnimals();
    }

    @GetMapping("/all")
    public List<AnimalProjection> getAllAnimalsToProjections() {
        return animalService.getAllAnimalsToProjection();
    }
}
