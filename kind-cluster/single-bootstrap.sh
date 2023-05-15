#!/usr/bin/env bash
kind create cluster --name dev --config single-config.yaml --image kindest/node:v1.26.3
