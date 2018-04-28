pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("transfert") {
      steps {
        sh "ansible-playbook -i inventory/staging playbook.yml"
      }
    }
}
