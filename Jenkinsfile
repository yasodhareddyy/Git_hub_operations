pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from Git repository
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile
                script {
                    dockerImage = docker.build("my-docker-image:${env.BUILD_NUMBER}")
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                // Push the Docker image to a Docker registry
                script {
                    docker.withRegistry('https://registry.example.com', 'docker-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }
        
        stage('Run Docker Image') {
            steps {
                // Run the Docker image, for example, using Docker Compose or Kubernetes
                script {
                    dockerImage.run("-p 8080:80 -d --name my-container")
                }
            }
        }
    }
    
    post {
        always {
            // Clean up resources if needed
            deleteDir()
        }
    }
}
