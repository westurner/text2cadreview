# syntax=docker/dockerfile:1
FROM python:3.13-slim

WORKDIR /workspace

RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=cache,target=/root/.cache/pip \
    pip install --upgrade pip uv


COPY pyproject.toml ./
COPY README.md ./
COPY text2cadreview/ ./text2cadreview/
RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=cache,target=/root/.cache/pip \
    uv venv && \
    uv pip install -e .[test,docs]

# COPY docs/ ./docs/
# RUN --mount=type=cache,target=/root/.cache/uv uv pip install -r docs/requirements.txt


CMD ["bash"]
