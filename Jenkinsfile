pipeline {
    agent any

    stages {
        
        stage('clean and compile project') {
            steps {
                echo 'compile project..'
                def mavenHome = tool name:"maven-3.0.5, type:maven"
                def mavenCMD = "${ mavenHome }/bin/mvn"
		sh '${mavenCMD} compile'
            }
        }
                 
    }
}
