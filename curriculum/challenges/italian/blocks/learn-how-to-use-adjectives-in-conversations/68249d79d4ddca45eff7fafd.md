---
id: 68249d79d4ddca45eff7fafd
title: Attività 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa ha intenzione di fare Jessica con le informazioni?

## --answers--

Ignorarle per ora e aspettare altri feedback.

### --feedback--

Jessica dice che organizzerà le informazioni e le condividerà, non che le ignorerà.

---

Organizzarle in un report e discuterne con gli altri.

---

Chiedere agli utenti di testarle di nuovo prima di apportare modifiche.

### --feedback--

Non menziona nulla riguardo a un nuovo test o al feedback degli utenti.

---

Inviarle direttamente al client senza revisione.

### --feedback--

Jessica ha intenzione di parlare prima con il suo team, non di inviarle direttamente al client.

## --video-solution--

2

# --explanation--

Jessica dice che `put all this information into a report` e `talk about it with the team tomorrow`. Questo mostra che ha intenzione di organizzare i dettagli e discuterne con il suo team.

Dice anche che il feedback `should help`, il che significa che guiderà i loro prossimi passaggi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
