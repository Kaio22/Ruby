pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t ruby-ci-example .'
      }
    }
    stage('Tests') {
      steps {
        sleep 2
      }
    }
    stage('Aproval') {
      steps {
        input 'Você aprova essa caralha para deploy?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d -p 4567:4567 ruby-ci-example'
      }
    }
  }
}