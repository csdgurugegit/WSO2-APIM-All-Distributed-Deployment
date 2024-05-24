#!/bin/bash

# Check if the lines already exist in ~/.bashrc
if ! grep -q "export JAVA_HOME=\"/usr/lib/jvm/jdk-17-oracle-x64\"" ~/.bashrc \
    || ! grep -q "export PATH=\"\$JAVA_HOME/bin:\$PATH\"" ~/.bashrc; then
    # Append the lines to ~/.bashrc
    {
        echo 'export JAVA_HOME="/usr/lib/jvm/jdk-17-oracle-x64"'
        echo 'export PATH="$JAVA_HOME/bin:$PATH"'
    } >> ~/.bashrc
fi
