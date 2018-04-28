pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("transfert") {
      steps {
	      sh "echo hello"
        #sh "ansible-playbook -i inventory/staging playbook.yml"
      }
    }}
}
