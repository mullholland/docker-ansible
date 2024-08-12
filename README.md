# Ansible

**Available Architectures:**  `amd64`, `arm64`

[![Build and Push Container](https://github.com/mullholland/docker-ansible/actions/workflows/build.yml/badge.svg)](https://github.com/mullholland/docker-ansible/actions/workflows/build.yml)
[![](https://img.shields.io/docker/pulls/mullholland/ansible.svg)](https://hub.docker.com/r/mullholland/ansible)
[![Docker](https://badgen.net/badge/icon/:latest?icon=docker&label=mullholland/ansible)](https://hub.docker.com/r/mullholland/ansible)

[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

Tiny Alpine-based multistage-build dockerized version of [Ansible](https://www.ansible.com/) in many different flavours.
The images are built weekly against multiple stable versions and pushed to Dockerhub.

## :whale: Available Docker image versions

This repository provides many different Ansible flavours (each flavour also divided into different Ansible versions).

The following table shows a quick overview of provided libraries and tools for each flavour. For more details see further down below.

| Flavour | Based on | Additional Python libs | Additional binaries |
|---------|---------------|------------------------|---------------------|
| base    | -        | `cffi`, `cryptography`, `Jinja2`, `junit-xml`, `lxml`, `paramiko`, `PyYAML` | - |
| tools   | base     | `dnspython`, `JMESPath` | `bash`, `git`, `gpg`, `jq`, `ssh`, `yq` |
| infra   | tools    | `docker`, `docker-compose`, `jsondiff`, `netaddr`, `pexpect`, `psycopg2`, `pyldap`, `pypsexec`, `pymongo`, `PyMySQL`, `pywinrm`, `smbprotocol` | `rsync`, `sshpass` |
| azure   | tools    | `azure-*`              | `az` |
| aws     | tools    | `botocore`, `boto`, `boto3` | `aws`, `aws-iam-authenticator`, `ssm-session-manager` |
| ionos   | tools    | `ionoscloud`, `ionoscloud-dbaas-postgres`, `ionoscloud-dbaas-mongo`, `ionoscloud-container-registry`, `ionoscloud-dataplatform`, `ionoscloud-cert-manager` |   |
| k8s     | tools    | `kubernetes` | `kubectl`, `helm` |

## :repeat: Rolling releases

The following Docker image tags are rolling releases and are built and updated every night.

### Ansible base

The following Ansible Docker only contain Ansible itself.

| Docker Tag               | Git Ref    | Ansible      | Available Architectures                      |
|--------------------------|------------|--------------|----------------------------------------------|
| **`latest`**             | main       | latest       | `amd64`, `arm64`                             |
| `2.17`                   | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16`                   | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15`                   | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible tools

The following Ansible Docker images contain everything from `Ansible base` and additionally: `bash`, `git`, `gpg`, `jq`, `ssh` and `dnspython`.

| Docker Tag               | Git Ref    | Ansible      | Available Architectures                      |
|--------------------------|------------|--------------|----------------------------------------------|
| **`latest-tools`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-tools`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-tools`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-tools`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible infra

The following Ansible Docker images contain everything from `Ansible tools` and additionally: `rsync` and `sshpass`.

| Docker Tag               | Git Ref    | Ansible      | Available Architectures                      |
|--------------------------|------------|--------------|----------------------------------------------|
| **`latest-infra`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-infra`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-infra`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-infra`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible azure

The following Ansible Docker images contain everything from `Ansible tools` and additionally: `azure`.

| Docker Tag               | Git Ref    | Ansible      | Available Architectures                      |
|--------------------------|------------|--------------|----------------------------------------------|
| **`latest-azure`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-azure`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-azure`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-azure`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible aws

The following Ansible Docker images contain everything from `Ansible tools` and additionally: `aws-cli`, `boto`, `boto3` and `botocore`.

| Docker Tag             | Git Ref    | Ansible      | Available Architectures                      |
|------------------------|------------|--------------|----------------------------------------------|
| **`latest-aws`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-aws`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-aws`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-aws`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible ionos

The following Ansible Docker images contain everything from `Ansible tools` and additionally: `ionoscloud`, `ionoscloud-dbaas-postgres`, `ionoscloud-dbaas-mongo`, `ionoscloud-container-registry`, `ionoscloud-dataplatform` and `ionoscloud-cert-manager`.

| Docker Tag               | Git Ref    | Ansible      | Available Architectures                      |
|--------------------------|------------|--------------|----------------------------------------------|
| **`latest-ionos`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-ionos`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-ionos`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-ionos`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

### Ansible k8s (Kubernetes)

The following Ansible Docker images contain everything from `Ansible tools` and additionally: `kubernetes (python)`, `kubectl` and `helm`.

| Docker Tag             | Git Ref    | Ansible      | Available Architectures                      |
|------------------------|------------|--------------|----------------------------------------------|
| **`latest-k8s`**       | main       | latest       | `amd64`, `arm64`                             |
| `2.17-k8s`             | main       | **`2.17.x`** | `amd64`, `arm64`                             |
| `2.16-k8s`             | main       | **`2.16.x`** | `amd64`, `arm64`                             |
| `2.15-k8s`             | main       | **`2.15.x`** | `amd64`, `arm64`                             |

## Inspired by

Inspired by [cytopia/ansible](https://github.com/cytopia/docker-ansible)
