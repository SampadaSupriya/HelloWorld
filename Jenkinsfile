pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "sampadasupriya/hello-world-java:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/SampadaSupriya/HelloWorld.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${DOCKER_IMAGE} ."
                    } else {
                        error "Dockerfile not found"
                    }
                }
            }
        }
	stage('Docker Images') {
	    script {
	        sh "docker images"
		}
	}

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'sampada', 
                                                  usernameVariable: 'DOCKER_USER', 
                                                  passwordVariable: 'DOCKER_PASS')]) {
                    sh "echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin"
                }
            }
        }

        stage('Docker Push') {
            steps {
                sh "docker push ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo 'Docker image built and pushed successfully.'
        }
        failure {
            echo 'Docker pipeline failed.'
        }
    }
}

