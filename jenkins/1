pipeline {
    agent any

    stages {
        stage('Master Server Details') {
		agent any()
            steps {
                sh '''
                echo "===== JENKINS MASTER DETAILS ====="
                hostname
                hostname -I
                uname -a
                lscpu | head -10
                free -h
                df -h
                '''
            }
        }
    }
}
