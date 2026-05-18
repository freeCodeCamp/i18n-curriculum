---
id: 67baf3ed288e8b06f4ab0dfb
title: Aufgabe 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Diese beiden Wörter zusammen beziehen sich auf das Gefühl von Zusammenhalt und Zusammenarbeit unter Kolleginnen und Kollegen. Das erste Wort bezeichnet eine Gruppe, die zusammenarbeitet, und das zweite Wort steht für gemeinsame Begeisterung oder Motivation.

---

`problem-solving`

### --feedback--  

Dieses zusammengesetzte Wort beschreibt den Prozess, Lösungen für Aufgaben zu finden. Der erste Teil bezieht sich auf ein Problem, das behoben werden muss, und der zweite Teil ist ein Verb, das das Finden einer Lösung bedeutet. Denken Sie daran, `-` zwischen den beiden Teilen zu verwenden.

# --explanation--

David ist der Meinung, dass die Arbeit im Büro den `team spirit` (ein Gefühl der Verbindung und des Zusammenhalts unter Kolleginnen und Kollegen) stärkt und das `problem-solving` (das effizientere Finden von Lösungen für Aufgaben) verbessert.

Er argumentiert, dass es einfacher ist, zusammenzuarbeiten und sich gegenseitig zu unterstützen, wenn man sich im selben physischen Raum befindet.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
