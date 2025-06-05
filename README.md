# Course Hub

Welcome to the **Course Subscription Application**! This boilerplate application is designed to help you get started with building a simple course subscription application on the ServiceNow platform. It provides the foundational data model and basic configurations, allowing you to focus on implementing the required features and enhancing the application.

## Table of Contents

- [Introduction](#markdown-header-introduction)
- [Prerequisites](#markdown-header-prerequisites)
- [Getting Started](#markdown-header-getting-started)
- [Application Overview](#markdown-header-application-overview)
- [Navigating the Application](#markdown-header-navigating-the-application)
- [Next Steps](#markdown-header-next-steps)
- [Additional Resources](#markdown-header-additional-resources)
- [Support](#markdown-header-support)

## Introduction

The Course Subscription Application allows learners to view available courses and subscribe to them. This boilerplate provides the essential components to help you implement features such as fetching course lists, subscribing to courses, and displaying subscribed courses.

> The goal is to have workable simple version of application that involves ServiceNow in some way. We do not expect you to understand whole ServiceNow platform in couple of days. 

## Prerequisites

## Application Overview

### Data Model

The application consists of three main tables:

1. **Course** (`x_quo_coursehub_course`)
2. **Learner** (`x_quo_coursehub_learner`)
3. **Course Subscription** (`x_quo_coursehub_course_subscription`)

All the tables come with default fields: `sys_id`, `created`, `created_by`, `updated`, `updated_by`.




