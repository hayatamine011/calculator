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
	
        sh 'git checkout master'
        sh 'git pull origin'
	sh 'ls .'
	     
	      sh 'ansible-playbook -i  inventory/staging playbook.yml -vvv'
        echo 'Tagging the Release'
       
echo "salam world :)!"
	       sh "pwd"
         sh "echo pwd"
      }
    }}
}
