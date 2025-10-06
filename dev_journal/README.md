# Development Journals

Notes, intermediate results, logs, etc. during the development are kept here.

Markdown (.md) is preferred.

Jupyter notebooks may be used for it encapsulates text, plots, code together in a single file.  Use <https://github.com/googlecolab/open_in_colab> to ease the launch of notebook in colab.  Markdown is acceptable but don't keep plots/images it uses under this directory.  Reference results elsewhere where they are properly categorized.

Keep each file to a reasonable size, for instance one file per week.  Follow the naming convention below.

## Assets (images etc.)

When including images etc. using online editors, upon saving, GitHub or colab may offload them to cloud storage outside of the repo and only leave a link in the original file.  A script at
```
/utils/fetch_assets.py
```
will automatically download all assets to local `assets/` directory and optionally modify the test to point to or inline local images.  Use it regularly to not let cloud storage rot the information integrity.

## Naming convention

```
name_YYYYMM_a.md
ymei_202505_b.ipynb
```
