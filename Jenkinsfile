pipeline {
   agent {
           docker { image 'node:7-alpine' }
       }
       stages {
           stage('Test') {
               steps {
                   sh 'node --version'
               }
           }
       }
       stage('Sanity check') {
                   steps {
                       input "Does the staging environment look ok?"
                   }
               }
}
