# Ansible

Tiny Alpine-based multistage-build dockerized version of [Ansible](https://www.ansible.com/) in many different flavours.
The images are built weekly against multiple stable versions and pushed to Dockerhub.

**Available Architectures:**  `amd64`, `arm64`

## :whale: Available Docker image versions

This repository provides many different Ansible flavours (each flavour also divided into different Ansible versions).

## :repeat: Rolling releases

The following Docker image tags are rolling releases and are built and updated every night.

[![nightly](https://github.com/cytopia/docker-ansible/actions/workflows/action_schedule.yml/badge.svg)](https://github.com/cytopia/docker-ansible/actions/workflows/action_schedule.yml)

### Ansible base

The following Ansible Docker images are as small as possible and only contain Ansible itself.

| Docker Tag               | Git Ref      | Ansible      | Available Architectures                      |
|--------------------------|--------------|--------------|----------------------------------------------|
| **`latest`**             | master       | latest       | `amd64`, `arm64`                             |
| `2.15`                   | master       | **`2.15.x`** | `amd64`, `arm64`                             |
| `2.14`                   | master       | **`2.14.x`** | `amd64`, `arm64`                             |
| `2.13`                   | master       | **`2.13.x`** | `amd64`, `arm64`                             |

## Inspired by

Inspired by [cytopia/ansible](https://github.com/cytopia/docker-ansible)
