pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("transfert") {
      steps {
	      sh "echo vvvvvv ${WORKSPACE}"
	       sh "pwd"
         sh "echo pwd"
      }
    }}
}
