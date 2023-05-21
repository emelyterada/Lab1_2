pipeline {
  agent any
 
  environment {
    DOCKER_REGISTRY = "registry.com" 
    DOCKER_REGISTRY_CREDENTIALS = credentials("regcredid")
  }
 
  stages {
    stage('Check SMC') {
      steps {
        checkout scm
      }
    }
 
    stage('Build and push') {
      steps {
        sh 'docker-compose build'
        sh 'docker-compose push'
      }
    }
 
    stage('Deploy lab') {
      steps {
        script {
          sh 'ssh examole.mail@gmail.com "docker-compose pull && docker-compose up -d"'
        }
      }
    }
  }
}