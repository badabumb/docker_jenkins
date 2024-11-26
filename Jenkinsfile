pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Клонирование репозитория
                checkout scm
            }
        }
        stage('Build Containers') {
            steps {
                // Сборка контейнеров с помощью docker-compose
                sh 'docker-compose build'
            }
        }
        stage('Run Containers') {
            steps {
                // Запуск контейнеров
                sh 'docker-compose up -d'
            }
        }
    }
}