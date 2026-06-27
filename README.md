# 🚀 AdStacks Premium Dashboard (Flutter Web)

> **Enterprise-grade, ultra-responsive Flutter Web application designed for the AdStacks Internship Assignment.**

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)
![Material 3](https://img.shields.io/badge/Material--3-M3-6750A4)
![Deployment](https://img.shields.io/badge/Vercel-Automated_Deploy-black?logo=vercel&logoColor=white)

---

## 🌟 Executive Summary & Highlights

This project demonstrates a production-ready, highly polished **AdStacks Management Dashboard** built with Flutter Web. The implementation showcases extreme attention to detail, pixel-perfect fidelity to the provided mockups, robust responsive mechanics, and clean architecture best practices.

### 🔑 Key Architectural Decisions & Features
- **Pristine Modular Architecture:** The codebase is structured using a Feature-First modular approach (`lib/config`, `lib/constants`, `lib/layout`, `lib/models`, `lib/pages`, `lib/widgets`), ensuring complete separation of concerns and high scalability.
- **Flawless Responsive Mechanics:** Built around a custom `ResponsiveBuilder` and `AppBreakpoints` framework (`1280px` desktop threshold). Seamlessly adapts across 3-column Desktop setups, Tablet drawers, and Mobile single-column stacked views.
- **State-of-the-Art Custom CustomPaint Graphics:** Features a high-performance, fully custom Bézier wave line chart (`OverallPerformanceCard`) complete with an elegant 3D gradient area shadow and floating tooltips—achieved entirely via native `CustomPaint` without heavy external charting libraries.
- **Strict Layout Constraints:** Header and sidebar widths are mathematically locked (`320px` right sidebar, `260px` left sidebar) to eliminate visual overflow, clipping, or widget leaking across viewports.
- **Production-Grade Cleanliness:** Verified with `flutter analyze` — **100% zero errors, zero warnings, and zero lint issues**. Employs strict `const` widget constructors for 60/120 FPS rendering efficiency.
- **Out-of-the-Box Vercel Deployment:** Bundled with custom `vercel.json` routing configurations and a `build.sh` Linux script for automated CI/CD static builds on Vercel.

---

## 📂 Codebase Architecture & Directory Structure

```text
lib/
├── config/
│   └── app_pages.dart            # Global navigation mapping, titles, and icons
├── constants/
│   ├── app_breakpoints.dart      # Viewport thresholds (Mobile: 768px, Tablet: 1280px)
│   ├── app_colors.dart           # Definitive design system palette & hex colors
│   ├── app_decorations.dart      # Common box shadows, borders, and UI treatments
│   ├── app_metrics.dart          # Canonical spacing tokens and border radiuses
│   ├── app_paddings.dart         # Standardized padding configurations
│   └── constants.dart            # Single-file barrel export for all constants
├── data/                         # Mock repository data and static models
├── layout/
│   ├── main_layout.dart          # Master adaptive scaffold (Row/Drawer structure)
│   ├── page_container.dart       # Scrolling content shell with responsive margins
│   └── responsive_builder.dart   # LayoutBuilder wrapper for viewport scaling
├── models/
│   ├── page_item.dart            # Navigation representation contract
│   └── models.dart               # Barrel export for domain models
├── pages/
│   └── dashboard/
│       ├── dashboard_view.dart   # Master dashboard assembly view
│       └── widgets/
│           ├── header_widget.dart          # Adaptive top search bar & profile icons
│           ├── sidebar_widget.dart         # Primary navigation Left Sidebar
│           ├── right_sidebar_widget.dart   # Task management Right Sidebar
│           ├── left_sidebar/               # Sub-components (Brand Logo, Avatars, Workspaces)
│           ├── main_content/               # Primary widgets (All Projects, Top Creators, Performance)
│           └── right_sidebar/              # Right widgets (Calendar, Birthdays, Anniversaries)
├── widgets/
│   ├── custom_search_field.dart  # Custom text fields
│   ├── notification_badge.dart   # Custom badge buttons
│   ├── user_avatar.dart          # Reusable avatar UI
│   └── widgets.dart              # Barrel export for shared widgets
└── main.dart                     # Bootstrap entry point & Material 3 Theme setup
```

---

## 🛠️ Getting Started & Local Development

### 1. Prerequisites
Ensure you have the Flutter SDK installed and configured for Web development:
```bash
flutter config --enable-web
```

### 2. Run Locally
Clone the repository and launch the development server:
```bash
git clone https://github.com/yourusername/adstacks.git
cd adstacks
flutter run -d chrome
```

### 3. Build for Production
To generate an optimized, high-performance CanvasKit static web bundle:
```bash
flutter build web --release --web-renderer canvaskit
```

---

## 🌐 Automated Vercel Deployment

Deploying this project to Vercel is completely plug-and-play:
1. Import your repository into Vercel.
2. Vercel automatically detects the included `vercel.json` and executes `build.sh`.
3. Vercel compiles the Flutter Web binary and deploys it instantly with full SPA routing fallback!

---
*Designed & developed with passion for the AdStacks Internship Assignment.*
