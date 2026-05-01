pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
    }
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
        stage('Tag & Push to DockerHub') {
            steps {
                sh 'docker tag hello-world-app sampadasupriya/hello-world-app:latest'
                sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                sh 'docker push sampadasupriya/hello-world-app:latest'
            }
        }
    }
}

