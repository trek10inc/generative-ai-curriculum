# PaaS Lab01 - SageMaker Finetuning Foundational Models

This lab provides a hands-on introduction for finetuning foundational models with AWS SageMaker.

This lab was heavily inspired by [AWS's Sagemaker Examples Repository](https://github.com/aws/amazon-sagemaker-examples/blob/main/introduction_to_amazon_algorithms/jumpstart-foundation-models/domain-adaption-finetuning-gpt-j-6b.ipynb).

This lab relies heavily on the use of a Jupyter notebook. If you are unfamiliar with Jupyter notebooks, please refer to the [Jupyter Documentation](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html) for more information. The instructions found in this readme assist in setting up the environment for the lab, but the lab itself is contained in the [domain-adaption-finetuning-gpt-j-6b.ipynb](domain-adaption-finetuning-gpt-j-6b.ipynb) Jupyter notebook found in this repository.
## Table of Contents

1. [Lab Objectives](#lab-objectives)
2. [Prerequisites](#prerequisites)
3. [Setting Up Your Environment](#setting-up-your-environment)
4. [Lab Instructions](#lab-instructions)
5. [Credits and Acknowledgments](#credits-and-acknowledgments)

## Lab Objectives

In this lab, you will learn how to:
- Finetune a foundational model using AWS SageMaker.
- Deploy a finetuned model to an endpoint.
- Make inferences using the deployed model.

## Prerequisites
- An active AWS account. (With access to the AWS Bedrock service)
- Basic knowledge of Python programming.

## Setting Up Your Environment
- You must have an active AWS account.

### Choose a notebook environment
This lab utalizes a Jupyter Notebook to run the code. There are multiple options for running a Jupyter Notebook:
- For a fully-managed environment with rich AI/ML features, we'd recommend using [SageMaker Studio](https://docs.aws.amazon.com/sagemaker/latest/dg/studio.html). To get started quickly, you can refer to the instructions for domain quick setup.
- For a fully-managed but more basic experience, you could instead create a [SageMaker Notebook Instances](https://docs.aws.amazon.com/sagemaker/latest/dg/nbi.html).
    - we provide CF?
- If you prefer to use your existing (local or other) notebook environment, make sure it has credentials for calling AWS.

## Lab Instructions
### Step 1: Create a new notebook instance
Using one of the notebook environments listed in the [Choose a notebook environment](#choose-a-notebook-environment) section, create a new notebook instance.

### Step 2: Clone this repository
Clone this repository to your notebook instance. This can be done by running the following command in a terminal:
```bash
git clone git@gitlab.com:trek10inc/internal/machine-learning/generative-ai-curriculum.git
cd generative-ai-curriculum
```

You're now ready to explore the lab notebooks! Start with [domain-adaption-finetuning-gpt-j-6b.ipynb](domain-adaption-finetuning-gpt-j-6b.ipynb) for details on how to finetune foundational models using AWS Sagemaker.

### Step 3: Open the notebook
Open the `PaaS/lab01-sagemaker-finetuning-foundational-model/domain-adaption-finetuning-gpt-j-6b.ipynb` notebook in your notebook environment.

### Step 4: Follow the instructions in the notebook
Follow the instructions in the notebook to complete the lab.

This notebook will walk you through the basics of connecting to the Amazon Bedrock service from Python.

## Credits and Acknowledgments

This lab was heavily inspired by [AWS's Sagemaker Examples Repository](https://github.com/aws/amazon-sagemaker-examples/blob/main/introduction_to_amazon_algorithms/jumpstart-foundation-models/domain-adaption-finetuning-gpt-j-6b.ipynb).
