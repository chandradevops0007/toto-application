
pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "chandradevops007/todo-application-image:latest"
        }
        stages {
            stage()'Clone the repo')
            steps {
                git branch: 'master', credentials: 'github-credentials', url: 'https://github.com/chandradevops0007/todo-application.git'
            }
            
            stage('Build with Maven')
            steps {
                sh 'mvn clean package -DskipTests'
            }

            stage('Build Docker image')
            steps {
                sh 'docker build -t $DOCKER_IMAGE'
            }

            stage('Push to Docker Hub')
            steps {
                sh 'docker push $DOCKER IMAGE'  
            }

            stage('Deploy with Docker compose')
            steps {
                sh 'docker compose down'
                sh 'docker compose up'
            }

            stage('Verify application')
            steps {
                sh 'curl -f https://localhost:8082 || exit 1'

            }

            stage('clean workspace')
            steps {
                sh 'rm -rf *'
            }
        }
}
