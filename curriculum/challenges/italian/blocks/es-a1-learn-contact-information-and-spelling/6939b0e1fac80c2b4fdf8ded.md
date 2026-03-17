---
id: 6939b0e1fac80c2b4fdf8ded
title: Attività 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

In questa attività, Basti compone il suo soprannome lettera per lettera.

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

Questa è la prima lettera che Basti usa per iniziare a comporre il suo soprannome.

---

`t`

### --feedback--

Questa lettera segue la "s" in "Basti".

---

`i`

### --feedback--

Questa è l'ultima lettera di "Basti". Ascolta il suono vocalico alla fine.

# --explanation--

Basti compone il suo soprannome come `B-a-s-t-i`.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
