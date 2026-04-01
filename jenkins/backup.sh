pipeline {
    agent any
    
    environment {
        JENKINS_HOME = "/var/lib/jenkins"
        BACKUP_DIR = "/tmp/jenkins-backup"
        TIME = "${new Date().format('yyyy_MM_dd-HH_mm_ss')}"
    }
    
    stages {
        stage('Prepare backup') {
            steps {
                sh "mkdir -p ${BACKUP_DIR}"
            }
        }
        stage('Create backup') {
            steps {
                sh """
                    tar -czf ${BACKUP_DIR}/jenkins_backup_${TIME}.tar.gz ${JENKINS_HOME}
                """
            }
        }
        stage('Verify') {
            steps {
                sh "ls -lh ${BACKUP_DIR}"
            }
        }
    }
    post {
        success {
            echo "Jenkins backup created successfully"
        }
        failure {
            echo "Backup failed"
        }
    }
}
