pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    dir('C:/Users/CEL/Documents/Centennial/4Semester/COMP367_001_2024W_DevOps Implementation_SEC_001/Labs/Lab2/MavenProject/COMP367_Lab2_WebMVN') {
                        echo 'mvn clean install'
                    }
                }                
            }
        }
    }
}