---
id: 6751bdd2f78adbed1ea0fa51
title: Attività 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Qual è la preoccupazione di Brian?

## --answers--

Se gli utenti devono essere informati sul tempo di inattività.

---

Se il tempo di inattività durerà troppo a lungo.

### --feedback--

Brian non chiede della lunghezza del tempo di inattività.

---

Se gli utenti avranno problemi tecnici.

### --feedback--

Brian non menziona problemi tecnici nella sua preoccupazione.

---

Se il tempo di inattività influenzerà le prestazioni del server.

### --feedback--

La preoccupazione di Brian non riguarda le prestazioni del server.

## --video-solution--

1

# --explanation--

Brian chiede se dovrebbero aggiornare gli utenti sul tempo di inattività, mostrando che la sua preoccupazione riguarda la comunicazione con gli utenti piuttosto che la durata del tempo di inattività, problemi tecnici o le prestazioni del server.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
