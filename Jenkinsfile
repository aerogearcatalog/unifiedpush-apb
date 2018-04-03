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

    try {
    
        stage('Create OpenShift project') {
            sh script: "oc new-project ${projectName}"
        }
        stage('Build APB') {
            try {
                timeout(5) {
                    sh script: """
                    oc new-build --name ${repositoryName} --binary
                    oc start-build ${repositoryName} --from-dir=.
                    sleep 10
                    oc logs -f bc/${repositoryName}
                    """
                }
            } catch (Exception e) {
                error "Build timed out"
            }

        }

        stage('Add admin policy to serviceaccount "default"') {
            sh script: "oc policy add-role-to-user admin --serviceaccount=default"
        }

        stage('Test APB') {
            try {
                timeout(5) {
                    sh script: """
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
            } catch (Exception e) {
                error "Pod didn't finish in time."
            }
        }
        stage('Delete OpenShift project') {
            sh script: "oc delete project ${projectName}"
        }
    } catch (Exception e) {
        try {
            timeout(15) {
                input message: 'The test failed. Click on "Approve" to delete the project. Otherwise it will be deleted after 15 minutes'
            }
        } catch (Exception e2) {
            println("Waiting for a user input exceeded its time limit. Deleting the project now.")
        }

        sh script: "oc delete project ${projectName}"
        error "Error when running the test: ${e}"
    }
}