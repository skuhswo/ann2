@echo off
rem ANN-2 - lokaler JupyterLab-Start (Windows).
rem Voraussetzung: uv ist installiert (Ein-Zeilen-Befehl: docs.astral.sh/uv).
rem Der erste Start laedt Python 3.12, PyTorch und tiktoken und dauert einige Minuten.
cd /d "%~dp0"
uvx --python 3.12 --from jupyterlab --with torch --with tiktoken --with numpy --with matplotlib jupyter lab
pause
