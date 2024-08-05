pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
          checkout scm 
                // Checkout the code from the repository
             
                //git 'git@github.com:Mohamed289200/petclinic-jenkins.git'
            }
        }
        stage('Build') {
            steps {
                // Build the Docker image
                sh 'sudo docker build -t jenkins-pet .'
                echo "##### Build Complete #####"
            }
        }
        stage('Test') {
            steps {
                // Run tests (example command)
                sh 'sudo docker run --rm jenkins-pet ./run-tests.sh'
                echo "##### Tests Complete #####"
            }
        }
        stage('Deploy') {
            steps {
                // Deploy the Docker image (example command)
                sh 'sudo docker push jenkins-pet'
                echo "##### Deploy Complete #####"
            }
        }
    }
}
