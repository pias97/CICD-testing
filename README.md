# CICD Testing using Github Action
A simple 1 tier `flask` app is used to automate a beginer level CI/CD pipeline using Github Actions. 
Currenlty the workflow has been designed to trigger a build and push pipeline for any committed code and deploy it to an AWS EC2 instance.

# Overview
This pipeline is designed to automate the testing and deployment process. It consists of two primary parts:

### CI pipeline:
- **Quality Check**: `sonar.yml` and `W1-linter.yml` files ensures that the code coverage and code quality is well maintained.

- **Build and Push**: This `W2-test_job and build_push.yml` file runs test to ensure that project output is always matches the `test.py`, anything not similar to that will be considered as a fail test and the pipeline won't run further. If the test completes, then it will push an docker image to the registry.



### CD pipeline:
- **Deploy**: This job, `W3-AWS_Deploy.yml` only runs triggers when the `W2-test_job and build_push.yml` job completes.

## Tech stack used in this project:
- Github Actions (CI-CD)
- Docker (Containerization)
- SonarQube (Code Quality)
- Terraform (IAC)
- AWS EC2 (Deployment)



## Running on Local machine

1. **Clone the repository**:
    ```bash
    git clone https://github.com/pias97/python_app_deployment_CICD.git
    ```
2. **Navigate to the project directory**:
    ```bash
    cd python_app_deployment_CICD
    ```
3. **Configure necessary secrets and vars for Dockerhub, Sonarqube and AWS instance**
4. **Install Docker by using shell file from Automation directory**
5. **Build Docker image**
   ```bash
   sudo docker build -t cicd_image .
   ```
6. **Run the Docker image**
   ```bash
   sudo docker run -p 3456:3456 cicd_image
   ```
7. **Access the Flask app in web browser**:
   - http://127.0.0.1:3456
   - or the public IP of AWS instance but 3456 needs to be allowed on inbound security group.

