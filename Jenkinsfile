#!groovy

// https://github.com/feedhenry/fh-pipeline-library
@Library('fh-pipeline-library') _

def repositoryName = "unifiedpush-apb"
def projectName = "test-${repositoryName}-${currentBuild.number}-${currentBuild.startTimeInMillis}"

stage('Trust') {
    enforceTrustedApproval('aerogear')
}

node ("ocp-slave") { 
    stage('Cleanup') {
        deleteDir()
    }
    stage('Cloning the repo') {
        checkout scm
    }
    
    stage('Create OpenShift project') {
        sh script: """
        oc new-project ${projectName}
        """
    }
    stage('Build APB') {
        sh script: """
        oc new-build --name ${repositoryName} --binary
        oc start-build ${repositoryName} --from-dir=.
        sleep 10
        oc logs -f bc/${repositoryName}
        """
    }

    stage('Add admin policy to serviceaccount "default"')

    stage('Test APB') {
        sh script: """
        oc policy add-role-to-user admin --serviceaccount=default
        oc run testing-pod \
            --image=docker-registry.default.svc:5000/${projectName}/${repositoryName} \
            --restart=Never \
            --env POD_NAME=testing-pod \
            --env POD_NAMESPACE=${projectName} \
            --command -- \
            entrypoint.sh test --extra-vars '{\"namespace\": \"${projectName}\"}'
        sleep 10
        oc logs --pod-running-timeout=20s -f pod/testing-pod
        """
    }
    stage('Delete OpenShift project') {
        sh script: """
        oc delete project ${projectName}
        """
    }
}