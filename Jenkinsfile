pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo "=== Pulling code from GitHub repository (SampadaSupriya/HelloWorld) ==="
                git branch: 'main', url: 'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo "=== Building Docker image for HelloWorld app ==="
                sh 'docker build -t hello-world-app .'
            }
        }
        stage('Run Docker Container') {
            steps {
                echo "=== Running Docker container locally ==="
                sh 'docker run --rm hello-world-app'
            }
        }
    }
}

