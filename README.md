🧩 Pokémon Card App

A visually appealing Flutter application that displays Pokémon cards directly fetched from the Pokémon TCG API, without the need for a custom backend.
This app provides a simple yet powerful demonstration of how to work with REST APIs in Flutter, handle JSON data, and display it using modern UI components.

🚀 Features

Fetches Pokémon card data directly from the Pokémon TCG API.

Displays Pokémon names, images, and card details in a grid layout.

Uses responsive Flutter widgets for a smooth experience on all devices.

Clean and minimal design using ListView, GridView, and custom widgets.

Error handling for slow or failed network responses.

🛠️ Tech Stack

Framework: Flutter (Dart)
API Source: Pokémon TCG API (https://api.pokemontcg.io/v2/cards
)
Tools Used: VS Code / Android Studio, HTTP package

🧠 What I Learned

By building this app, I (Rahim) learned:

How to integrate REST APIs directly in Flutter using the http package.

How to parse JSON responses and convert them into custom Dart model classes.

How to display API data dynamically using Flutter widgets like GridView and ListView.

How to handle asynchronous programming with Future and async/await.

How to manage app state effectively while fetching data from external sources.

How to design a clean and user-friendly UI for data-heavy apps.

This project gave me real-world experience in working with APIs, data modeling, and Flutter UI design, preparing me for more advanced app development involving backend systems later on.

Key Components:

pokemon_service.dart — Fetches card data from the Pokémon TCG API.

pokemon_card.dart — Model class to store Pokémon card attributes (name, image, etc.).

home_page.dart — Displays all Pokémon cards in a scrollable grid layout.

card_detail_page.dart — Shows larger images and details of each card.

⚙️ How to Run

1️⃣ Clone the repository

git clone https://github.com/yourusername/pokemon_card_app.git


2️⃣ Navigate to the project folder

cd pokemon_card_app


3️⃣ Get dependencies

flutter pub get


4️⃣ Run the app

flutter run

🌐 API Used

This app uses the Pokémon TCG API v2 to fetch card information.
Example endpoint:

https://api.pokemontcg.io/v2/cards?pageSize=40&page=1

🧑‍🎨 Credits
👨‍💻 Abdul Rahim — Developer, Designer & Integrator

Designed and developed the entire Flutter app.

Integrated the Pokémon TCG API directly into the app without a backend.

Created responsive UI layouts for mobile and web.

Implemented clean data models and JSON handling.

Learned and practiced API integration, Flutter architecture, and UI building through this project.

🤖 ChatGPT (by OpenAI) — Technical Mentor & Code Assistant

Provided guidance on structuring the Flutter project.

Helped debug API integration and http request issues.

Suggested optimized code patterns for better performance.

Wrote explanations, documentation, and this README for professional presentation.

Assisted in learning Dart concepts, async operations, and error handling.
