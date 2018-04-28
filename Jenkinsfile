pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("transfert") {
      steps {
	      sh "echo vvvvvv ${WORKSPACE}"
	      sh "ansible-playbook -i inventory/staging playbook.yml"
	       sh "pwd"
         sh "echo pwd"
      }
    }}
}
