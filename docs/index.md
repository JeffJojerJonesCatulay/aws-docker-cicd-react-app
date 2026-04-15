## aws-docker-cicd-react-app

A containerized React application deployed using a full CI/CD pipeline on AWS. The project demonstrates automated Docker image builds, image storage in Amazon ECR, and continuous deployment to an EC2 instance using AWS CodePipeline and CodeBuild.

Every code push triggers a pipeline that builds the React app, packages it into a Docker image, pushes it to a container registry, and updates the running application on EC2—showcasing a complete end-to-end DevOps workflow.

> [!NOTE]
> **Focus & Authorship**: This project is primarily designed to explore **CI/CD on AWS services** rather than the React frontend itself. The application code was created using **Google Antigravity** to provide a functional foundation for the automation pipeline.

### Tech Stack

* React (frontend)
* Docker (containerization)
* Amazon ECR (image registry)
* Amazon EC2 (deployment target)
* AWS CodePipeline & CodeBuild (CI/CD)

### Key Features

* Automated build and deployment pipeline
* Docker-based application delivery
* Continuous deployment to cloud infrastructure
* Low-cost, production-style setup

### Purpose

This project is designed to demonstrate practical DevOps concepts, including CI/CD automation, container workflows, and AWS service integration in a real-world deployment scenario.
