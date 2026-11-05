pipeline {
  agent any
  stages {
    stage("Pull from Github") {
      steps {      
        sh 'git clone https://github.com/codeneo11/java.git'
      }
    }
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
