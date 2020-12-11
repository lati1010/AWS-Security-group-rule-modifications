pipeline {
    agent any
    stages {
        stage('AWS security rule update') {
            steps {
                sh 'pwd'
                sh AWS_Security_group_rule_update.sh
                
            }
        }
    }
}
