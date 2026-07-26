# AWS Lambda Beginner Project
## Project 01 - S3 File Upload Logger

## 📖 Overview

This project helps you learn the fundamentals of **AWS Lambda** by building a simple event-driven application.

When a file is uploaded to an Amazon S3 bucket:

1. S3 generates an event.
2. Lambda receives the event.
3. Lambda extracts the bucket name and file name.
4. Lambda writes the information to CloudWatch Logs.

---

## 🎯 Learning Objectives

After completing this project, you will understand:

- What AWS Lambda is
- How Lambda is triggered
- AWS IAM Roles
- Amazon S3 Events
- CloudWatch Logs
- Event-driven architecture
- Reading Lambda event JSON
- Deploying Lambda code

---

# Architecture

```
        Upload File
             │
             ▼
     +----------------+
     |   Amazon S3    |
     +----------------+
             │
     Object Created Event
             │
             ▼
     +----------------+
     | AWS Lambda     |
     +----------------+
             │
             ▼
     CloudWatch Logs
```

---

# Prerequisites

- AWS Account
- AWS Console Access
- Basic Python knowledge
- No AWS experience required

---

# Step 1 - Create an S3 Bucket

1. Login to AWS Console.
2. Open **Amazon S3**.
3. Click **Create Bucket**.

Example

```
Bucket Name:
my-lambda-demo-12345
```

Leave all settings as default.

Click **Create Bucket**.

---

# Step 2 - Create Lambda Function

Open

```
AWS Console
```

Search

```
Lambda
```

Click

```
Create Function
```

Select

```
Author from scratch
```

Configuration

| Setting | Value |
|----------|-------|
| Function Name | FileUploadLogger |
| Runtime | Python 3.13 |
| Architecture | x86_64 |
| Permissions | Create a new role with basic Lambda permissions |

Click

```
Create Function
```

---

# Step 3 - Write Lambda Code

Replace the default code with:

```python
import json

def lambda_handler(event, context):

    print("Received Event:")
    print(json.dumps(event, indent=2))

    bucket = event['Records'][0]['s3']['bucket']['name']
    filename = event['Records'][0]['s3']['object']['key']

    print(f"Bucket : {bucket}")
    print(f"File   : {filename}")

    return {
        "statusCode": 200,
        "body": "Success"
    }
```

Click

```
Deploy
```

---

# Step 4 - Add S3 Trigger

Inside Lambda

Click

```
Add Trigger
```

Select

```
S3
```

Choose

```
my-lambda-demo-12345
```

Event Type

```
All object create events
```

Check

```
I acknowledge...
```

Click

```
Add
```

---

# Step 5 - Test

Open your bucket.

Click

```
Upload
```

Upload

```
hello.txt
```

---

# Step 6 - View CloudWatch Logs

Open

```
CloudWatch
```

Navigate

```
Logs

↓

Log Groups

↓

/aws/lambda/FileUploadLogger
```

You should see something similar to:

```
Bucket : my-lambda-demo-12345
File   : hello.txt
```

Congratulations!

Your Lambda function has executed successfully.

---

# Understanding the Event

S3 sends the following event to Lambda.

```json
{
  "Records": [
    {
      "s3": {
        "bucket": {
          "name": "my-lambda-demo-12345"
        },
        "object": {
          "key": "hello.txt"
        }
      }
    }
  ]
}
```

Lambda receives this JSON automatically.

---

# Step 7 - Improve the Function

Update the code.

```python
import json
import os

def lambda_handler(event, context):

    bucket = event['Records'][0]['s3']['bucket']['name']
    filename = event['Records'][0]['s3']['object']['key']

    extension = os.path.splitext(filename)[1]

    print("Bucket :", bucket)
    print("File :", filename)
    print("Extension :", extension)

    return {
        "statusCode": 200
    }
```

Now upload:

```
photo.png
resume.pdf
notes.txt
```

CloudWatch will display:

```
Bucket : my-lambda-demo-12345
File : photo.png
Extension : .png
```

---

# Project Folder Structure

```
aws-lambda-beginner/

│
├── README.md
└── lambda_function.py
```

---

# lambda_function.py

```python
import json
import os

def lambda_handler(event, context):

    bucket = event['Records'][0]['s3']['bucket']['name']
    filename = event['Records'][0]['s3']['object']['key']

    extension = os.path.splitext(filename)[1]

    print(f"Bucket: {bucket}")
    print(f"Filename: {filename}")
    print(f"Extension: {extension}")

    return {
        "statusCode": 200,
        "body": "Success"
    }
```

---

# Expected Output

```
START RequestId: xxxxx

Bucket: my-lambda-demo-12345

Filename: hello.txt

Extension: .txt

END RequestId: xxxxx

REPORT RequestId: xxxxx
```

---

# Cleanup

To avoid charges:

- Delete the Lambda function
- Delete the S3 bucket (after removing all objects)
- Delete the CloudWatch Log Group (optional)

---

# What You Learned

✅ AWS Lambda

✅ Amazon S3 Events

✅ IAM Execution Role

✅ CloudWatch Logs

✅ Event-driven Architecture

✅ Deploying Lambda Functions

✅ Reading Event JSON

---

# Next Project

**Project 02 – EventBridge Scheduler**

Architecture

```
EventBridge Scheduler

        │

        ▼

AWS Lambda

        │

        ▼

CloudWatch Logs
```

In the next project, you will learn:

- EventBridge Rules
- Scheduled Lambda execution
- Cron expressions
- Rate expressions
- Building serverless automation