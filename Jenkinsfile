pipeline{
    agent any
    tools{
        maven "MavenTool"
    }
    stages{
        stage("Check out"){
            steps{
                echo "Current build_id is ${env.BUILD_ID}"
                git branch: 'main', url: 'https://github.com/jrojas77/COMP367_Lab2_WebMVN'
            }
        }
        stage("Build Maven Project"){
            steps{
                bat 'mvn clean install'
            }
        }
        stage("Unit test") {
            steps {
                bat 'mvn test'
            }
        }
        stage('Generate Code Coverage') {
            steps {
                bat 'mvn jacoco:prepare-agent test jacoco:report'
            }

            post {
                always {
                    jacoco execPattern: '**/target/jacoco.exec', classPattern: '**/classes', sourcePattern: '**/src/main/java'
                }
            }
        }
        stage("Docker build") {
            steps {
                script
                {
                    bat'docker build -t jrojasr77/comp367_lab2_webmvn:1.3 .'
                }
            }
        }
        stage("Push Docker Image") {
            steps {
                script
                {
                    bat'docker build -t jrojasr77/comp367_lab2_webmvn:1.3 .'
                }
            }
        }        

	    stage('Docker Login') {
    	    steps {
    	        script {
    	            withCredentials([string(credentialsId: 'CredentialID_DockerHubPWD2', variable: 'DOCKERHUB_PWD')]) {
                    	bat "docker login -u jrojasr77 -p %DOCKERHUB_PWD%"
                		}
    	            }
    	        }
    	    }
        
        stage("Docker push") {
            steps {
                script
                {
                    bat'docker push jrojasr77/comp367_lab2_webmvn:1.3'
                }
            }
        }        
    }
}