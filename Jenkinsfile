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
  }
}
