---
id: 65d86af6cdfed1fcab11abbe
title: Zoezi la 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` inamaanisha kutenda kulingana na sheria au hatua zilizoundwa ili kuweka eneo au watu salama. Ni muhimu katika maeneo mengi, hasa mahali pa kazi, kuzuia matatizo au hatari.

Umejifunza kwamba baada ya `everyone`, unapaswa kutumia umbo la mtu wa tatu wa kitenzi kwa sababu `everyone` huchukuliwa kama kila mtu katika kundi, akitendewa kwa mtu mmoja mmoja.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

Huu ni umbo la mtu mmoja wa kitenzi linalomaanisha kila mtu anafanya kitendo hicho.

---

`security`

### --feedback--

Neno hili linamaanisha kuweka watu, maeneo, au vitu salama dhidi ya hatari au madhara.

---

`procedures`

### --feedback--

Hizi ni hatua au sheria zinazohitajika kufuatwa kwa ajili ya usalama.

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
