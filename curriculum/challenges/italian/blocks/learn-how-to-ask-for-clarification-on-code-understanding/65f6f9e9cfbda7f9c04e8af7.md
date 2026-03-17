---
id: 65f6f9e9cfbda7f9c04e8af7
title: Attività 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

La frase `by the end of it` è comunemente usata in inglese per indicare la conclusione o la parte finale di un processo o di un periodo di tempo. Implica che al completamento di una certa attività si raggiungerà un risultato o una comprensione specifica.

# --questions--

## --text--

Nel dialogo, cosa intende Brian con `by the end of it`?

## --answers--

Interromperanno l'indagine.

### --feedback--

Questa frase riguarda il raggiungimento di una conclusione, non necessariamente l'interruzione dell'attività.

---

Inizieranno un'altra attività.

### --feedback--

Brian si riferisce alla fine dell'indagine attuale, non all'inizio di qualcosa di nuovo.

---

Faranno una pausa.

### --feedback--

La frase si concentra sul raggiungimento di una comprensione alla fine del processo, non sul fare una pausa.

---

Avranno una comprensione più chiara della situazione dopo l'indagine.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
