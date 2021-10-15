# Virtual Zoo

(Using a cloud based MySql DB)

Endpoints:
* Get all animals
  * localhost:8080/myZoo/animals/all
* Get all animals by species
  * localhost:8080/myZoo/animals/species
* Get a random trick by animal ID
  * localhost:8080/myZoo/animals/{animal ID}/doTrick
* Teach an animal a new trick by animal ID
  * localhost:8080/myZoo/animals/{animal ID}/learnTrick
* Add a new animal to the Zoo
  * localhost:8080/myZoo/animals/{animal name}/{species name}

Description:
 
  Virtual Zoo is a SpringBoot application that serves information about the animals living in our Zoo.
  Data is stored in a MySql database