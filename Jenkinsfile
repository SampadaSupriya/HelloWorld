pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo "=== Pulling code from GitHub repository (SampadaSupriya/HelloWorld) ==="
                git branch: 'main', url: 'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }
        stage('Compile') {
            steps {
                echo "=== Compiling Java HelloWorld program ==="
                sh 'javac HelloWorld.java'
            }
        }
        stage('Run') {
            steps {
                echo "=== Executing Java HelloWorld program ==="
                sh 'java HelloWorld'
            }
        }
    }
}

