pipeline {
    agent { docker 'node:6.3' }
    stage('Build') {
        steps {
            sh 'echo "Hello World"'
            sh '''
                echo "Multiline shell steps works too"
                ls -lah
            '''
        }
    }
}