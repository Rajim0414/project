pipeline {
    agent any

    stages {
     stage("clean and compile"){
      steps{
        echo "clean and compile the project ..."
        sh 'mvn clean compile'
      }
    }
     stage("Unit test"){
      steps{
        echo "Run Unit test using maven.."
        sh 'mvn test'
      }
    }
     stage("package"){
      steps{
        echo "package the project.."
        sh 'mvn package'
       }
    }
     stage("Build docker image"){
      steps{
        echo "building the image using docker.."
        sh 'docker build -t rajidocker2021/project .'
      }
    }
     stage("Docker push image to Docker hub"){
       steps{
          echo "push docker project image to Docker hub"
          withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
    // some block
          sh "docker login -u rajidocker2021 -p ${DOCKER_HUB_CREDENTIALS}"
    }
          sh "docker push rajidocker2021/project"

     }
     }
      stage("Deploy application on k8s cluster"){
       steps{
       sh '/usr/local/bin/kubectl get all'
//       kubernetesDeploy(
 //           configs: 'project_k8s_deploy_service.yml',
  //          kubeconfigId: 'KUBERNETES_CLUSTER_CONFIG',
  //          enableConfigSubstitution: true
       
            
  //     )
       }  
      }
           
    
   }
}
