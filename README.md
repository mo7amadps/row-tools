# row tools

Small Discord userscript (Tampermonkey / Via / Violentmonkey) by **by_me1**.
Adds a floating panel on discord.com with three actions:

- **copy token** – copies *your own* account token to the clipboard (only on a real click)
- **enroll all quests** – enrolls in every open quest
- **claim all quests** – claims rewards of completed quests

It also blocks Discord's `api/v9/science` analytics requests while it runs.

## Install

1. Install a userscript manager (Tampermonkey, Violentmonkey, or Via's built-in scripts).
2. Open the raw `loader.user.js` from this repo and install it, or paste its contents as a new script.
3. Open discord.com in the browser (use "Desktop site" on mobile).

## Safety notes

- `script.js` makes **no requests to any server except `discord.com`** and never
  sends your token anywhere; "copy token" only writes to your clipboard.
- The loader pulls `script.js` from the `main` branch of this repo, so **keep 2FA enabled on the GitHub account** that owns it.
- **Never share your token.** Anyone who has it can control your account without a password.
  If it leaks, change your Discord password (this invalidates the old token).
- Automating Discord can violate Discord's Terms of Service. Use at your own risk, preferably on a spare account.

## Changelog

- **0.0.2** – fixed `fetch` override breaking calls made with `URL`/`Request` objects; buttons now only react to real user clicks; removed dead duplicate code.
- **0.0.1** – initial release (renamed, removed "copy encrypted token", honest loading messages).

## Updating

After editing `script.js`, purge the CDN cache so the change goes live immediately:
`https://purge.jsdelivr.net/gh/mo7amadps/row-tools@main/script.js`

## Credits

Maintained by **by_me1** (Discord).
Based on the original `discord_tools` project by 7xr; no license file was included upstream.

---

## بالعربي (مختصر)

أداة بتضيف لوحة على discord.com: نسخ التوكن، التسجيل بكل الـquests، واستلام الجوائز.
**لا تشارك التوكن مع أي حدا**، وفعّل 2FA على حساب GitHub.
