# SaaS Lab02 - Bedrock Chatbots

This lab provides a hands-on introduction for implementing chatbots on AWS Bedrock. It is the second lab in the SaaS portion of the curriculum. It is recommended that you complete [Lab 01 - Bedrock Introduction](../lab01-bedrock-introduction/README.md) before starting this lab.

This lab was inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).

This lab relies on the use of a Jupyter notebook. If you are unfamiliar with Jupyter notebooks, please refer to the [Jupyter Documentation](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html) for more information. The instructions found in this readme assist in setting up the environment for the lab, but the lab itself is contained in the [bedrock_introduction.ipynb](bedrock_introduction.ipynb) Jupyter notebook found in this repository.

## Table of Contents

1. [Lab Objectives](#lab-objectives)
2. [Prerequisites](#prerequisites)
3. [Setting Up Your Environment](#setting-up-your-environment)
4. [Lab Instructions](#lab-instructions)
5. [Credits and Acknowledgments](#credits-and-acknowledgments)

## Lab Objectives

In this lab, you will learn how to:

- Implement chatbots using the Amazon Bedrock service and get hands on with the following use cases:
    - Chatbot (Basic) - Zero Shot chatbot with a FM model
    - Chatbot using prompt - template(Langchain) - Chatbot with some context provided in the prompt template
    - Chatbot with persona - Chatbot with defined roles. i.e. Career Coach and Human interactions
    - Contextual-aware chatbot - Passing in context through an external file by generating embeddings.

- Leverage Langchain to:
    - Implement conversational memory through Conversational Chains
- Use PromptTemplate to:
    - Create standardized prompts for interacting with the FMs
    - Implement conversational memory through Conversational Chains
    - Implement persona-based chatbots
- Use of embeddings and Retrival Augmented Generation (RAG) to create context aware chatbots

- Hands on with tools such as
    - Langchain
    - PromptTemplate
    - FAISS
    - Chroma
    - Weaviate

## Prerequisites
- An active AWS account. (With access to the AWS Bedrock service)
- Basic knowledge of Python programming.

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

> ⚠️ Note: With Amazon SageMaker, your notebook execution role will typically be separate from the user or role that you log in to the AWS Console with. If you'd like to explore the AWS Console for Amazon Bedrock, you'll need to grant permissions to your Console user/role too.

For more information on the fine-grained action and resource permissions in Bedrock, check out the Bedrock Developer Guide.


<!-- N.B. This lab utilizes a CloudFormation template to deploy the required infrastructure for the lab. If you can deploy a CloudFormation template, your environment is ready to go. Because all of the Python code is server-side, no additional setup is required for Python. -->

## Lab Instructions

### Step 1: Create a new notebook instance
Using one of the notebook environments listed in the [Choose a notebook environment](#choose-a-notebook-environment) section, create a new notebook instance.

### Step 2: Clone this repository

If you completed [Lab 01 - Bedrock Introduction](../lab01-bedrock-introduction/README.md), you can skip this step.

> ℹ️ Note: In SageMaker Studio, you can open a "System Terminal" to run these commands by clicking File > New > Terminal

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

You're now ready to explore the lab notebooks!

### Step 3: Open the notebook
Open the `SaaS/lab02-bedrock-chatbots/chatbot-titan.ipynb` notebook in your notebook environment.

### Step 4: Follow the instructions in the notebook
Follow the instructions in the notebook to complete the lab.

This notebook will walk you through the basics of implementing chatbots using the Amazon Bedrock service.

## Credits and Acknowledgments

This lab was inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).
