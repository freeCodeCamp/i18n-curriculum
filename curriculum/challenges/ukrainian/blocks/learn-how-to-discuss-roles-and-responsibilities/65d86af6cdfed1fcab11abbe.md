---
id: 65d86af6cdfed1fcab11abbe
title: Завдання 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` означає діяти відповідно до правил або кроків, розроблених для забезпечення безпеки місця або людей. Це важливо в багатьох областях, особливо на робочих місцях, щоб запобігти проблемам або небезпекам.

Ви дізналися, що після `everyone` слід використовувати форму дієслова в однині для третьої особи, тому що `everyone` вважається кожною людиною в групі, розглянутою індивідуально.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

Це форма дієслова в однині, що означає, що кожна людина виконує дію.

---

`security`

### --feedback--

Це слово означає забезпечення безпеки людей, місць або речей від небезпеки чи шкоди.

---

`procedures`

### --feedback--

Це кроки або правила, яких потрібно дотримуватися для безпеки.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.80,
      "finishTimestamp": 36.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.76,
      "dialogue": {
        "text": "He also ensures that everyone follows security procedures.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.26
    }
  ]
}
```
