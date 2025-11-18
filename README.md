# 📝 Flutter Stopwatch App
This is a clean and functional Flutter Stopwatch App built using Flutter’s built‑in Stopwatch class and Timer.periodic() for real‑time UI updates. The app allows users to Start, Stop, Reset, and Record Laps, making it a perfect beginner-friendly project to learn about Flutter UI, timers, state management, and performance‑efficient time tracking.

## 📱 Features
- Start / Stop stopwatch functionality
- Reset timer and clear laps
- Lap recording with dynamic list display
- Millisecond‑level precision using Stopwatch API
- Smooth UI updates via Timer.periodic()
- Clean Material UI with responsive layout

## 🚀 Getting Started
Follow these steps to set up and run the project:
- **1. Install Flutter**
If you haven’t already, follow the official installation guide: <br/>
👉 Flutter Setup Guide

- **2. Create a new Flutter project**
```sh
flutter create flutter_stopwatch_app
```

- **3. Add the code**
Replace the default lib folder with the provided tutorial files: - main.dart - stopwatch_page.dart

- **4. Run the application**
```sh
flutter run
```
## 📂 Project Structure
```plaintext
flutter_stopwatch_app/
│
├── lib/
│   ├── main.dart              → App entry point
│   └── stopwatch_page.dart    → Stopwatch logic & UI
│
├── pubspec.yaml               → Project configuration
└── README.md                  → Documentation
```

## 🧠 How It Works
The stopwatch uses Dart’s native Stopwatch class for accurate time measurements. A Timer.periodic() refreshes the UI every 30ms, ensuring a smooth display.

**Timer Behavior:**
When the user interacts with buttons: 
- Start → starts the stopwatch and triggers UI updates.
- Stop → halts the stopwatch and stops periodic updates.
- Lap → stores the current elapsed time.
- Reset → stops timer, resets stopwatch, and clears lap records.
- Lap entries are displayed in a scrollable list, with newest laps shown first.

## 💻 Core Code Overview
- _start(): Begins the stopwatch and initializes a 30ms periodic update.
- _top(): Stops both the stopwatch and the periodic timer.
_lap(): captures and stores the current elapsed duration.
_reset(): clears all stored laps and resets the entire stopwatch.
_formatTime(): formats elapsed time into MM:SS.CC or HH:MM:SS.CC for readability.

## 🎨 Future Improvements
- Add dark mode toggle for theme customization
- Improve animations using AnimatedSwitcher or TweenAnimationBuilder
- Integrate vibration or sound feedback for button actions
- Add lap statistics like fastest/slowest times
- Save laps using local storage (shared_preferences, Hive)

## About Me 
✨ I’m **Sufyan bin Uzayr**, an open-source developer passionate about building and sharing meaningful projects.
You can learn more about me and my work at [sufyanism.com](https://sufyanism.com/) or connect with me on [Linkedin](https://www.linkedin.com/in/sufyanism)

## Your all-in-one learning hub! 
🚀 Explore courses and resources in coding, tech, and development at **zeba.academy** and **code.zeba.academy**. Empower yourself with practical skills through curated tutorials, real-world projects, and hands-on experience. Level up your tech game today! 💻✨

**Zeba Academy**  is a learning platform dedicated to **coding**, **technology**, and **development**.  
➡ Visit our main site: [zeba.academy](https://zeba.academy)   <br/>
➡ Explore hands-on courses and resources at: [code.zeba.academy](https://code.zeba.academy)   <br/>
➡ Check out our YouTube for more tutorials: [zeba.academy](https://www.youtube.com/@zeba.academy)  <br/>
➡ Follow us on Instagram: [zeba.academy](https://www.instagram.com/zeba.academy/)  <br/>

**Thank you for visiting!**





