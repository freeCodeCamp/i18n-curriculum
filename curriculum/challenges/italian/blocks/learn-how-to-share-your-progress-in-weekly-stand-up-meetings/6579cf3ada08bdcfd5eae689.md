---
id: 6579cf3ada08bdcfd5eae689
title: Attività 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

In questo dialogo, Sophie sta facendo una richiesta a Bob. Capire la natura della sua richiesta è fondamentale per una comunicazione e collaborazione efficace nel team, soprattutto in ambienti tecnici dove è comune risolvere problemi insieme.

# --questions--

## --text--

Cosa sta chiedendo Sophie nella sua conversazione con Bob?

## --answers--

Sta chiedendo aiuto per un problema di programmazione

---

Vuole che Bob risolva il problema per lei

### --feedback--

Sophie sta chiedendo aiuto, non necessariamente che Bob lo risolva completamente da solo.

---

Sta offrendo aiuto a Bob per un problema

### --feedback--

Sophie è colei che chiede assistenza, non che la offre.

---

Sta parlando di un progetto futuro

### --feedback--

La richiesta di Sophie riguarda un problema di programmazione attuale, non un progetto futuro.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
