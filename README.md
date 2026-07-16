# CarDGee Gentoo Overlay

[![Gentoo](https://img.shields.io/badge/Gentoo-Overlay-54487A?logo=gentoo&logoColor=white)](https://www.gentoo.org/)
[![License](https://img.shields.io/badge/support-none-red)]()

A collection of ebuilds for my own personal use, not available on the main Portage tree.

> ⚠️ **No support whatsoever.** But if you find a bug, please [file an issue](https://github.com/CarDGee/cardgee/issues).

---

## 📦 Installation

Add a new file to `/etc/portage/repos.conf.d/cardgee` with the following contents:

```ini
[cardgee]
location = /var/db/repos/cardgee
sync-type = git
sync-uri = https://github.com/CarDGee/cardgee.git
priority = 50
auto-sync = Yes
```

Then sync the repo:

```bash
emerge --sync cardgee
```

---

## 🐛 Reporting Issues

Found something broken? [Open an issue](https://github.com/CarDGee/cardgee/issues) — no guarantees, but I'll take a look when I can.
