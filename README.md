# LhamaFood

LhamaFood is a SwiftUI-based iOS application that simulates a food ordering experience. Users can browse a list of food items fetched from an API, view detailed information about each item, and manage their account settings.

## Features

- **Browse Food**: Displays a list of available food items with images and prices.
- **Food Details**: Tap on any item to view nutritional information (calories, protein, carbs) and a detailed description.
- **Data Fetching**: Fetches data from a remote API and handles loading states with redacted placeholders.
- **Account Management**: A form to manage personal data such as name, email, and birthday, along with customizable toggle options.
- **Orders**: A placeholder screen for managing orders (currently under development).

## Tech Stack

- **Language**: Swift
- **UI Framework**: SwiftUI
- **Minimum iOS Version**: iOS 14.0+
- **Architecture**: MVVM (Model-View-ViewModel)

## Getting Started

To run this project on your local machine, follow these steps:

1.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    ```

2.  **Open the project**:
    Navigate to the project directory and open `LhamaFood.xcodeproj` with Xcode.

3.  **Run the App**:
    Select a simulator or a connected device and press `Cmd + R` to build and run the application.

## Project Structure

- **LhamaFoodApp.swift**: The main entry point of the application.
- **Screens**: Contains the main views for the app (Foods, Order, Account).
  - `FoodListView`: The home screen displaying the list of foods.
  - `FoodListViewModel`: Handles data fetching and state management for the food list.
  - `OrderView`: The screen for viewing orders.
  - `AccountView`: The screen for user account settings.
- **Model**: Contains the data models used in the app (e.g., `Food`).
- **Utils**: Helper classes and extensions, including `NetworkManager` for API calls.

## Networking

The app uses `NetworkManager` to fetch food data. It handles common networking errors and provides appropriate alerts to the user.

## License

This project is for educational purposes.
