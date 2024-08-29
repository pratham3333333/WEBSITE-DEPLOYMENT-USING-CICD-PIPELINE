# 🚀 CI/CD Pipeline for NGINX Deployment on EC2 using AWS Services

![WEBSITE-CICD-PROJECT](https://github.com/user-attachments/assets/b8162366-e7e6-4370-af7f-97e6edbec0b9)

Welcome to the **CI/CD Pipeline for NGINX Deployment** project! This repository contains everything you need to set up a fully automated pipeline using AWS CodeCommit, CodeBuild, CodeDeploy, S3, and SNS. The pipeline is designed to deploy an NGINX web server on an EC2 instance, complete with notifications for successful deployments.

## 🌟 **Project Overview**

This project automates the deployment of an NGINX web server on an EC2 instance using the following AWS services:

- **CodeCommit**: Version control for storing source code and configuration files.
- **CodeBuild**: Compiles and builds the project.
- **S3**: Stores build artifacts.
- **CodeDeploy**: Deploys the application to the EC2 instance.
- **SNS**: Sends email notifications upon successful deployment.

## 🛠️ **Key Features**

- **Automated Deployments**: Push code changes to CodeCommit, and the pipeline automatically builds and deploys them.
- **NGINX Web Server**: Set up and configure NGINX on an EC2 instance using scripts.
- **Email Notifications**: Get notified via email when the deployment is successful.
- **Scalable Architecture**: Easily scalable to meet the needs of your application.

## 🔧 **Setup Instructions**

### 1. **Clone the Repository**
   ```bash
   git clone https://git-codecommit.<region>.amazonaws.com/v1/repos/MyAppRepo
   ```

### 2. **Create and Configure AWS Services**
   - **CodeCommit**: Store your source code.
   - **CodeBuild**: Build and package your application.
   - **S3**: Store your build artifacts.
   - **CodeDeploy**: Automate your deployment process.
   - **SNS**: Configure email notifications.

### 3. **Install CodeDeploy Agent on EC2**
   - Install and start the CodeDeploy agent on your EC2 instance.

### 4. **Push Code to CodeCommit**
   - Add and commit your files, then push them to the repository.

### 5. **Deploy and Monitor**
   - Monitor the deployment process and receive email notifications.

## 📝 **Configuration Files**

### **`buildspec.yml`**
Defines the build process for CodeBuild.

### **`appspec.yml`**
Specifies the deployment steps for CodeDeploy.

### **Scripts**
- **`install_nginx.sh`**: Installs NGINX on the EC2 instance.
- **`start_nginx.sh`**: Starts the NGINX service.
