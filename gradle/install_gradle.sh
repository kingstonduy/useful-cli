#!/usr/bin/env bash
set -e

# ===============================
# Gradle 8.14 Installer for Ubuntu
# ===============================

GRADLE_VERSION=8.14
ARCHIVE="gradle-${GRADLE_VERSION}-bin.zip"
DOWNLOAD_URL="https://services.gradle.org/distributions/${ARCHIVE}"
INSTALL_DIR="/opt/gradle"
PROFILE_FILE="$HOME/.profile"

echo "📦 Installing Gradle ${GRADLE_VERSION}..."

# 1️⃣ Update packages and install prerequisites
sudo apt update -y
sudo apt install -y unzip curl

# 2️⃣ Create download directory
mkdir -p ~/download && cd ~/download

# 3️⃣ Download Gradle binary
if [ -f "${ARCHIVE}" ]; then
    echo "✅ Archive already exists: ${ARCHIVE}"
else
    echo "⬇️  Downloading from ${DOWNLOAD_URL}..."
    curl -LO "${DOWNLOAD_URL}"
fi

# 4️⃣ Extract Gradle to /opt/gradle
echo "🧩 Extracting Gradle to ${INSTALL_DIR}..."
sudo rm -rf "${INSTALL_DIR}/gradle-${GRADLE_VERSION}"
sudo mkdir -p "${INSTALL_DIR}"
sudo unzip -q "${ARCHIVE}" -d "${INSTALL_DIR}"

# 5️⃣ Add Gradle to PATH in .profile (if not already)
if ! grep -q "gradle-${GRADLE_VERSION}/bin" "${PROFILE_FILE}"; then
    echo "⚙️  Adding Gradle ${GRADLE_VERSION} to PATH in ${PROFILE_FILE}"
    echo "export PATH=\$PATH:${INSTALL_DIR}/gradle-${GRADLE_VERSION}/bin" >> "${PROFILE_FILE}"
else
    echo "ℹ️  PATH already contains Gradle ${GRADLE_VERSION}"
fi

# 6️⃣ Create a symlink for convenience
sudo ln -sfn "${INSTALL_DIR}/gradle-${GRADLE_VERSION}/bin/gradle" /usr/bin/gradle

# 7️⃣ Reload environment
echo "🔁 Reloading environment..."
source "${PROFILE_FILE}" || true

# 8️⃣ Verify installation
echo "✅ Verifying Gradle installation..."
gradle --version

echo "🎉 Gradle ${GRADLE_VERSION} installation complete!"
