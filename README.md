# Homebrew Tap for DbCat

Official [Homebrew](https://brew.sh/) tap for **[DbCat](https://dbcat.forzens.com/)**, a native database client for macOS and Windows built with Rust.

## Installation

```bash
brew install --cask dbcat-app/tap/dbcat
```

## Updating

DbCat updates itself automatically via its built-in updater (`auto_updates true`), so regular `brew upgrade` skips it. To upgrade via Homebrew instead:

```bash
brew upgrade --cask --greedy dbcat
```

## Uninstalling

Remove the application:

```bash
brew uninstall --cask dbcat
```

Remove the application along with all local preferences, caches, and logs:

```bash
brew uninstall --cask --zap dbcat
```

## Links

- **Website:** https://dbcat.forzens.com/
- **Releases:** https://github.com/dbcat-app/dbcat/releases
- **Issues & Feedback:** https://github.com/dbcat-app/dbcat/issues

---

> **Note:** `Casks/dbcat.rb` is updated automatically by the DbCat release script on every release. Manual pull requests to this repository are not accepted; please report any issues at [dbcat-app/dbcat](https://github.com/dbcat-app/dbcat/issues).
