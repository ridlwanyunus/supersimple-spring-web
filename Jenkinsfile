pipeline {
	agent any
	stages {
	    stage('Checkout Source'){
	        steps {
	            git 'https://github.com/ridlwanyunus/supersimple-spring-web.git'
	        }
	    }
	    stage('Build Image'){
	        steps {
	            sh 'docker build -t ridlwan/supersimple-spring-web:1.0 .'
	        }
	    }
	}
}