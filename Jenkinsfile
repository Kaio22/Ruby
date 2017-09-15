pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'sudo fpm -m "Kaio <kaio@tois.com>" --url "http://firma.com" --description "Nossa app de teste" -a noarch -s dir -t deb -n my-app --deb-user root --deb-group root -v 0.0.1 --prefix /opt/my-app .'
      }
    }
    stage('Tests') {
      steps {
        sleep 5
      }
    }
    stage('Aproval') {
      steps {
        input 'Você aprova essa caralha para deploy?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "Realizando o deploy!"'
      }
    }
  }
}