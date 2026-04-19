# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repository is

This is a personal Anki flashcard collection backup. It uses [AnkiCollectionIO](https://github.com/ponlawat-w/AnkiCollectionIO) — a .NET CLI tool — to export an Anki `.anki2` SQLite database into CSV files, then commits the diff as a snapshot.

## How to update (Windows/PowerShell)

Run `run.ps1` to:
1. Clone/update the `src/` directory (AnkiCollectionIO tool — gitignored)
2. Export the Anki collection at `~/AppData/Roaming/Anki2/ponlawat_w/collection.anki2` into `notes/`
3. Show the diff and prompt to commit and push

## Notes / CSV format

Each file in `notes/` corresponds to one Anki deck. The filename prefix (e.g. `jath`, `dezz`) is a short deck identifier.

CSV columns vary by deck type, but typically include the target language word/phrase, reading (for CJK), Thai translation, and optional flags like `Add Reverse`.

## Commit message convention

Commits use Thai Buddhist Era year: `Updated YYYY/MM/DD HH:mm` where the year is the Gregorian year + 543 (e.g. 2026 → 2569).
