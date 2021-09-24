node {
 stage('checkout') {
  checkout scm
 }
 stage('deploy') {
  echo 'branch name ' + env.BRANCH_NAME

  if (env.BRANCH_NAME.startsWith("Feature")) {
   echo "Deploying to Dev environment after build"
  } else if (env.BRANCH_NAME.startsWith("Relise")) {
   echo "Deploying to Stage after build and Dev Deployment"
  } else if (env.BRANCH_NAME.startsWith("main")) {
   echo "Deploying to PROD environment"
  }

  sh ""
  "chmod +x HelloWorld.sh 
  . / HelloWorld.sh ""
  "

 }
}