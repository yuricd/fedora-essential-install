#!/bin/bash
docker build -t fedora_bp_installer:latest .
docker run -i -t -p 5902:5902 --name fedora_test fedora_bp_installer