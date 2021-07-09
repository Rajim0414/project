pipeline {
    agent any

    stages {
     stage("clean and compile"){
        echo "clean and compile the project ..."
        sh 'mvn clean compile'
    }
     stage("Unit test"){
        echo "Run Unit test using maven.."
        sh 'mvn test'
    }
     stage("package"){
        echo "package the project.."
        sh 'mvn package'
    }
     stage("Build docker image"){
        echo "building the image using docker.."
        sh 'docker build -t rajidocker2021/project .'
    }
                 
    }
}
