<div style="display:flex;">
    <img src="etc/images/trek10_logo.png" alt="Trek10 Logo" width="20%" style="margin-right:60%;"/>
    <img src="etc/images/aws_logo.png" alt="AWS Logo" width="20%"/>
</div>

# Trek10's Generative AI on AWS Curriculum

Welcome to our internal Generative AI on AWS curriculum. This repository contains a series of labs focusing on the AWS Machine Learning stack, categorized into three primary sections: Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS).

Currently the curriculum includes the following labs:
### IaaS
- [Lab 01: LLMs on EC2 via the Transformers Library](IaaS/lab01-bedrock-introduction/README.md) (Approx. 30min)

<!-- Planned Labs:
- Lab 02: Quantized Models on EC2
- Lab 03: Pretraining LLMs on EC2 -->
### PaaS
- [Lab 01: AWS SageMaker Finetuning](PaaS/lab01-sagemaker-finetuning-foundational-model)

<!-- Planned Labs:
- Lab 02: AWS SageMaker Instruction Based Finetuning -->
### SaaS
- [Lab 01: Bedrock Introduction](SaaS/lab01-bedrock-introduction)
- [Lab 02: Bedrock Chatbots](SaaS/lab02-bedrock-chatbots)


<!-- Planned Labs:
- Lab 02: Bedrock Generation
- Lab 03: Bedrock Question Answering
- Lab 04: Bedrock Chatbot
- Lab 05: Bedrock Summarization
- Lab 06: Bedrock Text to Image
- Lab 07: Bedrock Translation
- Lab 08: Bedrock RAG
- Lab 09: Bedrock Finetuning -->


## Table of Contents

- [Background](#background)
- [Repository Structure](#repository-structure)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Contributing](#contributing)
- [Additional Resources](#additional-resources)
- [License](#license)

## Background

<!-- https://aws.amazon.com/types-of-cloud-computing/ -->

The AWS Machine Learning stack is organized into three distinct layers, each serving a specific purpose and audience:

1. **Infrastructure as a Service (IaaS):** IaaS is the least abstracted (most matenience required) layer of the AWS ML stack. It is the bottome layer of the ML Stack and sometimes referred to as ML Frameworks & Infrastructure. This layer provides the core compute, storage, and network resources that serve as building blocks for the other two layers. Services in this layer include Amazon Elastic Compute Cloud (EC2), Amazon Elastic Block Store (EBS), and Amazon Virtual Private Cloud (VPC). For more information please refer to the [AWS Official Documentation](https://aws.amazon.com/what-is/iaas/)

2. **Platform as a Service (PaaS):** PaaS is the middle layer of the AWS ML stack and sometimes referred to as ML Services. This layer provides a higher level of abstraction than IaaS, allowing users to focus on the application layer without having to worry about the underlying infrastructure. This helps you be more efficient as you don’t need to worry about resource procurement, capacity planning, software maintenance, patching, or any of the other undifferentiated heavy lifting involved in running your application. 

    Services and tools in this layer are heavily centered around the platform offered through Amazon SageMaker. SageMaker provides a wide range of tools and services that enable data scientists and engineers to build, train, deploy, and maintain ML models. Tools include Amazon SageMaker Studio, Amazon SageMaker Pipelines, Amazon SageMaker Feature Store, and Amazon SageMaker Debugger. For more information please refer to the [AWS SageMaker Documentation](https://aws.amazon.com/sagemaker/).

3. **Software as a Service (SaaS):** SaaS is the most abstracted (least maintenance required) layer of the AWS ML stack and sometimes called AI Services. This layer provides fully managed services that are ready to use without any setup or configuration required. Some of the services in this layer include Amazon Rekognition, Amazon Textract, Amazon Comprehend, Amazon Kendra, Amazon Lex, Amazon Transcribe, Amazon Translate, Amazon Polly, Amazon Forecast, and Amazon Personalize. For more information please refer to the [AWS AI Services Documentation](https://aws.amazon.com/machine-learning/ai-services/).

Amazon Bedrock is a new service that is currently in preview. It is a fully managed service that allows you to build, train, and deploy LLM using a simple, intuitive, GUIs and/or APIs. It is AWS's managed service for generative AI. For more information please refer to the [AWS Bedrock Documentation](https://aws.amazon.com/bedrock/). The SaaS portion of this curriculum will focus on Bedrock.

Our curriculum is structured to mirror these three layers, providing labs that delve into the details and functionalities of each.

![AWS ML Stack Diagram](/etc/images/aws_ml_stack.png)

## Repository Structure

The repository is organized based on the AWS ML Stack layers. Each lab is prefixed for easy identification:

- **Infrastructure as a Service (IaaS):**
    - `lab01-...`
    - `lab02-...`
    - ...
- **Platform as a Service (PaaS):**
    - `lab01-...`
    - `lab02-...`
    - ...
- **Software as a Service (SaaS):**
    - `lab01-...`
    - `lab02-...`
    - ...

Each lab comes with its dedicated README containing the lab's instructions and other relevant details.

## Getting Started

[Provide a brief introduction or overview of how one should approach these labs or any initial steps to be followed.]

## Prerequisites

Details coming soon.

## Contributing

[If you wish for others to contribute, provide guidelines here.]

## Additional Resources

- **AWS Official Documentation:** [Link here]
- **Trek10 Resources:** [Link here]
<!-- 
## License

[Your License Information] -->

