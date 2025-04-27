FROM ubuntu:22.04

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Setup environment variables
ENV ANDROID_SDK_ROOT=/opt/android-sdk-linux
ENV FLUTTER_HOME=/opt/flutter
ENV PATH=${PATH}:${FLUTTER_HOME}/bin:${ANDROID_SDK_ROOT}/cmdline-tools/latest/bin:${ANDROID_SDK_ROOT}/platform-tools

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    openjdk-11-jdk \
    wget \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev \
    libstdc++-12-dev \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN groupadd --gid 1000 developer \
    && useradd --uid 1000 --gid 1000 -m developer \
    && echo developer ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/developer \
    && chmod 0440 /etc/sudoers.d/developer

# Set up Android SDK
RUN mkdir -p ${ANDROID_SDK_ROOT} \
    && mkdir -p /home/developer/.android \
    && touch /home/developer/.android/repositories.cfg \
    && chown -R developer:developer ${ANDROID_SDK_ROOT} /home/developer/.android

USER developer
WORKDIR /home/developer

# Download Android SDK command line tools
RUN mkdir -p ${ANDROID_SDK_ROOT}/cmdline-tools/latest \
    && curl -o android_tools.zip https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip \
    && unzip android_tools.zip -d ${ANDROID_SDK_ROOT}/tmp \
    && mv ${ANDROID_SDK_ROOT}/tmp/cmdline-tools/* ${ANDROID_SDK_ROOT}/cmdline-tools/latest \
    && rm -rf ${ANDROID_SDK_ROOT}/tmp android_tools.zip

# Accept Android SDK licenses
RUN yes | sdkmanager --licenses \
    && sdkmanager "platform-tools" "platforms;android-33" "build-tools;33.0.0"

# Download Flutter SDK
RUN git clone https://github.com/flutter/flutter.git ${FLUTTER_HOME} -b stable \
    && flutter config --no-analytics \
    && flutter precache \
    && flutter doctor

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

WORKDIR /workspace
