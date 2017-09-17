pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''docker build -t ruby-ci-example .
'''
      }
    }
  }
}