# Delivery Guide for IaC with Terraform

 [[_TOC_]]

 **Knowledge Level**: 200

**Duration**: 1 or 2 days


## Overview

This workshop focuses primarily on how to use Terraform efficiently to provision Infrastructure components on Azure. 

## Pre-Requisites for Delivery Engineers

* Make sure to familiarize yourself well with Terraform. 
* Go through all the decks and complete the Labs. (Feel free to fork it if required)
* Setup Dev Environment for Terraform (VS Code, Windows Terminal, Cloud Shell, etc.)

## Outcome

### Skills

* Understand Infrastructure-as-Code Principles
* Learn Core concepts around Terraform
* Use Terraform to manager Azure Resources

> An extended 2-day version of this Workshop is also possible by integrating Terraform pipelines with tools such as GitHub Actions and including chalk-and-talk component focusing on customer’s problem domain

### Best Practices

* Writing Reusable and maintainable code with Terraform
* State Management on Azure

### Proof of Concept

* Try provisioning Terraform managed Azure Infrastrcuture from a CI / CD tooling of choice to further gain deeper knowledge.
* This would be required if intending to cover `DevOps with Terraform` with L300 demos.

##  Methodology

- [ ] Reinforce the concepts of Well Architected Framework and benefits of achieving Operational Excellence
- [ ] Cover all the Essential Terraform Modules mentioned in Agenda below
- [ ] Learn by Demos and Labs

## Hands On

### Labs

* Each module has a lab for the customer to become familiar with the tools, the labs are described at the end of each section or module. 
* Lab Instructions are located in Labs Directory.
    * Request participants to bring their own environment. (Access to a sandbox or Azure Dev Environment or via MSDN Subscription)
    * Otherwise, subscription passes would have to be requested.

### Demos
*  Pre completed demos are located in Demos Directory. 
*  It's highly receommended for delivery engineers to keep their own copy of demos that's fully tested and is compatible with Terraform and provider version being used


## Agenda

**Module 1: Bigger Picture on IaC**
* Intro to Azure Well Architected Framework
* Approaching Operational Excellence
* Provisioning vs Configuration Management
* Provisioning tools for Azure 

**Module 2: Core Workflow and Config Options**
* Azure Provider overview
* Day 1, Day 2, Day N workflows 
* Operations: plan, apply, destroy (also validate and fmt)
* Configuring Terraform Templates
* Local values, Variable definitions, Tfvars, Env Variables
* Returning Values with Output

**Module 3: Console, Functions and Dependencies**
* Expressions and Types
* Terraform Console for REPL and examining state
* Built-in Functions
* Terraform Import
* Implicit vs Explicit Dependencies

**Module 4: Terraform Modules**
* Encapsulation and Reusability with Modules
* Composition over Inheritance
* Modules Structure
* Local and Remote Modules

**Module 5: State Management**
* State Management using Azure Blob Storage
* Best Practices for maintaining states and reducing provisioning times
* Terraform Workspaces 

## Content

The presentations are in the folder [PPTs](https://dev.azure.com/CEandS/_git/Introduction%20to%20%20Infrastructure%20as%20Code%20using%20Terraform?path=/PPTs&version=GBmain)
