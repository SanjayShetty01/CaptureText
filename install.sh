#!/bin/bash

# Ensure the script is being run from the source directory
if [ ! -f "Cargo.toml" ]; then
    echo "Error: This script must be run from the source directory where Cargo.toml is located."
    exit 1
fi

# Check if Rust (rustc) is installed
if ! command -v rustc &> /dev/null; then
    echo "Error: rustc (Rust compiler) is not installed."
    echo "Please install Rust by visiting https://www.rust-lang.org/tools/install"
    exit 1
fi

# Check if Cargo is installed
if ! command -v cargo &> /dev/null; then
    echo "Error: cargo (Rust package manager) is not installed."
    echo "Please install Rust by visiting https://www.rust-lang.org/tools/install"
    exit 1
fi

# Build the application
echo "Building CaptureText..."
cargo build --release

# Check if the build was successful
if [ $? -ne 0 ]; then
    echo "Error: Build failed."
    exit 1
fi

# Install the application
echo "Installing CaptureText..."
sudo cp target/release/capture_text /usr/local/bin/

# Check if the installation was successful
if [ $? -ne 0 ]; then
    echo "Error: Installation failed."
    exit 1
fi

echo "CaptureText has been installed successfully!"
