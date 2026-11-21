# row tools

Small Discord userscript (Tampermonkey) by **by_me1**.
Adds a floating panel on discord.com with three actions:

- **copy token** – copies *your own* account token to the clipboard
- **enroll all quests** – enrolls in every open quest
- **claim all quests** – claims rewards of completed quests

It also blocks Discord's `api/v9/science` analytics requests while it runs.

## Install

1. Install [Tampermonkey](https://www.tampermonkey.net/).
2. Open the raw `loader.user.js` from this repo and click **Install**.

The loader is pinned to a git tag and verified with a SHA-256 hash
(`@require ...#sha256=...`), so if `script.js` is ever changed after release,
Tampermonkey refuses to run it.

## Safety notes

- `script.js` makes **no requests to any server except `discord.com`** and never
  sends your token anywhere; "copy token" only writes to your clipboard.
- **Never share your token.** Anyone who has it can control your account without a password.
  If it leaks, change your Discord password (this invalidates the old token).
- Automating Discord can violate Discord's Terms of Service. Use at your own risk, preferably on a spare account.

## Releasing a new version

```bash
# after editing script.js
git tag v0.0.2
./scripts/make-loader.sh <github_user> <repo> v0.0.2   # regenerates loader.user.js with the new hash
git add -A && git commit -m "Release v0.0.2" && git push --tags
```

## Credits

Maintained by **by_me1** (Discord).
Based on the original `discord_tools` project by 7xr; no license file was included upstream.

---

## بالعربي (مختصر)

أداة Tampermonkey بتضيف لوحة على discord.com: نسخ التوكن، التسجيل بكل الـquests، واستلام الجوائز.
اللودر مثبّت على tag وبـhash، فإذا تغيّر `script.js` بعد الإصدار بيرفض Tampermonkey يشغّله.
**لا تشارك التوكن مع أي حدا.**
