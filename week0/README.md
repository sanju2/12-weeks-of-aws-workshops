# Introduction to Cloud Computing, AWS Services & AWS Well-Architected Framework

## Topics
- Cloud Computing
- Amazon Web Services (AWS)
- AWS Well-Architected Framework

---

## 1. What is Cloud Computing?

### 🔹 Definition
Cloud computing is the **on-demand delivery of computing services**—such as servers, storage, databases, networking, and analytics—**over the internet** (“the cloud”) with **pay-as-you-go** pricing.

---

### 🔹 Key Characteristics
- **On-Demand Self Service** - Provision resources whenever needed.
- **Broad Network Access** - Access services over the internet.
- **Resource Pooling** - Shared resources among multiple customers.
- **Rapid Elasticity** - Scale resources up or down as needed.
- **Measured Service** - Pay only for what you consume.

---

### 🔹 Cloud Service Models

| Model | Description | Example AWS Services |
|--------|--------------|----------------------|
| **IaaS** | Infrastructure as a Service - provides basic computing resources. | EC2, EBS, VPC |
| **PaaS** | Platform as a Service - provides runtime environment for development. | Elastic Beanstalk, RDS |
| **SaaS** | Software as a Service - ready-to-use applications. | MS 365, Chime |

---

### 🔹 Cloud Deployment Models

| Model | Description | Example |
|--------|--------------|----------|
| **Public Cloud** | Fully managed by third-party providers, available to anyone. | AWS |
| **Private Cloud** | Used exclusively by one organization. | VMware Private Cloud |
| **Hybrid Cloud** | Combines public and private cloud features. | AWS Outposts |

---

## 2. Amazon Web Services (AWS)

### 🔹 What is AWS?
Amazon Web Services is the world’s most comprehensive and widely adopted **cloud platform**, offering over **200 services** from data centers worldwide.  
It enables individuals and organizations to build, deploy, and scale applications efficiently.

---

### Core AWS Services by Category

#### Compute
- **EC2 (Elastic Compute Cloud):** Virtual servers in the cloud.  
- **Lambda:** Run code without provisioning servers (Serverless).  
- **Elastic Beanstalk:** Deploy and manage web applications easily.

#### Storage
- **S3 (Simple Storage Service):** Object storage for data, backups, and files.  
- **EBS (Elastic Block Store):** Block storage for EC2 instances.  
- **Glacier:** Long-term archive storage at low cost.

#### Database
- **RDS:** Managed relational databases (MySQL, PostgreSQL, etc.).  
- **DynamoDB:** Fully managed NoSQL database.  
- **Redshift:** Data warehouse for analytics.

#### Networking
- **VPC (Virtual Private Cloud):** Isolated network environment.  
- **Route 53:** DNS and domain management service.  
- **CloudFront:** Content Delivery Network (CDN) for faster global delivery.

#### Security & Identity
- **IAM (Identity and Access Management):** Manage user access and permissions.  
- **KMS (Key Management Service):** Encryption key management.  
- **GuardDuty:** Intelligent threat detection.

#### DevOps & Management Tools
- **CloudFormation:** Infrastructure as Code (IaC).  
- **CloudWatch:** Monitoring and logging.  
- **CodePipeline:** Automate CI/CD pipelines.

#### Machine Learning & AI
- **SageMaker:** Build, train, and deploy ML models.  
- **Rekognition:** Image and video analysis.  
- **Comprehend:** Natural language processing service.

---

## 3. AWS Global Infrastructure

AWS operates on a **global scale** to provide **high availability, low latency**, and **fault tolerance**.

Region → Physical location (e.g., Asia Pacific - Singapore)
Availability Zone (AZ) → Independent data centers (e.g., ap-southeast-1a)
Edge Locations → CDN endpoints for caching (e.g., CloudFront)


### Components
- **Regions:** Geographic areas hosting multiple AZs.  
- **Availability Zones:** Physically separate data centers for resilience.  
- **Edge Locations:** Points of presence used by CloudFront for content delivery.

---

## 4. AWS Well-Architected Framework

### 🔹 Definition
The **AWS Well-Architected Framework** is a collection of best practices designed to help cloud architects build **secure, high-performing, resilient, and efficient** infrastructure for their applications.

---

### 🔹 The Six Pillars

| Pillar | Description | Example Focus Areas |
|--------|--------------|--------------------|
| **1. Operational Excellence** | Improve operations through automation and monitoring. | Logging, automation, runbooks |
| **2. Security** | Protect systems and data. | IAM, encryption, security audits |
| **3. Reliability** | Ensure workloads perform correctly even during failures. | Fault tolerance, backups |
| **4. Performance Efficiency** | Use computing resources efficiently. | Auto Scaling, right-sizing |
| **5. Cost Optimization** | Avoid unnecessary costs. | Cost Explorer, savings plans |
| **6. Sustainability** | Minimize environmental impact. | Resource efficiency, optimization |

---

### Example AWS Architecture (Web App)

![Architecture](/week0/3-Tier-App-AWS.png)