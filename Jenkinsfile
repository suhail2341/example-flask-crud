pipeline {
    agent any
    environment {
        // Define Docker image name and port
        IMAGE_NAME = 'flask-web-app'
        PORT = '5000'
    }
    stages {
        stage('Checkout Code') {
            steps {
                echo 'Cloning the repository...'
                checkout scm // This checks out the repository configured in the Jenkins job
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker image...'
                sh """
                    docker build -t ${IMAGE_NAME} .
                """
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running the Docker container...'
                sh """
                    docker rm -f ${IMAGE_NAME} || true
                    docker run -d -p ${PORT}:${PORT} --name ${IMAGE_NAME} ${IMAGE_NAME}
                """
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed!'
        }
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
