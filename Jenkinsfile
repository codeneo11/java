pipeline {
  agent any
  stages {
    stage("Pull from Github") {
      step {      
        sh 'git clone https://github.com/codeneo11/java.git'
      }
    }
    stage("Compile code") {
      step {
        sh 'javac Hello.java'
      }
    stage("Execute app")
      step {
        sh 'java Hello.java'
      }
    }
  }
}
