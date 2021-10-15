package com.korovesys.virtualZoo.controllers;

import com.korovesys.virtualZoo.dtos.ErrorDto;
import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import com.korovesys.virtualZoo.projections.SpeciesProjection;
import com.korovesys.virtualZoo.services.AnimalServiceImpl;
import com.korovesys.virtualZoo.services.SpeciesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
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

    @GetMapping("/{animalName}/{speciesName}")
    public ResponseEntity addAnimal(@PathVariable String animalName, @PathVariable String speciesName) {
        try {
            return ResponseEntity.ok(animalService.welcomeAnimalToZoo(animalName, speciesName));
        } catch (SQLException e) {
            return ResponseEntity.badRequest().body(new ErrorDto(e.getMessage()));
        }
    }

    @GetMapping("/all")
    public List<AnimalProjection> getAllAnimalsToProjections() {
        return animalService.getAllAnimalsToProjection();
    }

    @GetMapping("/species")
    public List<SpeciesProjection> getAllSpecies() {
        return speciesService.getAllSpecies();
    }
}
