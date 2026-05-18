---
id: 662347b1bb7b3cdfcccffa57
title: Zoezi la 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` ni wakati uliopita wa kitenzi `to hear`, ambalo lina maana ya kupata taarifa kuhusu jambo kupitia masikio au kufahamishwa kuhusu jambo fulani. Kwa mfano, `I heard the news yesterday` ina maana ulipata taarifa za habari siku iliyopita.

`authentication module` katika muktadha wa programu ni sehemu ya mfumo inayohusika na kuthibitisha utambulisho wa watumizi. Mara nyingi hutumika katika mifumo ya kuingia (login). Kwa mfano, `The authentication module checks the username and password` ina maana inathibitisha sifa za mtumizi.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

Ni wakati uliopita wa `to hear`, unaoonyesha Brian alifahamishwa kuhusu zoezi la Sophie.

---

`fixing`

### --feedback--

Inahusu tendo la kurekebisha au kutatua hitilafu katika programu.

---

`authentication`

### --feedback--

Inahusu mchakato wa kuthibitisha utambulisho wa mtumizi katika moduli ya programu.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
