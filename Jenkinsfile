pipeline {
    agent any
    environment {
        STUDENT_NAME = "Madiyar"
        STUDENT_SURNAME = "Mombay"
        STUDENT_GROUP = "IT2-2304"
        STUDENT_ID = "37456"
        IMAGE_NAME = "mombay-madiyar-devops"
        CONTAINER_NAME = "mombay-madiyar-container"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building project..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
            }
        }
        stage('Docker Build') {
            steps {
                sh "docker build -t C:\mombay-madiyar-devops{IMAGE_NAME} ."
            }
        }
        stage('Docker Run') {
            steps {
                sh "docker rm -f C:\mombay-madiyar-devops{CONTAINER_NAME} || true"
                sh "docker run --name C:\mombay-madiyar-devops{CONTAINER_NAME} -e STUDENT_NAME=C:\mombay-madiyar-devops{STUDENT_NAME} -e STUDENT_SURNAME=C:\mombay-madiyar-devops{STUDENT_SURNAME} -e STUDENT_GROUP=C:\mombay-madiyar-devops{STUDENT_GROUP} -e STUDENT_ID=C:\mombay-madiyar-devops{STUDENT_ID} C:\mombay-madiyar-devops{IMAGE_NAME}"
            }
        }
    }
    post {
        success {
            echo "Finished: SUCCESS"
        }
    }
}
