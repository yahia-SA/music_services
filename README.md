
# 🎵 Music Services Module – Flutter Developer Intern Assignment  
**Submitted by**: Yahia Samir  
**GitHub Repo Link**: [https://github.com/yahia-samir/music-assignment](https://github.com/yahia-samir/music-assignment)

This is a Flutter implementation of the **"Music Services Module (Single Screen)"** as part of the S.Rocks.Music Flutter Developer Intern assignment.

It showcases:
- Responsive UI design based on provided Figma layout
- Firebase Firestore integration for dynamic card data
- MVVM architecture pattern with clean separation of concerns
- State management using `Provider`
- Optional dependency injection using `get_it`

---

## 🧱 Features

| Feature | Description |
|--------|-------------|
| ✅ UI Recreation | Accurate recreation of the Figma design including cards, header, and bottom nav |
| ✅ Firebase Integration | Fetches service data from Firestore in real-time |
| ✅ Navigation | Tapping any card navigates to detail screen |
| ✅ MVVM Architecture | Separated View, ViewModel, and Repository layers |
| ✅ Provider | Used for state management |
| 💡 Bonus: DI with `get_it` | Optional bonus implemented for scalability |

---

## 📁 Folder Structure

```bash
/lib
├── main.dart
│
├── core/
│   ├── constans/
│   │   └── app_constans.dart
│   ├── di/
│   │   └── locator.dart
│   ├── extensions/
│   │   └── sizedbox_extensions.dart
│   ├──routes/
│   │   ├── navigator_services.dart
│   │   ├── routes.dart   
│   │   └── app_routes.dart
│   ├── service/
│   │   └── firebase_service.dar
│   ├── theme/
│   │   ├── app_colors.dart
│   │   └── app_text.dartt
│   
├── models/
│   └── service_model.dart
│
├── view/
│   ├── widget/
│   │   ├── bottom_nav.dart
│   │   ├── card_widget.dart
│   │   └── hero_section.dart
│   │
│   ├── detail_screen.dart
│   └── home_screen.dart
│
├── viewmodel/
│   ├── service_viewmodel.dart
│
├── repository/
│   ├── service_repository.dart
│   └── service_repository_impl.dart
```
---

## 🛠️ Technologies & Packages Used

| Package | Purpose |
|--------|---------|
| `provider` | For state management |
| `cloud_firestore` | To fetch music services dynamically |
| `get_it` | Used for dependency injection (optional bonus) |
| `flutter_screenutil` | For responsive UI across devices |
| `flutter_svg` | To render SVG icons from asset paths |
| `firebase_core`, `material`, `cupertino` | Core dependencies |

---

## 📖 Firebase Setup Instructions

### 1. Firestore Collection: `services`

Each document contains:

```json
{
  "title": "Music Production",
  "description": "Custom instrumentals & film scoring",
  "icon": "assets/icons/music_production.svg",
  "background": "assets/images/music_production.png"
}
```

### 2. Security Rules (for testing only)

```js
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read: if true;
    }
  }
}
```

> 🔐 For production apps, replace these permissive rules with secure rules that validate authenticated user access.

---

## ⚙️ How to Run

### 1. Clone the repo

```bash
git clone https://github.com/yahia-samir/srocks-music-assignment.git
cd srocks-music-assignment
```

### 2. Get dependencies

```bash
flutter pub get
```

### 3. Set up Firebase

- Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
- Add an Android/iOS app and download `google-services.json` or `GoogleService-Info.plist`
- Enable Firestore
- Update `lib/main.dart` with your `Firebase.initializeApp()` config or use auto-initialized options

### 4. Run the app

```bash
flutter run
```

---

## 🧪 What Was Tested?

| Component | Status |
|----------|--------|
| ✅ UI matches Figma | Yes |
| ✅ Firestore fetched dynamically | Yes |
| ✅ Card tap navigation | Yes |
| ✅ Responsive layout | Yes (`flutter_screenutil`) |
| ✅ Provider for state | Yes |
| 💡 DI with `get_it` | Yes (Optional Bonus) |

---

## 📦 Submission Details

| Item | Status |
|------|--------|
| ✅ GitHub Repo | Included |
| ✅ README | This file |
| ✅ Code Follows MVVM | Yes |
| ✅ Uses Provider | Yes |
| ✅ Uses `get_it` | Yes (Bonus Point) |

---

## 📝 Notes

- All card icons and images are loaded dynamically through asset paths stored in Firestore.
- Used `flutter_svg` to load SVG assets.
- Applied `BoxDecoration` with gradients and opacity overlays to make text readable over background images.
- Implemented loading and error states where needed.

## 🙌 Thanks!

Thanks for reviewing my submission. I’ve done my best to follow all requirements while applying best practices like **MVVM**, **Provider**, and **Dependency Injection**.

Let me know if you'd like me to clarify anything further!
