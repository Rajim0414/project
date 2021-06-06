pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Validating..'
		sh 'mvn compile'
            }
        }
        stage('Unit Test') {
            steps {
                echo 'Testing..'
		sh 'mvn test'
            }
        }
        stage('Sonar Analysis') {
            steps {
                echo 'Analyzing....'
		sh 'mvn sonar:sonar -Dsonar.host.url=http://54.208.136.107:9000 -Dsonar.login=fe6a18930c49cf4f2ad47779c47ea8bd1e217773'
            }
        }
    }
}
