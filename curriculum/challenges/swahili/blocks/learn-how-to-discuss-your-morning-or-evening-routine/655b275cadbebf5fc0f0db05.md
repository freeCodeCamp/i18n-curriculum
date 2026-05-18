---
id: 655b275cadbebf5fc0f0db05
title: Zoezi la 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

Kwa `take` inaweza kumaanisha mambo tofauti kulingana na hali. Katika muktadha wa kujifunza, `take` inamaanisha kuhudhuria au kushiriki darasa la vitu au kozi. Kwa mfano:

- `I take online lessons at 7.` - Hapa, `take` inamaanisha kuhudhuria mafundisho.

- `She is taking a programming course this semester.` - Hapa, `taking` inamaanisha amejiandikisha na kuhudhuria kozi.

Kwa hiyo, unapo sema `take lessons` au `take a course`, unazungumzia kujiunga au kuhudhuria, si kuchukua kitu kimwili.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Kitenzi hiki kinaelezea tendo la kushiriki mafundisho.

---

`online`

### --feedback--

Neno hili linahusu mazingira ya mtandao.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
