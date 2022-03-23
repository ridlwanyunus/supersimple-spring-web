pipeline {
	agent any
	stages {
	    stage('Checkout Source'){
	        steps {
	            git 'https://github.com/ridlwanyunus/supersimple-spring-web.git'
	        }
	    }
	    stage('Build Maven'){
	        steps {
	            sh 'mvn clean install'
	        }
	    }
	    stage('Build Docker Image'){
	        steps {
	            sh 'docker build -t ridlwan/supersimple-spring-web:1.0 .'
	        }
	    }
	}
}