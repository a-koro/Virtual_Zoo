package com.korovesys.virtualZoo.controllers;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import com.korovesys.virtualZoo.services.AnimalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
public class ZooCatalog {

    @Autowired
    AnimalServiceImpl animalService;

    @GetMapping("/test")
    public Animal getAnimals() {

        UUID id = UUID.fromString("e452695d-79fa-4e4d-8196-ffd4c7562e3b");

        System.out.println(id);

        Animal ddoo = animalService.findAnimalById(id);
        return ddoo;
    }

    @GetMapping("/all")
    public List<Animal> getAllAnimals() {

        return animalService.findAllAnimals();
    }

    @GetMapping("/allP")
    public List<AnimalProjection> getAllAnimalsToProjections() {
        return animalService.getAllAnimalsToProjection();
    }
}
