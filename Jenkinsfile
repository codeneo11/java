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
          sh 'docker build -t $DOCKER_USER/java-app .'
          sh 'docker run --rm $DOCKER_USER/java-app'
          sh 'docker push $DOCKER_USER/java-app'
          sh 'docker logout'
        }
      }
    }
  }
}
