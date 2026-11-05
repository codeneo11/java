pipeline {
  agent any
  stages {
    stage("Compile code") {
      steps {
        sh 'javac Hello.java'
      }
    }
    stage("Execute app") {
      steps {
        sh 'java Hello.java'
      }
    }
    stage("Push to docker") {
      steps {
        withCredentials([usernamePassword(credentialsId: 'tosh-dock', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
          sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
          sh 'docker build -t tosh/java-app .'
          sh 'docker run --rm tosh/java-app'
          sh 'docker push tosh/java-app'
          sh 'docker logout'
        }
      }
    }
  }
}
