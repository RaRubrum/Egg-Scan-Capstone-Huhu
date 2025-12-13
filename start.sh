#!/bin/bash
export TF_CPP_MIN_LOG_LEVEL=2
export CUDA_VISIBLE_DEVICES=""
gunicorn app:app --bind 0.0.0.0:${PORT:-8000}