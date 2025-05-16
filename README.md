# 🚀 NGINX Deployment Using AWS CodePipeline, CodeBuild, and CodeDeploy

This project demonstrates end-to-end deployment of a static HTML page using **AWS CodePipeline**, **CodeBuild**, and **CodeDeploy** to an EC2 instance running NGINX.

---

## 📂 Project Structure

├── scripts/

│ ├── install_nginx.sh # Installs and enables NGINX

│ └── start_nginx.sh # Starts NGINX and enables it at boot

├── index.html # Static HTML portfolio page

├── appspec.yml # CodeDeploy deployment configuration

├── buildspec.yml # CodeBuild build instructions

└── README.md # Project documentation (this file)


---

## 🧪 How It Works (End-to-End Pipeline)

1. **CodePipeline** is triggered on code changes in GitHub or S3.
2. **CodeBuild**:
   - Installs NGINX (if not already)
   - Copies `index.html` into the correct location
3. **CodeDeploy**:
   - Executes `install_nginx.sh` during `AfterInstall`
   - Executes `start_nginx.sh` during `ApplicationStart`
4. **EC2 instance** hosts the web app using NGINX.

---

## 🛠️ AWS Services Used

| Service       | Role                                                                 |
|---------------|----------------------------------------------------------------------|
| CodePipeline  | Orchestrates the CI/CD flow from source to deployment                |
| CodeBuild     | Builds the project and prepares artifact for CodeDeploy              |
| CodeDeploy    | Deploys the built artifact to the target EC2 instance                |
| EC2           | Hosts the NGINX web server                                           |
| S3 or GitHub  | Source repository for pipeline trigger                               |

---

## ⚙️ CodePipeline Setup

You can create a CodePipeline using:

- **Source**: GitHub repo or S3 bucket with this code
- **Build Stage**: AWS CodeBuild project (uses `buildspec.yml`)
- **Deploy Stage**: AWS CodeDeploy deployment group (uses `appspec.yml`)

### Key Configurations

- Ensure EC2 instance has **CodeDeploy agent** installed
- EC2 instance should have an **IAM role** with permissions for CodeDeploy and S3
- The **CodeBuild role** must have permissions to read from GitHub and write artifacts to S3

---

## 🌐 Hosted Portfolio (index.html)

A simple portfolio website that contains:

- About Myself

---

## 🧑‍💻 About Me

**Vikas Yadav**  
DevOps & Cloud Engineer (6 Years)  
📍 Location: Noida, India  
📧 Email: [singhvikas180196@gmail.com](mailto:singhvikas180196@gmail.com)  
🔗 LinkedIn: [linkedin.com/in/yourprofile](https://linkedin.com/in/yourprofile)
