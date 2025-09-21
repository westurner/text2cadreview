# text2cadreview

[![Build Wheels](https://github.com/yourusername/text2cadreview/actions/workflows/build.yml/badge.svg)](https://github.com/yourusername/text2cadreview/actions/workflows/build.yml)
[![Docs](https://github.com/yourusername/text2cadreview/actions/workflows/docs.yml/badge.svg)](https://github.com/yourusername/text2cadreview/actions/workflows/docs.yml)
[![codecov](https://codecov.io/gh/yourusername/text2cadreview/branch/main/graph/badge.svg)](https://codecov.io/gh/yourusername/text2cadreview)

A Python project for converting text-based instructions into CAD review workflows.

## Project Structure

- `text2cadreview/` - Main source code
- `docs/` - Sphinx documentation
- `tests/` - Unit tests (if any)
- `Dockerfile` - Containerization
- `.devcontainer/` - VS Code development container
- `pyproject.toml` - Project metadata and dependencies
- `Makefile` - Common development commands

## Development

### Setup

1. Clone the repository
2. Build the dev container (if using VS Code)
3. Install dependencies:
   ```sh
   pip install -e .
   ```

### Documentation

To build the Sphinx docs:

```sh
make docs
```

### Testing

To run tests:

```sh
make test
```

## License

MIT License
