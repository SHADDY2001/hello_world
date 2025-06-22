pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "shaddy100601/hello-world-app:latest" // replace with your Docker Hub username/repo
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm $DOCKER_IMAGE'
            }
        }
    }
}
