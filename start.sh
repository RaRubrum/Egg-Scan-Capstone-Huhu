#!/bin/bash
export TF_CPP_MIN_LOG_LEVEL=2
export CUDA_VISIBLE_DEVICES=""
export TF_FORCE_GPU_ALLOW_GROWTH=true
export OMP_NUM_THREADS=1
gunicorn app:app --bind 0.0.0.0:${PORT:-8000} --workers=1 --timeout=300 --max-requests=10 --max-requests-jitter=5 --worker-class=sync --preload