pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }

        stage('Clean') {
            steps {
                sh 'rm -rf bin *.class'
            }
        }

        stage('Compile') {
            steps {
                sh 'mkdir -p bin'
                sh 'javac -d bin HelloWorld.java'
            }
        }

        stage('Execute') {
            steps {
                sh 'java -cp bin HelloWorld'
            }
        }
    }
}

