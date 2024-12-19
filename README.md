# MooDy: AI-Driven Mental Health App

## Introduction

MooDy is a mobile app developed as part of the IEEE EMBS Challenge during the IEEE Tunisian Student and Young Professional TSYP Congress 12. The app aims to tackle the critical challenge of improving mental health care through the use of AI. By offering early detection, personalized interventions, and continuous support, MooDy strives to enhance mental health outcomes and bridge the gap left by the absence of effective AI-driven solutions in the field.

## Description

MooDy leverages AI technologies to offer real-time assessments and personalized interventions for individuals struggling with mental health conditions. The app uses voice recordings, photos, and surveys to detect early symptoms of mental health issues and provide tailored recommendations. Users are encouraged to complete daily tasks, interact with the app's chatbot, and track their mental health status through weekly surveys. This continuous monitoring ensures timely interventions and supports overall well-being.

## Table of Contents
- [Installation](#installation)
- [Prerequisites](#prerequisites)
- [Programming Language and Libraries](#programming-language-and-libraries)
- [Features](#features)
- [Data Privacy and Security](#data-privacy-and-security)
- [User Interaction Workflow](#user-interaction-workflow)
- [Feedback and Alerts](#feedback-and-alerts)

## Installation

### Prerequisites:
Ensure that you have the following software installed:

- **Android Studio** for app development.
- **Node.js** for backend services.
- **MongoDB** for data storage.
- **IPFS** for file storage.

The app was developed using Flutter and Dart, and is compatible with both Android and iOS devices. Ensure your development environment is set up to support these platforms.

### Required Libraries:
Install the necessary libraries using the following command:

This command will install all the dependencies required for running the MooDy app.

Additional Requirements:
- Python 3.x for backend operations (if applicable).
- Flask for API integration, if required for the server-side logic.

## Programming Language and Libraries
- Flutter & Dart: The primary language and framework used to build the mobile application.
- TensorFlow: For AI model deployment in mental health prediction tasks.
- IPFS: For decentralized storage of user-generated content.
- Flask: Used for API communication and integration with AI models.
- Node.js & MongoDB: For backend management and database storage.

## Features
- **Early Detection**: Utilizes AI to analyze user inputs such as voice recordings, photos, and surveys to detect early signs of mental health conditions like depression and anxiety.
- **Personalized Interventions**: The app provides individualized recommendations and support based on AI analysis of the user's mood, diet, and daily activities.
- **Continuous Support**: Offers a chatbot feature for users to talk daily for emotional support. It also tracks users' tasks and provides feedback based on their progress.
- **HAD Surveys**: Users complete weekly surveys to assess anxiety levels and receive tailored feedback and recommendations.
- **Emotion and Health Monitoring**: Includes features to analyze daily photos (e.g., a photo of lunch to assess its healthiness) and voice recordings for emotional analysis.

## Data Privacy and Security
MooDy is committed to ensuring user data privacy and security. All personal and health-related data is stored in a secure, decentralized manner using IPFS. Sensitive data is encrypted, and the app follows strict data privacy policies to ensure users' information remains protected. Additionally, blockchain technology is employed to ensure transparency and privacy in data storage.

## User Interaction Workflow
- **Voice Recording**: Users record a short message to classify their emotional state. The AI model analyzes the voice for signs of depression or anxiety.
- **Photo Sharing**: Users are prompted to take a photo of their lunch to classify whether it is healthy or not, helping track their nutrition habits.
- **Smile Detection**: A photo of their face is taken to assess emotions like happiness or sadness.
- **HAD Survey**: Users fill out a weekly survey to assess their anxiety levels.
- **Daily Chat**: Users interact with an AI chatbot for emotional support, engaging in a 15-minute conversation each day.

## Feedback and Alerts
MooDy continuously monitors user interactions and sends real-time feedback based on their input. If the AI detects signs of mental health concerns, the app will alert the user with personalized recommendations. In cases of heightened distress or urgent issues, the app may send notifications to professional caregivers or loved ones for additional support.
