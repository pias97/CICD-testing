# CICD-DEMO
A simple `flask` based project is used to automate a beginer level CI/CD pipeline. 
Currenlty there are two workflows in this repo and they will be triggered if the repository receives any push or pull request. Workflow dependeny has also been added. 

## Overview

This CI/CD pipeline is designed to automate the testing and deployment process for your project. It consists of two primary jobs:

- Test Job: This `test_job.yml` file runs test to ensure that project output is always `Hello World`, anything not similar to that will be considered as a fail test.

- Build/Push Job: This `build_push_job.yml` builds the image and pushes it to Docker Hub.