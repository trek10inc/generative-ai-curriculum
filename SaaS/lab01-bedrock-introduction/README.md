# SaaS Lab01 - Bedrock Introduction

This lab provides a hands-on introduction for running foundational models on AWS Bedrock. This lab will walk you through the basics of connecting to the Amazon Bedrock service from Python. You will get hands on experience with the set of foundational models currently made available via AWS Bedrock.

This lab was inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).

This lab relies on the use of a Jupyter notebook. If you are unfamiliar with Jupyter notebooks, please refer to the [Jupyter Documentation](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html) for more information. The instructions found in this readme assist in setting up the environment for the lab, but the lab itself is contained in the [bedrock_introduction.ipynb](bedrock_introduction.ipynb) Jupyter notebook found in this repository.
## Table of Contents

1. [Lab Objectives](#lab-objectives)
2. [Prerequisites](#prerequisites)
3. [Setting Up Your Environment](#setting-up-your-environment)
4. [Lab Instructions](#lab-instructions)
5. [Credits and Acknowledgments](#credits-and-acknowledgments)

<!-- 5. [Troubleshooting](#troubleshooting)
6. [Contact](#contact)) -->

## Lab Objectives

In this lab, you will learn:

- The basics of connecting to the Amazon Bedrock service from the Python SDK.
- Basic understanding of the Bedrock API.
- Understand how to run the full set of foundational models made available via AWS Bedrock:
    - Amazon Titan Large
    - Anthropic Claude
    - AI21 Jurassic Grande
    - Stability Stable Diffusion XL
- Understand how to interact with the models via the streaming text API.

## Prerequisites
- An active AWS account. (With access to the AWS Bedrock service)
<!-- - AWS CLI installed and given access to said account. -->
- Basic knowledge of Python programming.
<!-- - Familiarity with command line interface (CLI). -->
<!-- - Basic understanding of AWS services (specifically [EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) and [CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)) and cloud computing basics. -->

<!-- For more information on configuring your CLI please refer to the [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [Configuring the CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) for instructions on how to do so. -->


## Setting Up Your Environment
- You must have an active AWS account. (With access to the AWS Bedrock service)

### Choose a notebook environment
This lab utalizes a Jupyter Notebook to run the code. There are multiple options for running a Jupyter Notebook:
- For a fully-managed environment with rich AI/ML features, we'd recommend using [SageMaker Studio](https://docs.aws.amazon.com/sagemaker/latest/dg/studio.html). To get started quickly, you can refer to the instructions for domain quick setup.
- For a fully-managed but more basic experience, you could instead create a [SageMaker Notebook Instances](https://docs.aws.amazon.com/sagemaker/latest/dg/nbi.html).
    <!-- - we provide CF? -->
- If you prefer to use your existing (local or other) notebook environment, make sure it has credentials for calling AWS.


### Enable AWS IAM permissions for Bedrock
- The AWS identity you assume from your notebook environment (which is the Studio/notebook Execution Role from SageMaker, or could be a role or IAM User for self-managed notebooks), must have sufficient AWS IAM permissions to call the Amazon Bedrock service.

To grant Bedrock access to your identity, you can:

- Open the AWS IAM Console
- Find your Role (if using SageMaker or otherwise assuming an IAM Role), or else User
- Select Add Permissions > Create Inline Policy to attach new inline permissions, open the JSON editor and paste in the below example policy:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "BedrockFullAccess",
            "Effect": "Allow",
            "Action": ["bedrock:*"],
            "Resource": "*"
        }
    ]
}
```

> ⚠️ N.B. With Amazon SageMaker, your notebook execution role will typically be separate from the user or role that you log in to the AWS Console with. If you'd like to explore the AWS Console for Amazon Bedrock, you'll need to grant permissions to your Console user/role too.

For more information on the fine-grained action and resource permissions in Bedrock, check out the Bedrock Developer Guide.


<!-- N.B. This lab utilizes a CloudFormation template to deploy the required infrastructure for the lab. If you can deploy a CloudFormation template, your environment is ready to go. Because all of the Python code is server-side, no additional setup is required for Python. -->

## Lab Instructions

### Step 1: Create a new notebook instance
Using one of the notebook environments listed in the [Choose a notebook environment](#choose-a-notebook-environment) section, create a new notebook instance.

### Step 2: Clone this repository

> ℹ️ N.B. In SageMaker Studio, you can open a "System Terminal" to run these commands by clicking File > New > Terminal

Clone this repository to your notebook instance. This can be done by running the following command in a terminal:
```bash
git clone https://github.com/trek10inc/generative-ai-curriculum.git
cd generative-ai-curriculum
```

Because the service is in preview, the Amazon Bedrock SDK is not yet included in standard releases of the AWS SDK for Python - boto3. Run the following script to download and extract custom SDK wheels for testing Bedrock:

```
cd SaaS
./download-dependencies.sh
```

This script will create a dependencies folder and download the relevant SDKs, but will not pip install them just yet.

You're now ready to explore the lab notebooks! Start with [bedrock_introduction.ipynb](bedrock_introduction.ipynb) for details on how to install the Bedrock SDKs, create a client, and start calling the APIs from Python.

### Step 3: Open the notebook
Open the `SaaS/lab01-bedrock-introduction/bedrock-introduction.ipynb` notebook in your notebook environment.

### Step 4: Follow the instructions in the notebook
Follow the instructions in the notebook to complete the lab.

This notebook will walk you through the basics of connecting to the Amazon Bedrock service from Python.

## Credits and Acknowledgments

This lab was inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).
