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
                echo "Building project..."
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
            }
        }
        stage('Docker Build') {
            steps {
                sh "docker build -t mombay-madiyar-devops ."
            }
        }
        stage('Docker Run') {
            steps {
                sh "docker rm -f mombay-madiyar-container || true"
                sh "docker run --name mombay-madiyar-container -e STUDENT_NAME=Madiyar -e STUDENT_SURNAME=Mombay -e STUDENT_GROUP=IT2-2304 -e STUDENT_ID=37456 mombay-madiyar-devops"
            }
        }
    }
    post {
        success {
            echo "Finished: SUCCESS"
        }
    }
}
