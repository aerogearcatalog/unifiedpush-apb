#!groovy

// https://github.com/feedhenry/fh-pipeline-library
@Library('fh-pipeline-library') _

stage('Trust') {
    enforceTrustedApproval('aerogear')
}

node ("ocp-slave") { 
    def apb_container_id, pod_container_id, apb_pod_output
    def apb_version = "sprint147.2"
    
    stage('Cleanup') {
        deleteDir()
    }

    stage('Cloning the repo') {
        checkout scm
    }

    stage('Run APB test') {
        apb_container_id = sh (
            script: "docker run --detach --net=host --privileged -v \$PWD:/mnt -v \$HOME/.kube:/.kube -v /var/run/docker.sock:/var/run/docker.sock -u \$UID docker.io/ansibleplaybookbundle/apb-tools:${apb_version} test --registry-route docker-registry.default.svc:5000",
            returnStdout: true
        ).trim()
    }

    stage('Watch the logs') {
        
        pod_container_id = sh (
            script: "sleep 30 ; docker ps --filter since=${apb_container_id} | grep 'entrypoint.sh test' | awk '{print \$1}'",
            returnStdout: true
        ).trim()
        
        test_playbook_output = sh (
            script: "docker logs -f ${pod_container_id}",
            returnStdout: true
        ).trim()
        
        echo test_playbook_output
    }
    
    stage('Get APB container logs and evaluate test result') {

        apb_pod_output = sh (
            // We must wait for APB container to finish. Otherwise `docker logs` command does not work.
            script: "sleep 10 ; docker logs -f ${apb_container_id}",
            returnStdout: true
        ).trim()

        echo apb_pod_output
        
        if ( apb_pod_output.contains("Pod phase Failed") || !test_playbook_output.contains("failed=0") ) {
            error("APB test failed.")
        }
    }
}
