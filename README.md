# RSAPIManager

[![Swift Package Index](https://img.shields.io/badge/Swift_Package_Index-Available-green?logo=swift)](https://swiftpackageindex.com/rahulsohaliya120/RSAPIManager)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange?logo=swift)](https://swift.org)
[![Platform](https://img.shields.io/badge/platforms-iOS%2016%2B-blue)](https://swiftpackageindex.com/rahulsohaliya120/RSAPIManager)
[![License](https://img.shields.io/badge/license-Apache%202.0-lightgrey)](LICENSE)
[![Version](https://img.shields.io/badge/SPM-1.0.0-brightgreen)](https://github.com/rahulsohaliya120/RSAPIManager/releases)

A reusable Swift API Manager using Alamofire. Supports GET, POST, PUT, DELETE, and Multipart requests with flexible encodings, headers, and error handling — perfect for any iOS project.

🚀 APIManager Using Alamofire

A reusable Swift API Manager built using Alamofire, designed to handle all HTTP requests (GET, POST, PUT, DELETE, and Multipart) efficiently.
This module provides a clean, modular, and scalable networking layer for iOS apps — supporting custom headers, request encodings, loader visibility, and unified error handling.

🧩 Features

✅ Universal support for GET, POST, PUT, DELETE, and Multipart requests

⚙️ Configurable Parameter Encoding (JSONEncoding, URLEncoding, MultipartFormData)

🧱 Built-in Loader Control for managing UI state during API calls

🔐 Easily attach Authorization Headers (e.g., JWT, Bearer tokens)

🪶 Lightweight and reusable — integrates seamlessly with any MVVM or MVC architecture

💡 Custom response handler supporting both Codable parsing and raw dictionary response

🧰 Tech Stack

Language: Swift 5+

Framework: Alamofire 5+

Architecture: Clean Networking Layer

Platform: iOS 14.0+

## 📦 Installation (Swift Package Manager)

To integrate **RSAPIManager** into your Xcode project:

### Option 1 — Using Xcode UI
1. Open your project in Xcode.  
2. Go to **File → Add Packages...**  
3. Enter the repository URL: https://github.com/rahulsohaliya120/RSAPIManager.git
4. Choose **Version: Up to Next Major (1.0.0 < 2.0.0)**  
5. Add the package to your project target.

### Option 2 — Using `Package.swift`
If you’re using your own Swift Package, add this dependency:

```swift
dependencies: [
 .package(url: "https://github.com/rahulsohaliya120/RSAPIManager.git", from: "1.0.0")
]


Then import it:
import RSAPIManager

🧠 Usage Example
1️⃣ Basic GET Request (with Codable)

API_Manager.shared.GET_METHOD(
    requestURL: "objects",
    encodingType: .urlEncoding,
    isShowLoader: true,
    responseType: [Object].self
) { responseType, error, responseDict, model in
    switch responseType {
    case .SUCCESS:
        print("✅ Data:", model ?? [])
    case .ERROR:
        print("❌ Error:", error?.localizedDescription ?? "Unknown error")
    }
}

2️⃣ Raw Dictionary Response (without model)

API_Manager.shared.GET_METHOD(
    requestURL: "objects",
    encodingType: .urlEncoding,
    isShowLoader: true
) { responseType, error, responseDict in
    switch responseType {
    case .SUCCESS:
        print("✅ Response Dict:", responseDict ?? [:])
    case .ERROR:
        print("❌ Error:", error?.localizedDescription ?? "Unknown error")
    }
}
```

🧩 Example Parameter Encodings

| Encoding Type   | Description                            | Use Case                    |
| --------------- | -------------------------------------- | --------------------------- |
| `.jsonEncoding` | Sends data as JSON in the request body | `POST`, `PUT` APIs          |
| `.urlEncoding`  | Sends data in the URL query string     | `GET`, lightweight requests |
| `.multipart`    | Sends files and form data together     | File/Image uploads          |

⚡ Error Handling

All error codes (400, 401, 403, 404, 500, etc.) are standardized under a single HTTPError enum for easy debugging and consistent logging.

🧑‍💻 Author

Rahul Sohaliya
📧 GitHub Profile

🪪 License

This project is licensed under the Apache License 2.0 — see the LICENSE
 file for details.
