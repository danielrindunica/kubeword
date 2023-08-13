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

Configuration: If needed, update the following configuration files:
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

Congratulations! You have successfully installed kubeword. You can now get to explore the application and get your credentials.

## Usage

Follow these instructions to effectively use kubeword:

1. **Getting Started:** You can achive with this project a Wordpress Blog that is hosted in GKE - Google Kubernetes Engine. To take fully advantage of the project you can tweak it to your personal likings.

2. **Step-by-Step Guide:** Hot to enable SSL on my Blog.


## Configuration

kubeword offers flexibility through configuration options that allow you to tailor the behavior of the project to your needs. Here's how you can configure the project:

1. **Infrastructure:** Some aspects of kubeword can also be configured using infrastructure files. Refer to the `terraform` directory for the configuration files. These files include:

   - **Terraform:** terraform.tfvars

1. **Appication:** Open the `helm` directory in your project to find the configuration files. These files control various settings such as:

   - **Wordpress:** values.yaml
   - **Grafana:** values.yaml
   - **Prometheus:** values.yaml

## License

kubeword is distributed under the Apache License. See the [LICENSE](LICENSE) file for more details.

This means you are free to:

- **Use:** You can use, modify, and integrate kubeword into your projects.
- **Share:** You can share your modified versions of kubeword with others.
- **Distribute:** You can distribute the original or modified versions of kubeword in source or binary form.


Please review the [LICENSE](LICENSE) file for the complete terms and conditions of the [License Name] License.

## Contact Information

If you have questions, feedback, suggestions, or just want to say hello, feel free to reach out:

- Email: [rindunicadanielnicolae@outlook.com](mailto:rindunicadanielnicolae@outlook.com)
- LinkedIn: [Daniel Rindunica](https://www.linkedin.com/in/rindunicadaniel)
- GitHub: [danielrindunica](https://github.com/danielrindunica)

We value your input and would love to hear from you!

