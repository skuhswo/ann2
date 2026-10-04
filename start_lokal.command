#!/bin/sh
# ANN-2 — lokaler JupyterLab-Start per Doppelklick (macOS).
# Beim allerersten Start: Rechtsklick -> Öffnen; bietet macOS das nicht an:
# Systemeinstellungen -> Datenschutz & Sicherheit -> "Dennoch öffnen".
# Voraussetzung: uv ist installiert (Ein-Zeilen-Befehl: docs.astral.sh/uv).
# Der erste Start lädt Python 3.12, PyTorch und tiktoken und dauert einige Minuten.
cd "$(dirname "$0")" || exit 1
exec uvx --python 3.12 --from jupyterlab --with torch --with tiktoken --with numpy --with matplotlib jupyter lab
