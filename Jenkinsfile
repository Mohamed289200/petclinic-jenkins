pipeline {
    agent any

    stages {
       
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
