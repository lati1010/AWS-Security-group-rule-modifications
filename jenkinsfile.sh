pipeline {
    agent any
    stages {
        stage('AWS security rule update') {
            steps {
                sh 'pwd'
                sh 'AWS_Security_group_rule_update.sh 111 192.19.1.1/32	10 10.10.10.10/32
                sh 'date'
                
            }
        }
    }
}
