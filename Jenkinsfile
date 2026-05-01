pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SampadaSupriya/HelloWorld.git'
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

