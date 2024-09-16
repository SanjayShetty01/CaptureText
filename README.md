# capture_text

**capture_text** is a Linux-only screen capture tool that uses OCR (Optical Character Recognition) to extract text from selected areas on the screen. It supports major Linux distributions and offers simple installation via `.deb` or `.rpm` packages.

## Features

- Capture selected screen areas
- Extract text from images using OCR
- Utilizes **Tesseract OCR** for accurate text recognition
- Lightweight and easy to use
- Linux-only support

## Installation

### Option 1: Install via `.deb` package (for Debian/Ubuntu-based systems)

1. Download the `.deb` file from the releases page.
2. Install the package using `dpkg`:
    ```bash
    sudo dpkg -i capture_text-0.1.0-1_amd64.deb
    sudo apt-get install -f
    ```
3. Run the application:
    ```bash
    capture_text
    ```

### Option 2: Install via `.rpm` package (for Fedora/RHEL-based systems)

1. Download the `.rpm` file from the releases page.
2. Install the package using `dnf` or `rpm`:
    ```bash
    sudo dnf install capture_text-0.1.0-1.x86_64.rpm
    ```
3. Run the application:
    ```bash
    capture_text
    ```

## Option 3: Build from Source (with install.sh)

If you prefer to compile **capture_text** from source, you can use the provided `install.sh` script. Ensure that **Rust** and **Cargo** are installed on your system.

### Steps:

1. Extract the tarball:
    ```bash
    tar -xvzf capture_text-0.1.0.tar.gz
    cd capture_text
    ```

2. Run the `install.sh` script:
    ```bash
    ./install.sh
    ```

The script will automatically compile the project and move the binary to `/usr/local/bin`.

### Dependencies:

Ensure you have installed the necessary dependencies before running the script:
- Rust and Cargo (for compiling)
- Tesseract OCR (for OCR functionality)
- Leptonica (for image processing)

- Screenshot tools required (at least one)
    - spectacle (works with KDE Plasma, possibly LXQT)
    - gnome-screenshot (works with GNOME, Unity, Budgie, Cinnamon, etc)
    - scrot (works with anything with an X server, except WSL or Bash for Ubuntu for Windows)


You can install them via your package manager:
- **Ubuntu/Debian**:
    ```bash
    sudo apt-get install libtesseract-dev libleptonica-dev
    ```
- **Fedora/RHEL**:
    ```bash
    sudo dnf install tesseract-devel leptonica-devel
    ```

## Usage

Once installed, **capture_text** can be run from the terminal:
```bash
capture_text
```

After launching, you can select the desired screen area to capture. The text within the selected area will be processed and output to the console.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you'd like to contribute.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SanjayShetty01/capture_text/blob/main/LICENSE) file for details.
