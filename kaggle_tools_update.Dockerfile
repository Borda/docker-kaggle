# This Dockerfile is a temporary solution to unblock the 
# community team by updating their library latest using
# the latest python image.
# This is needed until we resolved the issues with the
# main build.

# Usage:
#   docker build --rm -t kaggle/python-build -f kaggle_tools_update.Dockerfile .
#   ./test
#   ./push (if tests are passing)

FROM gcr.io/kaggle-images/python:latest

RUN pip install git+https://github.com/Kaggle/learntools
