# CICD Testing using Github Action
A simple `flask` based project is used to automate a beginer level CI/CD pipeline. 
Currenlty the workflow has been designed to trigger a build and push pipeline for any committed code and deploy it to an AWS ec2 instance.

# Overview

### CI and CD pipeline:
This pipeline is designed to automate the testing and deployment process for your project. It consists of two primary parts:

- Build and Push: This `W2-test_job and build_push.yml` file runs test to ensure that project output is always matches the `test.py`, anything not similar to that will be considered as a fail test and the pipeline won't run further. If the test completes, then it will push an docker image to the registry.

- Deploy: This job, `W3-AWS_Deploy.yml` only runs triggers when the `W2-test_job and build_push.yml` job completes.

### Terraform and Automation:
 - Terraform template
    - `ec2` module to create EC2 instance/s on AWS
 - Automation
    - `docker.sh` script to install docker
    - `terraform.sh` script to install terraform  


## Tech stack used in this project:
- GitHub (Code)
- Github Actions (CI-CD)
- Docker (Containerization)
- SonarQube (Code Quality)
- Terraform (IAC)
- AWS EC2 (Deployment)
