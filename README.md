# Virtual Zoo

**Description:**

Virtual Zoo is a SpringBoot application that serves information about the animals living in our Zoo.
Data is stored in a Cloud based MySql database

**Instructions to run as a Docker container:**
* Open your CLI and run the following commands
  * docker pull korovesys/virtual-zoo
  * docker run -p 8080:8080 korovesys/virtual-zoo

**Endpoints:**
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
