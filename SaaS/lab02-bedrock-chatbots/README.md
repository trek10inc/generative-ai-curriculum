# SaaS Lab02 - Bedrock Chatbots

This lab provides a hands-on introduction for implementing chatbots on AWS Bedrock. It is the second lab in the SaaS portion of the curriculum. It is recommended that you complete [Lab 01 - Bedrock Introduction](../lab01-bedrock-introduction/README.md) before starting this lab.

This lab was heavily inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).

This lab relies heavily on the use of a Jupyter notebook. If you are unfamiliar with Jupyter notebooks, please refer to the [Jupyter Documentation](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html) for more information. The instructions found in this readme assist in setting up the environment for the lab, but the lab itself is contained in the [bedrock_introduction.ipynb](bedrock_introduction.ipynb) Jupyter notebook found in this repository.

## Table of Contents

1. [Lab Objectives](#lab-objectives)
2. [Prerequisites](#prerequisites)
3. [Setting Up Your Environment](#setting-up-your-environment)
4. [Lab Instructions](#lab-instructions)
5. [Credits and Acknowledgments](#credits-and-acknowledgments)

<!-- 5. [Troubleshooting](#troubleshooting)
6. [Contact](#contact)) -->

## Lab Objectives

In this lab, you will learn how to:

- Implement chatbots using the Amazon Bedrock service.
- Implement contextual chatbots using the Amazon Bedrock service.
- Leverage Langchain to:
    - Implement conversational memory through Conversational Chains
- Use PromptTemplate to:
    - Create standardized prompts for interacting with the FMs
    - Implement conversational memory through Conversational Chains
    - Implement persona-based chatbots
- Cretea Chatbots with specific personas

- Use RAG to create context aware chatbot

- Hands on with tools such as
    - Langchain
    - PromptTemplate
    - FAISS
    - Chroma
    - Weaviate

- Hands on with the following use cases:
    - Chatbot (Basic) - Zero Shot chatbot with a FM model
    - Chatbot using prompt - template(Langchain) - Chatbot with some context provided in the prompt template
    - Chatbot with persona - Chatbot with defined roles. i.e. Career Coach and Human interactions
    - Contextual-aware chatbot - Passing in context through an external file by generating embeddings.

## Prerequisites
- An active AWS account. (With access to the AWS Bedrock service)
<!-- - AWS CLI installed and given access to said account. -->
- Basic knowledge of Python programming.
<!-- - Familiarity with command line interface (CLI). -->
<!-- - Basic understanding of AWS services (specifically [EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) and [CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)) and cloud computing basics. -->

<!-- For more information on configuring your CLI please refer to the [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [Configuring the CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) for instructions on how to do so. -->


## Setting Up Your Environment
- You must have an active AWS account. (With access to the AWS Bedrock service)
<!-- - You must have the AWS CLI installed and given access to said account. -->

### Choose a notebook environment
This lab utalizes a Jupyter Notebook to run the code. There are multiple options for running a Jupyter Notebook:
- For a fully-managed environment with rich AI/ML features, we'd recommend using [SageMaker Studio](https://docs.aws.amazon.com/sagemaker/latest/dg/studio.html). To get started quickly, you can refer to the instructions for domain quick setup.
- For a fully-managed but more basic experience, you could instead create a [SageMaker Notebook Instances](https://docs.aws.amazon.com/sagemaker/latest/dg/nbi.html).
    - we provide CF?
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

⚠️ Note: With Amazon SageMaker, your notebook execution role will typically be separate from the user or role that you log in to the AWS Console with. If you'd like to explore the AWS Console for Amazon Bedrock, you'll need to grant permissions to your Console user/role too.

For more information on the fine-grained action and resource permissions in Bedrock, check out the Bedrock Developer Guide.


<!-- N.B. This lab utilizes a CloudFormation template to deploy the required infrastructure for the lab. If you can deploy a CloudFormation template, your environment is ready to go. Because all of the Python code is server-side, no additional setup is required for Python. -->

## Lab Instructions

### Step 1: Create a new notebook instance
Using one of the notebook environments listed in the [Choose a notebook environment](#choose-a-notebook-environment) section, create a new notebook instance.

### Step 2: Clone this repository

If you completed [Lab 01 - Bedrock Introduction](../lab01-bedrock-introduction/README.md), you can skip this step.

ℹ️ Note: In SageMaker Studio, you can open a "System Terminal" to run these commands by clicking File > New > Terminal

Clone this repository to your notebook instance. This can be done by running the following command in a terminal:
```bash
git clone git@gitlab.com:trek10inc/internal/machine-learning/generative-ai-curriculum.git
cd generative-ai-curriculum
```

Because the service is in preview, the Amazon Bedrock SDK is not yet included in standard releases of the AWS SDK for Python - boto3. Run the following script to download and extract custom SDK wheels for testing Bedrock:

```
./download-dependencies.sh
```

This script will create a dependencies folder and download the relevant SDKs, but will not pip install them just yet.

You're now ready to explore the lab notebooks! Start with [bedrock_introduction.ipynb](bedrock_introduction.ipynb) for details on how to install the Bedrock SDKs, create a client, and start calling the APIs from Python.

### Step 3: Open the notebook
Open the `SaaS/lab02-bedrock-chatbots/chatbot-titan.ipynb` notebook in your notebook environment.

### Step 4: Follow the instructions in the notebook
Follow the instructions in the notebook to complete the lab.

This notebook will walk you through the basics of implementing chatbots using the Amazon Bedrock service.
<!-- ### Configuration Background -->

<!-- This lab provides an introduction to running large language models (LLMs) on AWS EC2 instances via the transformers library. To run a LLM efficiently on an EC2 instance, some configuration is required:
- The EC2 instance must be configured with the proper drivers to run AI workloads on the GPU.
- The EC2 instance must be configured with the proper Python packages to run the transformers library.
- The EC2 instance must be configured with proper permissions to access services such as the S3 bucket containing the Nvidia drivers.
- The EC2 instance must be configured with the proper computational and storage resources to run the model.
- The EC2 instance must be configured with sufficient and secure means of access, such as an SSH key pair.

For brevity's sake, this lab provides a CloudFormation template that will automatically configure an EC2 instance with all the above requirements. The template will leverage User Data (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) to address some of the required configurations, such as Nvidia drivers and a Python environment. The template will also automatically create an S3 bucket to store the model and any outputs generated by the model. Finally, the template will create a Key Pair associated with the instance that can be used to SSH into the instance.

Once inside the instance, you will be able to run a Python script to download and interact with an LLM.


Let's walk through how the configuration needs are addressed in more detail... -->


<!-- ## Troubleshooting

A list of common issues and their respective solutions that users may encounter while setting up their EC2 environment and running the models.

## Contact

Information for reaching out for further queries or support.-->

## Credits and Acknowledgments

This lab was heavily inspired by [AWS's Bedrock Workshop](https://github.com/aws-samples/amazon-bedrock-workshop).
