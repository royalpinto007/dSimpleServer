# dSimpleServer

Welcome to **dSimpleServer**!

This is a straightforward web server built using the D programming language with the help of the Vibe.d library. It’s designed to be simple and easy to understand, perfect for anyone looking to get a basic web server up and running with D.

## What It Does

- **Endpoints**:
  - `/`: Greets you with a warm welcome message.
  - `/hello`: Says "Hello, World!" to brighten your day.
- **404 Handling**: Any unknown paths will get a friendly "404 Not Found" message.

## Getting Started

### What You Need

- **D Compiler**: You’ll need to have the D compiler installed. You can grab it from [dlang.org](https://dlang.org/download.html).
- **Dub Package Manager**: Dub usually comes with D, and it's your tool for managing this project.

### How to Get It Running

1. **Clone the Repo**:

   ```bash
   git clone https://github.com/royalpinto007/dSimpleServer.git
   cd dSimpleServer
   ```

2. **Run the Server**:

   ```bash
   dub
   ```

   This will start the server on `http://127.0.0.1:8080/`.

### How to Use It

- Visit `http://127.0.0.1:8080/` to see the welcome message.
- Go to `http://127.0.0.1:8080/hello` for a cheerful "Hello, World!".
- Any other URL will give you a "404 Not Found" message.

### Project Layout

- **`source/app.d`**: This is where the magic happens! It contains the code for the server.
- **`dub.json`**: The configuration file for the project.
