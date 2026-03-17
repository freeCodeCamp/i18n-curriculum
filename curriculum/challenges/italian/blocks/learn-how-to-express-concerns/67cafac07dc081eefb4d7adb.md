---
id: 67cafac07dc081eefb4d7adb
title: Attività 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.  

# --questions--

## --text--

Qual è l'obiettivo di avere riunioni settimanali?

## --answers--

Ridurre il numero di attività che il team ha.

### --feedback--

Bob non menziona la riduzione delle attività.  

---

Evitare di apportare modifiche al progetto.

### --feedback--

Bob non suggerisce di evitare modifiche.

---

Aumentare il numero di riunioni senza uno scopo chiaro.

### --feedback--

Bob ha un obiettivo specifico e lo menziona.

---

Assicurarsi che tutti rimangano aggiornati sul progetto.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` significa tenerli informati su aggiornamenti e decisioni importanti. Per esempio:

`Please keep me in the loop about any changes to the schedule.` - Questo significa che chi parla vuole essere aggiornato se qualcosa cambia.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
