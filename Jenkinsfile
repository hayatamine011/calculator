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
	sh 'mkdir calculator'
	sh 'cd calculator'
        sh 'git checkout master'
        sh 'git pull origin'
	sh 'ls .'
	      sh 'ls ..'
	      sh 'ansible-playbook -i  inventory/staging playbook.yml'
        echo 'Tagging the Release'
       
echo "salam world :)!"
	       sh "pwd"
         sh "echo pwd"
      }
    }}
}
