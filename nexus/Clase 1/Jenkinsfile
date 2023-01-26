node('maven') 
        {
           stage('Clone') 
                  {
                 sh "git config --global http.sslVerify false"
                 sh "git clone https://github.com/mguazzardo/flaskapi"
                  }
           stage('Deploy') 
                  {
                  sh "oc new-app https://github.com/mguazzardo/apiflask --name flaskapi"
                  sh "oc expose svc flaskapi || true"
                  }
        } 
