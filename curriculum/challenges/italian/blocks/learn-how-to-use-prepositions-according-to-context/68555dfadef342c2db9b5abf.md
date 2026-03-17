---
id: 68555dfadef342c2db9b5abf
title: Attività 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Questa frase di due parole significa introdotto o causato qualcosa che è apparso o è diventato un problema. La prima parola è la forma al passato di `bring`.

---

`unexpected`

### --feedback--

Questa parola significa che è successo qualcosa di non pianificato o previsto. Finisce con `-ed`.

# --explanation--

`Brought up` significa causato qualcosa che è apparso, specialmente un problema o un problema. Qui, `brought` è la forma al passato di `bring`. Per esempio:

`The new feature brought up several bugs.` – Questo significa che la funzionalità ha causato che i bug venissero notati.

`Unexpected` descrive qualcosa che succede senza preavviso o pianificazione. Per esempio:

`We had an unexpected delay due to server issues.` – Questo significa che il ritardo non era previsto.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
