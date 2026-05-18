---
id: 67c70abfeb7c6fb8cbd3fed7
title: Aufgabe 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.  

# --questions--

## --text--

Worüber möchte Maria mit James sprechen?  

## --answers--

Bobs Terminplan für die Woche.  

### --feedback--

Maria erwähnt Bobs Terminplan nicht.  

---

Ihr jüngstes Treffen mit Bob.  

---

Eine zukünftige Projektfrist.  

### --feedback--

Maria erwähnt keine Frist, sondern nur ihr Treffen mit Bob.  

---

Die Budgetanfrage des Clients.  

### --feedback--

Maria bezieht sich in diesem Satz nicht auf eine Anfrage des Clients.  

## --video-solution--

2  

# --explanation--

`Can we talk about...` wird verwendet, um ein Gesprächsthema einzuführen. Es ist eine höfliche Art, um ein Gespräch über etwas Wichtiges zu bitten. Zum Beispiel:

`Can we talk about the changes to the project timeline?` – Das bedeutet, dass die sprechende Person über die Anpassungen des Projektzeitplans sprechen möchte.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
