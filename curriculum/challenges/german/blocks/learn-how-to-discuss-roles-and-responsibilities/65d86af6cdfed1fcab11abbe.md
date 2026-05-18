---
id: 65d86af6cdfed1fcab11abbe
title: Aufgabe 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` bedeutet, nach Regeln oder Schritten zu handeln, die dazu bestimmt sind, einen Ort oder Menschen sicher zu halten. Es ist in vielen Bereichen wichtig, besonders am Arbeitsplatz, um Probleme oder Gefahren zu verhindern.

Sie haben gelernt, dass Sie nach `everyone` die dritte Person Singular des Verbs verwenden sollten, weil `everyone` als jede einzelne Person in einer Gruppe betrachtet wird.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

Dies ist die Singularform des Verbs, die bedeutet, dass jede Person die Handlung ausführt.

---

`security`

### --feedback--

Dieses Wort bedeutet, Menschen, Orte oder Dinge vor Gefahr oder Schaden zu schützen.

---

`procedures`

### --feedback--

Dies sind die Schritte oder Regeln, die für die Sicherheit befolgt werden müssen.

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
