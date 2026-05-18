---
id: 65ffa9d80e7ffb1ab9b4df1c
title: Aufgabe 11
challengeType: 22
dashedName: task-11
lang: en-US
---

<!-- (Audio) Sarah: Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers. -->

# --description--

Hören Sie das Audio und vervollständigen Sie den Satz.

# --fillInTheBlank--

## --sentence--

`BLANK you've BLANK the section you need, you should start by reading the BLANK paragraphs to get an overview of what the documentation BLANK.`

## --blanks--

`Once`

### --feedback--

Es zeigt an, dass die folgende Handlung sofort ausgeführt wird, sobald der Abschnitt gefunden ist. Schreiben Sie dieses Wort groß.

---

`found`

### --feedback--

Es wird hier verwendet, um das Auffinden oder Entdecken des benötigten Abschnitts in der Dokumentation zu bedeuten.

---

`introductory`

### --feedback--

Dieses Wort bezieht sich auf die einleitenden Absätze, die ein grundlegendes Verständnis des Abschnitts vermitteln.

---

`covers`

### --feedback--

Es bedeutet, was die Dokumentation inhaltlich umfasst oder behandelt.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.68,
      "finishTimestamp": 27.82
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 8.14,
      "dialogue": {
        "text": "Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8.64
    }
  ]
}
```
