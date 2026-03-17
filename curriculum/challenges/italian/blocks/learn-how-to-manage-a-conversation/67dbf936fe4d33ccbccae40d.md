---
id: 67dbf936fe4d33ccbccae40d
title: Attività 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Si usa per scusarsi di qualcosa che è successo. Non dimenticare la maiuscola.

# --explanation--

`To be sorry for something` si usa quando ci si scusa per un'azione che potrebbe aver causato disagio o danno. Per esempio:

`I'm sorry for being late to the meeting.` - Questo significa che chi parla si pente di essere arrivato in ritardo e si scusa. Nota che `being` è nella forma `-ing` perché segue subito `for` (una preposizione).

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
