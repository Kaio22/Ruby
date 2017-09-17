pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''docker build -t ruby-ci-example .
'''
      }
    }
    stage('Test') {
      steps {
        sleep 3
      }
    }
    stage('Aproval') {
      steps {
        input 'Pode subir?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d -p 4567:4567 ruby-ci-example'
      }
    }
  }
}