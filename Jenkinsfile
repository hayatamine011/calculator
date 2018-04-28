pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("Compile") {
      steps {
        sh "ansible-playbook -i inventory/staging playbook.yml"
      }
    }



}
