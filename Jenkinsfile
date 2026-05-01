pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'hello-world-java'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url:'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${env.DOCKER_IMAGE} ."
                    } else {
                        error "Docker file not found"
                    }
                }
            }
        }
	stage('Docker Push') {
		steps {
		    sh 'docker push sampadasupriya/${env.DOCKER_IMAGE}'
		}   
	}
 }

    post {
        success {
            echo 'Docker image build successfully.'
        }
        failure {
            echo 'Docker image build failed.'
        }
    }
}

