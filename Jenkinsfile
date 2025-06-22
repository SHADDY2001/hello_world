pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/SHADDY2001/your-repo-name.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-world-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm hello-world-app'
            }
        }
    }
}
