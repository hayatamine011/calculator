pipeline {
  agent any
	
  triggers {
    pollSCM('* * * * *')
  }
	
  stages {
    stage("transfert") {
      steps {
	      sh "echo vvvvvv ${WORKSPACE}"
	      echo "Stashing Any Local Changes"
        sh 'git stash'
        echo "Checking Out staging Branch"
        sh 'git checkout staging'
        sh 'git pull origin'
	
        echo 'Tagging the Release'
        sh "git tag rectangle-${env.MAJOR_VERSION}.${env.BUILD_NUMBER}"
        sh "git push origin rectangle-${env.MAJOR_VERSION}.${env.BUILD_NUMBER}"
echo "salam world :)!"
	      sh "ansible-playbook -i inventory/staging playbook.yml"
	       sh "pwd"
         sh "echo pwd"
      }
    }}
}
