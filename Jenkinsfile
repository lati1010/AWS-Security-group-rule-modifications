pipeline {
    agent any
    stages {
        stage('Terraform_Installation') {
            steps {
                sh 'pwd'
                sh 'ls -lhatr'
                sh 'sh AWS_Security_group_rule_update.sh 111 192.19.1.1/32 10 10.10.10.10/32'
                sh 'sh ./ansible.sh'
            }
        }
    }
}
