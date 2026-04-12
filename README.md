# 漢字フラッシュカード — Kanji Flashcard App

A native iOS flashcard app for learning Japanese kanji across all five JLPT levels (N5 → N1), powered by the SM-2 spaced-repetition algorithm.

---

## Features

- **Spaced-Repetition System (SRS)** — SM-2 algorithm schedules reviews at optimal intervals so you study smarter, not harder
- **Full JLPT Coverage** — N5 through N1 kanji database with meanings, on'yomi, kun'yomi, stroke count, and example words
- **Flashcard Sessions** — Tap to flip, swipe to rate; four-button rating system (Again / Hard / Good / Easy); cards rated Again are re-queued within the same session so you see them again before finishing
- **Kanji Library** — Browse and search all kanji with live level filters; each card shows your SRS progress
- **Statistics Dashboard** — Streak tracking, accuracy graph, activity heatmap (last 12 weeks), per-level progress bars, and recent session history
- **Keep Practicing** — After finishing a session the summary screen offers a one-tap "Keep Practicing" button to start another round without navigating back; the button is hidden when no practice cards remain
- **Persistent Progress** — All review data is saved locally via `UserDefaults`; no account or internet required

---

## Kanji Database

| Level | Count | Description |
|-------|-------|-------------|
| N5    | 85    | Basic kanji — numbers, days, family, directions |
| N4    | 170   | Elementary kanji — actions, places, common adjectives |
| N3    | 375   | Intermediate kanji — society, nature, abstract concepts |
| N2    | 382   | Upper-intermediate — formal vocabulary, compound words |
| N1    | 306   | Advanced — literature, specialist, and rare-use kanji |
| **Total** | **1,318** | |

Each kanji includes meanings, on'yomi, kun'yomi, stroke count, and at least two example words with readings and English translations.

---

## Requirements

| Requirement | Version |
|-------------|---------|
| Xcode       | 16.0+   |
| iOS         | 17.0+   |
| Swift       | 5.10+   |

No third-party dependencies — the project uses only Apple frameworks (SwiftUI, Foundation, Combine).

---

## Getting Started

```bash
git clone https://github.com/QuintenSand/Kanji-Flashcard-App.git
cd Kanji-Flashcard-App
open KanjiApp.xcodeproj
```

Select a simulator or connected device in Xcode and press **⌘R** to build and run.

---

## Project Structure

```
KanjiApp/
├── KanjiApp.swift              # @main entry point, injects AppState
├── ContentView.swift           # Root TabView (Library | Study | Statistics)
│
├── Models/
│   ├── Kanji.swift             # Kanji & KanjiExample models, JLPTLevel enum
│   ├── KanjiDatabase.swift     # Static database: 1,318 kanji across all JLPT levels
│   └── SRSEngine.swift         # SM-2 algorithm, SRSCard model, ReviewRating enum
│
├── Persistence/
│   └── PersistenceManager.swift # AppState (ObservableObject), UserDefaults I/O,
│                                 # StudySession model, streak & accuracy helpers
│
└── Views/
    ├── Library/
    │   └── LibraryView.swift   # Kanji grid, search, level chips, detail view
    ├── Study/
    │   ├── StudyView.swift     # Study home, level selector, due-card banner
    │   └── SessionView.swift   # Full-screen flashcard session + summary screen
    └── Stats/
        └── StatsView.swift     # KPI strip, mastery overview, heatmap, sessions
```

---

## How the SRS Works

Reviews use the **SM-2** algorithm, the same algorithm behind Anki:

| Rating | Key | SM-2 quality |
|--------|-----|--------------|
| Again  | 🔴  | 1 — reset interval to 1 day; card is re-queued at the end of the current session |
| Hard   | 🟠  | 2 — correct but difficult; small interval increase |
| Good   | 🟢  | 4 — correct with hesitation; normal interval increase |
| Easy   | ⭐️ | 5 — perfect recall; extra +1 day bonus |

A kanji is considered **mastered** when its review interval reaches 21 days or more.

---

## Contributing

1. Fork the repo
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m "feat: add my feature"`
4. Push and open a Pull Request against `development`

Please keep pull requests focused on a single change and include a short description of what was changed and why.

---

## License

This project is open-source under the [MIT License](LICENSE).
