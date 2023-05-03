#!/usr/bin/env bash
kind create cluster --name dev --config ha-config.yaml --image kindest/node:v1.26.3