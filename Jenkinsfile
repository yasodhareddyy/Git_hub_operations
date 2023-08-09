pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('my-python-app:latest', '-f Dockerfile .')
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.example.com', 'docker-registry-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        
        stage('Run Docker Image') {
            steps {
                script {
                    docker.image('my-python-app:latest').run("-p 8080:80")
                }
            }
        }
    }
}
