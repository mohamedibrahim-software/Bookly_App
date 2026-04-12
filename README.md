# 📚 Bookly App

A feature-rich Flutter book browsing application with offline support, favorites, cart, and more.
 
---
## ✨ screen shote


<img width="1080" height="2160" alt="Screenshot_1775999987" src="https://github.com/user-attachments/assets/1169b0c3-601d-4cf8-a445-75926cc4d6a1" />
<img width="1080" height="2160" alt="Screenshot_1775999993" src="https://github.com/user-attachments/assets/be1d65a6-cc0e-4dc6-853f-c0d10b8aea19" />
<img width="1080" height="2160" alt="Screenshot_1775999945" src="https://github.com/user-attachments/assets/b4968e1c-cee8-4aa6-8663-c8c9f43db3a8" />
<img width="1080" height="2160" alt="Screenshot_1775999975" src="https://github.com/user-attachments/assets/ac763ae6-978b-4a52-976b-4d68da2d06cf" />
<img width="1080" height="2160" alt="Screenshot_1775999940" src="https://github.com/user-attachments/assets/96de2276-463e-48d1-a956-c1c4efcb79e4" />
<img width="1080" height="2160" alt="Screenshot_1775999930" src="https://github.com/user-attachments/assets/747bf8e7-b26d-4101-b591-98a7c4b88094" />






---

## ✨ Features

- 🏠 **Home** — Browse featured and newest books powered by Google Books API
- ❤️ **Favorites** — Save your favorite books locally with Hive
- 🛒 **Cart** — Add books to cart, adjust quantity, and view checkout summary
- 🔍 **Search** — Search for any book by title or keyword
- 🌙 **Dark Mode** — Full dark/light theme support
- 📴 **Offline Mode** — Books cached locally using Hive for offline access
- 🎬 **Onboarding** — Smooth onboarding screens with Lottie animations

---

## 🏗️ Architecture

- **MVVM** pattern with clean separation of concerns
- **SOLID Principles** — especially Single Responsibility
- **Cubit** (flutter_bloc) for state management
- **Repository Pattern** with abstract interfaces and concrete implementations

---

## 📦 Packages

| Package | Usage |
|---|---|
| `flutter_bloc` | State management with Cubit |
| `get_it` | Dependency injection (Singleton) |
| `dio` | HTTP client for Google Books API |
| `hive` + `hive_flutter` | Local storage for offline mode, favorites, and cart |
| `go_router` | Navigation and routing |
| `cached_network_image` | Efficient image loading and caching |
| `dartz` | Functional error handling with `Either` |
| `equatable` | Value equality for states and models |
| `google_nav_bar` | Beautiful bottom navigation bar |
| `skeletonizer` | Loading skeleton UI |
| `lottie` | Lottie animations for onboarding |

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── utils/         # API service, router, styles, colors
│   └── errors/        # Failure classes
├── features/
│   ├── home/          # Featured & newest books
│   ├── search/        # Book search
│   ├── favorite/      # Favorites with Hive
│   ├── cart/          # Cart with quantity & checkout
│   ├── onboarding/    # Onboarding screens
│   └── splash/        # Splash screen
```

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/yourusername/bookly_app.git

# Install dependencies
flutter pub get

# Run code generation
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

---

## 📡 API

Uses the **Google Books API** to fetch free ebooks by category.

---

## 🛠️ State Management Flow

```
UI → Cubit → Repo (abstract) → RepoImpl → API / Hive
```

---

## 📝 Notes

- Offline data is cached using **Hive** boxes: `bookbox`, `favbox`, `cartbox`
- Dependency injection is handled via **GetIt** singleton
- All navigation is managed by **GoRouter**
