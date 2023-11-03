# MainApp

Welcome to the **MainApp** repository. This application serves as a demonstration and container for the `FindMyIP` library, showcasing its capability to fetch and display IP information within a robust iOS application.

## Overview

`MainApp` integrates the `FindMyIP` library as a core component to provide users with detailed insights into their IP information. This integration exemplifies how the library can be utilized in larger projects.

## Preview

https://github.com/matthewmaloof/MainApp/assets/148370987/4dd7762d-b47a-426a-93f1-faeb096360f3

## Features

- **`FindMyIP` Integration**: Leverages the `FindMyIP` library to present IP and geolocation information.
- **Modular Design**: Designed to showcase the modularity and reusability of the `FindMyIP` library within another application context.
- **Full Feature Set**: Inherits all the features from the `FindMyIP` library, including map views, detailed IP information, and interactive cards.
- **Customization**: Demonstrates how the library can be styled and customized to fit the branding of the main application.

## Getting Started

To include the `FindMyIP` library in your project and use it as part of `MainApp`, follow the instructions below:

### Prerequisites

Ensure you have the latest version of Xcode installed to handle Swift packages.

### Installation

1. Clone the MainApp repository:
    ```sh
    git clone https://github.com/matthewmaloof/MainApp.git
    ```
2. Navigate to the project directory:
    ```sh
    cd MainApp
    ```
3. If `FindMyIP` is not already included, add it as a Swift Package:
    ```sh
    xcodeproj add FindMyIP --path path/to/FindMyIP
    ```
4. Open the MainApp project in Xcode:
    ```sh
    open MainApp.xcodeproj
    ```
5. Build and run the `MainApp` target to see `FindMyIP` in action within the main application context.

## Usage

Launch the `MainApp` and you will be presented with the primary view from the `FindMyIP` library. Interact with the application as you would with the standalone `FindMyIP` app.

## Customization

To customize the look and feel of the `FindMyIP` view to match your app’s design:

1. Apply custom styles to the `FindMyIPView` component.
2. Utilize the theming options provided by `FindMyIP` to align with your branding.

## Contributing

Contributions to both `MainApp` and `FindMyIP` are greatly appreciated. Feel free to fork the repository, make your changes, and create a pull request to contribute.

## Acknowledgments

- [FindMyIP Library](https://github.com/yourusername/FindMyIP) - The core IP information library used in this app.
- [SwiftUI](https://developer.apple.com/xcode/swiftui/)
- [MapKit](https://developer.apple.com/documentation/mapkit/)
