# Configuration file for the Sphinx documentation builder.

import os
import sys
sys.path.insert(0, os.path.abspath('../text2cadreview'))

project = 'text2cadreview'
copyright = '2025, Your Name'
author = 'Your Name'
release = '0.1.0'

extensions = [
    'myst_parser',
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',
]

myst_enable_extensions = [
    "colon_fence",
    "deflist",
    "html_admonition",
    "html_image",
]

html_theme = 'furo'

exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# -- Options for autodoc ---------------------------------------------------
autoclass_content = 'both'
