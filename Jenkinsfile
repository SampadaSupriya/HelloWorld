pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t java-app:v1 .'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker run --rm java-app:v1'
            }
        }
    }
}

