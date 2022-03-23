pipeline {
	agent any
	environment {
	    DOCKERHUB_CREDENTIALS=credentials('ridlwan-dockerhub-creds')
	}

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
	    stage('Login to dockerhub'){
	        steps {
	            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
	        }
	    }
	    stage('Push image to dockerhub'){
	        steps {
	            sh 'docker push ridlwan/supersimple-spring-web:1.0'
	        }
	    }
	    stage('Deploy to kubernetes'){
	        steps {
	            script {
            	    kubernetesDeploy(configs: "httpd.yml", kubeconfigId: "mykubeconfiguration")
            	}
	        }
	    }
	}
	
	post {
	    always {
	        sh 'docker logout'
	        sh 'docker rmi ridlwan/supersimple-spring-web:1.0'
	    }

	}

}