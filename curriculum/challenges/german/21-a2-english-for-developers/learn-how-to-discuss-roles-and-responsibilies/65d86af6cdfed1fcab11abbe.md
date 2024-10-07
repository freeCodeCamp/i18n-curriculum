---
id: 65d86af6cdfed1fcab11abbe
title: Aufgabe 68
challengeType: 22
dashedName: task-68
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` bedeutet, entsprechend den Regeln oder Schritten zu handeln, die erstellt wurden, um einen Ort oder Menschen sicher zu halten. Es ist vielen Bereichen wichtig, speziell an Arbeitsplätzen, um Probleme oder Gefahren zu verhindern.

Du hast gelernt, dass du nach `everyone` die dritte Singularform verwenden solltest, weil `everyone` als jede Person in einer Gruppe betrachtet wird, individuell behandelt.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

Dies ist die Singularform des Verbs, bedeutet, jede Person führt die Aktion aus.

---

`security`

### --feedback--

Dieses Wort bedeutet, Leute, Orte oder Dinge, vor Gefahr oder Schaden zu bewahren.

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
