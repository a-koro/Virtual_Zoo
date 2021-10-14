# Virtual Zoo

Instructions to build and run as a docker container:

* Clone the repo in your local storage
* Navigate to project base directory from your CLI
* Run the following commands
    * mvn clean install
    * docker build -t virtualzoo-0.0.1.snapshot.jar .
    * docker run -p 9090:8080 virtualzoo-0.0.1.snapshot.jar
    
(Using a cloud based MySql DB)

Useful endpoints:
* localhost:9090/myZoo/animals/all
* localhost:9090/myZoo/animals/{animal ID}/doTrick
* localhost:9090/myZoo/animals/{animal ID}/learnTrick