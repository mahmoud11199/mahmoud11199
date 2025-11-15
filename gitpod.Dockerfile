FROM gitpod/workspace-full

USER gitpod
ENV ANDROID_SDK_ROOT=/workspace/android-sdk
ENV ANDROID_HOME=/workspace/android-sdk

RUN sudo apt-get update && \
    sudo apt-get install -y unzip wget && \
    mkdir -p /workspace/android-sdk && \
    cd /workspace && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O cmdtools.zip && \
    unzip -q cmdtools.zip -d /workspace/android-sdk && \
    rm cmdtools.zip && \
    mkdir -p /workspace/android-sdk/cmdline-tools/latest && \
    mv /workspace/android-sdk/cmdline-tools/* /workspace/android-sdk/cmdline-tools/latest/ || true
