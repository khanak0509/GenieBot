# GenieBot 🤖

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-3.8.1-02569B?style=for-the-badge&logo=flutter)](https://flutter.dev)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![LangChain](https://img.shields.io/badge/LangChain-121212?style=for-the-badge)](https://langchain.com)
[![LangGraph](https://img.shields.io/badge/LangGraph-FF6B6B?style=for-the-badge)](https://langchain-ai.github.io/langgraph/)

**A powerful multifunctional AI assistant with cross-platform mobile app powered by LangGraph**

[Features](#-key-features) • [Tech Stack](#-tech-stack) • [Architecture](#-architecture) • [Installation](#-installation) • [Usage](#-usage) • [API](#-api-documentation)

</div>

---

## 📖 Overview

GenieBot is a comprehensive AI-powered automation and productivity platform that combines a **Flutter mobile application** with a **FastAPI backend** orchestrated by **LangGraph** and powered by **LangChain** and **Google Generative AI**. It seamlessly integrates with various services including GitHub, Google Workspace, communication platforms, and information services to provide intelligent automation capabilities through advanced agentic workflows.

## 🌟 Key Features

### 1. GitHub Integration 🔧
- **Repository Management**: Fetch issues, pull requests, and repository files
- **File Operations**: Create, update, and delete files and branches
- **Advanced Search**: Code and issue search capabilities
- **Automation**: Automated review request creation

### 2. Google Workspace Integration 📊
- **Google Calendar**: View upcoming events, create & manage events
- **Google Forms**: AI-powered form generation from topics
- **Email Automation**: Automated email distribution of forms
- **Data Analysis**: Response analysis via Google Sheets integration

### 3. Communication Tools 📨
- **Email Integration**: Send emails via Gmail SMTP with professional composition
- **SMS Capabilities**: Message dispatch through Twilio
- **Automated Notifications**: Multi-channel notification support

### 4. AI & Knowledge Tools 🤖
- **Resume Analysis**: Parse PDF resumes and generate LinkedIn content
- **Information Retrieval**: Wikipedia queries and YouTube search
- **Real-time Data**: Weather updates via OpenWeatherMap API
- **Smart Search**: Tavily-powered web search integration

### 5. Cross-Platform Mobile App 📱
- **Flutter-Based**: Native performance on iOS, Android, Windows, Linux, macOS, and Web
- **Firebase Authentication**: Secure user authentication
- **Real-time Sync**: Cloud Firestore for real-time data synchronization
- **Modern UI**: Intuitive and responsive user interface

## 🛠 Tech Stack

### Backend
| Technology | Purpose | Version |
|------------|---------|---------|
| **Python** | Core Backend Language | 3.8+ |
| **FastAPI** | Web Framework | Latest |
| **LangChain** | LLM Framework | Latest |
| **LangGraph** | Agent Orchestration | Latest |
| **Google Generative AI** | LLM Provider (Gemini 2.0) | Latest |
| **Firebase Admin SDK** | Backend Firebase Integration | Latest |
| **Uvicorn** | ASGI Server | Latest |

### Frontend
| Technology | Purpose | Version |
|------------|---------|---------|
| **Flutter** | Cross-Platform Framework | 3.8.1 |
| **Dart** | Programming Language | 3.8.1+ |
| **Firebase Auth** | Authentication | 6.0.1 |
| **Cloud Firestore** | Database | 6.0.0 |
| **Firebase Core** | Firebase SDK | 4.0.0 |

### AI & ML Libraries
- **LangChain Community**: GitHub Toolkit, Wikipedia, YouTube Search
- **LangChain Google Community**: Calendar Toolkit
- **LangGraph**: Agent workflows and checkpointing
- **PyPDF**: PDF document processing

### External APIs & Services
- **GitHub API**: Repository and code management
- **Google Workspace APIs**: Calendar, Forms, Sheets
- **Twilio**: SMS messaging
- **OpenWeatherMap**: Weather data
- **Tavily API**: Web search
- **Gmail SMTP**: Email sending

### Database & Storage
- **SQLite**: Local checkpointing and conversation history
- **Cloud Firestore**: User data and chat history

### Development Tools
- **Pydantic**: Data validation
- **python-dotenv**: Environment variable management
- **HTTPX**: Async HTTP client
- **CORS Middleware**: Cross-origin resource sharing

## 🏗 Architecture

GenieBot uses a modern **agentic AI architecture** powered by **LangGraph**, which orchestrates complex multi-step workflows through a ReAct (Reasoning + Acting) agent pattern.

```
┌─────────────────────────────────────────────────────────────┐
│                     Flutter Mobile App                      │
│  (iOS, Android, Web, Windows, Linux, macOS)                │
│                                                             │
│  ┌──────────────┬──────────────┬──────────────────────┐   │
│  │  Auth UI     │  Chat UI     │  Profile & Settings   │   │
│  └──────────────┴──────────────┴──────────────────────┘   │
└─────────────────────┬───────────────────────────────────────┘
                      │ HTTP/REST API
                      ▼
┌─────────────────────────────────────────────────────────────┐
│                   FastAPI Backend Server                     │
│                                                             │
│  ┌─────────────────────────────────────────────────────┐   │
│  │           LangGraph Agent Orchestrator               │   │
│  │  • ReAct Agent Pattern (Reasoning + Acting)         │   │
│  │  • State Management & Checkpointing                 │   │
│  │  • Multi-step Workflow Execution                    │   │
│  │  • Tool Calling & Response Handling                 │   │
│  │  • Powered by Google Gemini 2.0 Flash              │   │
│  └─────────────────────────────────────────────────────┘   │
│                                                             │
│  ┌──────────────┬──────────────┬──────────────────────┐   │
│  │ GitHub Tools │ Google Tools │ Communication Tools   │   │
│  │  - Issues    │  - Calendar  │  - Email (SMTP)       │   │
│  │  - PRs       │  - Forms     │  - SMS (Twilio)       │   │
│  │  - Files     │  - Sheets    │                       │   │
│  └──────────────┴──────────────┴──────────────────────┘   │
│                                                             │
│  ┌──────────────┬──────────────┬──────────────────────┐   │
│  │   AI Tools   │ Search Tools │  Utility Tools        │   │
│  │  - Resume    │  - Wikipedia │  - Weather            │   │
│  │  - LinkedIn  │  - YouTube   │  - Date/Time          │   │
│  │              │  - Tavily    │                       │   │
│  └──────────────┴──────────────┴──────────────────────┘   │
└─────────────────────┬───────────────────────────────────────┘
                      │
          ┌───────────┴────────────┐
          ▼                        ▼
  ┌───────────────┐        ┌──────────────┐
  │    SQLite     │        │   Firebase   │
  │  (LangGraph   │        │  Firestore   │
  │  Checkpoint)  │        │ (User Data)  │
  └───────────────┘        └──────────────┘
```

### Key Architecture Features:

- **LangGraph Orchestration**: All agent interactions are managed through LangGraph's stateful workflow system, enabling complex multi-turn conversations with persistent state
- **ReAct Pattern**: The agent uses Reasoning and Acting cycles to break down complex tasks into manageable steps
- **Checkpointing**: SQLite-based checkpointing ensures conversation history and state persistence across sessions
- **Tool Integration**: Seamless integration of 30+ tools through LangChain's toolkit system
- **Async Processing**: FastAPI's async capabilities combined with LangGraph's streaming support for real-time responses

## 🛠 Prerequisites

Before running GenieBot, ensure you have:

### For Backend:
- **Python 3.8+** installed
- **Git** for version control
- **Google Cloud Platform** account with API access
- **GitHub** account with necessary permissions
- **Twilio** account (for SMS features)
- **OpenWeatherMap** API key
- **Tavily** API key
- **Firebase** project with Admin SDK credentials

### For Frontend:
- **Flutter SDK 3.8.1+** installed
- **Dart SDK 3.8.1+**
- **Android Studio** or **Xcode** (for mobile development)
- **Firebase** project configured for your app

## ⚡ Installation

### Backend Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/khanak0509/GenieBot.git
   cd GenieBot
   ```

2. **Set up a virtual environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate   # On Windows: venv\Scripts\activate
   ```

3. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configure API Keys:**
   
   Create a `.env` file in the project root:
   ```env
   # Google AI
   GOOGLE_API_KEY=your_google_api_key
   
   # GitHub
   GITHUB_APP_ID=your_github_app_id
   GITHUB_APP_PRIVATE_KEY=your_github_private_key
   GITHUB_REPOSITORY=your_repository
   
   # Twilio
   TWILIO_ACCOUNT_SID=your_twilio_sid
   TWILIO_AUTH_TOKEN=your_twilio_token
   TWILIO_PHONE_NUMBER=your_twilio_number
   
   # Email
   SENDER_EMAIL=your_email@gmail.com
   SENDER_PASSWORD=your_app_password
   
   # Weather
   OPENWEATHER_API_KEY=your_weather_api_key
   
   # Search
   TAVILY_API_KEY=your_tavily_api_key
   ```

5. **Set up Firebase Admin credentials:**
   - Download your Firebase Admin SDK JSON file from Firebase Console
   - Place it in the project root (e.g., `firebase-adminsdk.json`)
   - Update the credential path in the Firebase initialization section of `main.py`

6. **Set up Google Cloud credentials:**
   - Download your Google Cloud credentials JSON file
   - Configure according to Google API requirements

### Frontend Setup

1. **Navigate to the project directory:**
   ```bash
   cd GenieBot
   ```

2. **Install Flutter dependencies:**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase for Flutter:**
   ```bash
   flutterfire configure
   ```
   Follow the prompts to set up Firebase for your platforms.

4. **Run the app:**
   ```bash
   # For mobile development
   flutter run
   
   # For web
   flutter run -d chrome
   
   # For desktop
   flutter run -d windows  # or macos, linux
   ```

## 🚀 Usage

### Starting the Backend Server

```bash
python main.py
```

The FastAPI server will start on `http://localhost:8000`

### API Endpoints

#### Chat Endpoint
```http
POST /chat
Content-Type: application/json

{
  "user_id": "user123",
  "query": "What's the weather in New York?"
}
```

### Using the Mobile App

1. Launch the app on your device
2. Sign up or log in with your credentials
3. Start chatting with GenieBot
4. Use natural language to:
   - Check weather
   - Search information
   - Manage GitHub repositories
   - Create Google Forms
   - Send emails and SMS
   - And much more!

### Example Queries

```
"What's the weather in London?"
"Search for Python tutorials on YouTube"
"Create a new issue in my repository"
"Generate a customer feedback form"
"Send an email to john@example.com about the meeting"
"Parse my resume and create LinkedIn content"
"What are the open pull requests in my repo?"
```

## 📂 Project Structure

```
GenieBot/
├── main.py                          # FastAPI backend entry point
├── pubspec.yaml                     # Flutter dependencies
├── lib/                             # Flutter source code
│   ├── main.dart                    # App entry point
│   ├── auth.dart                    # Authentication logic
│   ├── chatbot.dart                 # Chat interface
│   ├── profile.dart                 # User profile
│   └── ...                          # Other UI components
├── android/                         # Android platform code
├── ios/                             # iOS platform code
├── web/                             # Web platform code
├── windows/                         # Windows platform code
├── linux/                           # Linux platform code
├── macos/                           # macOS platform code
├── .env                             # Environment variables (not in repo)
├── chatbot.db                       # SQLite database
└── README.md                        # This file
```

## 📱 API Documentation

Once the backend is running, visit:
- **Swagger UI**: [http://localhost:8000/docs](http://localhost:8000/docs)
- **ReDoc**: [http://localhost:8000/redoc](http://localhost:8000/redoc)

## 🧪 Testing

### Backend Tests
```bash
pytest tests/
```

### Flutter Tests
```bash
flutter test
```

## 🔒 Security

- Never commit API keys or sensitive credentials
- Use environment variables for all secrets
- Keep dependencies updated
- Review security advisories regularly

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with ❤️ by Khanak Khandelwal**

⭐ Star this repository if you find it helpful!

</div>
