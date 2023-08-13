# kubeword
KubeWord: A Kubernetes Adventure with WordPress &amp; MySQL! Launch, scale, and troubleshoot in style. Join the coding where containers mix, contributors groove, and tech gets a funny spin!

## Table of Contents:
- [Project Name](#kubeword)
- [Description](#kubeword)
- [Table of Contents](#table-of-contents)
- [Introduction and Features](#introduction-and-features)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [API Documentation](#api-documentation)
- [Contributing Guidelines](#contributing-guidelines)
- [Code Examples](#code-examples)
- [Troubleshooting and FAQ](#troubleshooting-and-faq)
- [License](#license)
- [Contact Information](#contact-information)
- [Acknowledgments](#acknowledgments)

## Introduction and Features

Welcome to kubeword! This is a project ment to help you get started with Wordpress on Kubernetes in a sec. Whether you're a Blogger, Writer or just want to try it for fun, Kubeword aims to help you create a Blog in seconds.

### Key Features

- **IaC deployment:** All you do is in the Cloud :cloud:
- **Allways up to date:** New revisions of Wordpress are constantly updated so you can be safe on the net.
- **Monitoring:** Grafana and Prometheus are great tools to give you meaningfull insights about the health of your Blog.

## Installation

Follow these steps to install and set up kubeword:

1. **Prerequisites:** Make sure you have git, gcloud, kubectl, terraform and helm installed on your system.

2. **Clone the Repository:** Open your terminal and run the following command to clone the repository:
```
git clone https://github.com/danielrindunica/kubeword.git
```   

Navigate to the Directory: Move into the project directory using:

```
cd kubeword/
```

Configuration: If needed, update the fallowing configuration files:
- **Infrastructure:** infrastructure/terraform/terraform.tfvars
- **Application:** application/helm/wordpress/values.yaml

Run the Project: Start the project by running:

```
cd infrastructure/terraform/
terraform init
terraform apply -var-file=terraform.tfvars
```

Get the Kubernetes configuration:
```
gcloud container clusters get-credentials kubeword --region region --project project
```


Wait till the Kubernetes cluster is up and continue with the application:
```
cd application/helm/wordpress/
helm install wordpress .
```

If you want you can continue with the instalation of the monitoring:
```
cd application/helm/prometheus/
helm install prometheus .
cd application/helm/grafana/
helm install grafana .
```

Congratulations! You have successfully installed kubeword. You can now get to explore the application and get your credentials by following the Helm prompt.
