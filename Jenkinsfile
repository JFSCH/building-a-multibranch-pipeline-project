node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build Image') {
        app = docker.build("defra-test-1")
    }

    stage('Docker push') {
        docker.withRegistry(env.AWS_LOC, env.AWS_CRED) {
            docker.image('defra-test-1').push('latest')
        }
    }

    stage('AWS ECS display details'){
        sh './jenkins/scripts/aws-task-list-run.sh'
    }

    stage('AWS ECS run task'){
        sh './jenkins/scripts/aws-run-task.sh'
    }
}
