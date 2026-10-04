# ANN-2 · Architektur Neuronaler Netze für Generative KI 2

Begleit-Notebooks zur Vorlesung im Wintersemester 2026/27 an der Hochschule Worms (Prof. Dr. Stephan Kurpjuweit). Je Lerneinheit gibt es einen Ordner `LExx` mit dem Notebook und den Daten.

Sie können die Notebooks auf drei Wegen nutzen. An den Notebooks selbst ändert sich dabei nichts.

## Weg 1: Google Colab

Colab läuft im Browser, Sie müssen nichts installieren. Sie brauchen ein Google-Konto. Wer Google nicht nutzen möchte, nimmt Weg 2.

1. In Moodle den Colab-Link der Lerneinheit anklicken.
2. Sofort „Kopie in Drive speichern" klicken. Ohne diesen Klick gehen Ihre Änderungen beim Schließen verloren.
3. Die erste Codezelle ausführen (Umschalt+Eingabe). Sie prüft die Umgebung und installiert das fehlende Paket `tiktoken`.

Eine GPU brauchen Sie bis einschließlich Lerneinheit 4 nicht. Für das Training ab Lerneinheit 5 schalten Sie sie über Laufzeit → Laufzeittyp ändern → T4-GPU dazu.

Wenn Colab die Sitzung trennt, bleibt Ihre Kopie erhalten, der Rechenzustand ist aber weg. Laufzeit → Alle ausführen stellt ihn wieder her.

## Weg 2: Lokal

Das Werkzeug ist `uv`, bekannt aus ANN-1.

1. Einmalig `uv` installieren, falls noch nicht vorhanden: Ein-Zeilen-Befehl unter [docs.astral.sh/uv](https://docs.astral.sh/uv).
2. Dieses Repository laden: oben auf der Seite Code → Download ZIP und entpacken, oder `git clone`.
3. Das Startskript für Ihr System ausführen.
   - Windows: Doppelklick auf `start_lokal.bat`
   - macOS: Doppelklick auf `start_lokal.command`. Beim ersten Mal blockiert macOS die Datei. Ein Rechtsklick und „Öffnen" gibt sie frei, sonst Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen".
   - Linux: im Ordner `sh start_lokal.sh`
4. In JupyterLab links den Ordner der Lerneinheit öffnen und das Notebook per Doppelklick starten.

Der erste Start lädt Python 3.12, PyTorch und tiktoken. Das dauert einige Minuten und braucht unter Linux mehrere Gigabyte, weil PyTorch dort die CUDA-Bibliotheken mitbringt. Danach startet JupyterLab in Sekunden. Erledigen Sie den ersten Start deshalb zu Hause und nicht im Hörsaal.

Beim ersten Aufruf lädt tiktoken außerdem das Vokabular des Tokenizers aus dem Netz. Danach arbeiten Sie offline.

**Variante mit VS Code:** Ordner in VS Code öffnen, im Terminal `uv sync` ausführen, Notebook öffnen und oben rechts als Kernel das `.venv` dieses Ordners wählen. Die Pakete stehen in `pyproject.toml`.

## Weg 3: Hochschul-Server

Im Laufe des Semesters kommt ein JupyterHub auf dem GPU-Server der Hochschule dazu. Der Umstieg wird im Termin erklärt.

## Wenn etwas nicht läuft

- Variablen fehlen oder Ergebnisse passen nicht: Laufzeit (Colab) oder Kernel (JupyterLab) → Neu starten und alle ausführen.
- Prüfzellen zu noch ungelösten Aufgaben schlagen dabei fehl. Das ist kein Installationsfehler.
- Meldet die erste Codezelle ein fehlendes Paket, starten Sie JupyterLab über das Startskript und nicht über eine eigene Installation.

## Inhalt

| Datei | Zweck |
|---|---|
| `LExx/LExx_notebook.ipynb` | Begleit-Notebook der Lerneinheit mit Übungen und Prüfzellen |
| `LE02/the-verdict.txt` | Beispieltext (Edith Wharton, gemeinfrei) |
| `LE02/goethe.txt` | Texte von Johann Wolfgang von Goethe (gemeinfrei) |
| `start_lokal.bat`, `start_lokal.command`, `start_lokal.sh` | Startskripte für JupyterLab |
| `pyproject.toml` | Pakete für die Variante mit VS Code |
| `LICENSE-Raschka.txt` | Lizenztext zum übernommenen Code |

## Quellen und Lizenz

Die Notebooks zu den Lerneinheiten 2 bis 5 folgen Sebastian Raschka, *Build a Large Language Model (From Scratch)*, Manning 2024. Übernommener und angepasster Code stammt aus dem Repository [rasbt/LLMs-from-scratch](https://github.com/rasbt/LLMs-from-scratch) und steht unter der Apache-Lizenz 2.0 (`LICENSE-Raschka.txt`). Die Quellenbox am Ende jedes Notebooks nennt die Herkunft.
