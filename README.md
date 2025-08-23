# GenieBot

GenieBot is a powerful multifunctional AI assistant built using cutting-edge technologies including LangChain, LangGraph, and Google Generative AI. It serves as a comprehensive automation and productivity tool that seamlessly integrates with various services including GitHub, Google Workspace, communication platforms, and information services.

## 🌟 Key Features

### 1. GitHub Integration 🔧
- Repository Management:
  - Fetch issues, pull requests, and repository files
  - Create, update, and delete files and branches
  - Advanced code and issue search capabilities
  - Automated review request creation

### 2. Google Workspace Integration 📊
- **Google Calendar**
  - View upcoming events and schedules
  - Create and manage calendar events
- **Google Forms**
  - AI-powered form generation from topics
  - Automated email distribution of forms
  - Response analysis through Google Sheets integration

### 3. Communication Tools 📨
- **Email Integration**
  - Send emails via Gmail SMTP
  - Professional email composition
- **SMS Capabilities**
  - Message dispatch through Twilio integration
  - Automated notifications

### 4. AI & Knowledge Tools 🤖
- **Resume Analysis**
  - Parse PDF resumes
  - Generate professional LinkedIn content
- **Information Retrieval**
  - Wikipedia article queries
  - YouTube content search
  - Real-time weather updates via OpenWeatherMap API

### 5. Additional Features ⚡
- Real-time date and time tracking
- Tavily search integration
- Cross-platform compatibility

## Prerequisites

Before running this application, make sure you have the following installed:
- Python 3.8 or higher
- Git
- Google Cloud Platform account
- Twilio account (for SMS features)
- OpenWeatherMap API key
- GitHub account with necessary permissions

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/khanak0509/GenieBot.git
   cd GenieBot
   ```

2. Set up a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install required packages:
   ```bash
   pip install -r requirements.txt
   ```

4. Configure API Keys:
   Create a `.env` file in the root directory with the following:
   ```
   GITHUB_TOKEN=your_github_token
   GOOGLE_API_KEY=your_google_api_key
   OPENWEATHER_API_KEY=your_weather_api_key
   TWILIO_ACCOUNT_SID=your_twilio_sid
   TWILIO_AUTH_TOKEN=your_twilio_token
   ```

5. Set up Google Cloud credentials:
   - Download your Google Cloud credentials JSON file
   - Place it in the project root as `client_secret.json`

## Usage

1. Start the bot:
   ```bash
   python main.py
   ```

2. The bot will initialize and connect to all configured services

3. Available Commands:
   - GitHub operations: `github help`
   - Calendar operations: `calendar help`
   - Forms operations: `forms help`
   - Resume parsing: `resume parse <file_path>`
   - Weather check: `weather <city_name>`
   - Wikipedia search: `wiki <query>`
   - YouTube search: `youtube <query>`

## Project Structure

```
GenieBot/
├── main.py              # Entry point
├── tools/               # Tool implementations
│   ├── github_tools.py  # GitHub integration
│   ├── google_tools.py  # Google services
│   ├── comm_tools.py    # Communication tools
│   └── ai_tools.py      # AI implementations
├── config/              # Configuration files
├── utils/              # Utility functions
└── tests/              # Test suite
```

## API Documentation

Detailed API documentation for each component is available in the `/docs` directory:
- [GitHub Tools Documentation](docs/github_tools.md)
- [Google Integration Documentation](docs/google_tools.md)
- [Communication Tools Documentation](docs/comm_tools.md)
- [AI Tools Documentation](docs/ai_tools.md)


