pipeline {
   agent {
           docker { image 'node:7-alpine' }
       }
        stage('Sanity check') {
                          steps {
                              input "Does the staging environment look ok?"
                          }
                      }
       stages {
           stage('Test') {
               steps {
                   sh 'node --version'
               }
           }
       }

}
