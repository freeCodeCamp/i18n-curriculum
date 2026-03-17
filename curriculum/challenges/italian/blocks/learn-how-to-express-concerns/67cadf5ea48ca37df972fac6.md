---
id: 67cadf5ea48ca37df972fac6
title: Attività 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.  

# --questions--

## --text--

Qual è la richiesta più importante che Maria menziona dal team?  

## --answers--

Hanno bisogno di più aiuto.  

---

Vogliono una scadenza più lunga.  

### --feedback--

Maria non menziona di voler estendere la scadenza.

---

Vorrebbero ridurre il numero di attività.

### --feedback--

Maria non menziona di voler ridurre il numero di attività.  

---

Chiedono più riunioni.  

### --feedback--

Maria non menziona riunioni aggiuntive.

## --video-solution--

1  

# --explanation--

`First` si usa quando vuoi numerare le azioni in ordine di importanza o di tempo. In questo caso, Maria elenca ciò di cui il team ha bisogno, iniziando da quella che sembra la richiesta più importante (avere più supporto). Un altro esempio:

`First, we should analyze the problem. Then, we can discuss solutions.` - Questo significa che analizzare il problema viene prima di tutto il resto.

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
