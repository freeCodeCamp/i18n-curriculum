---
id: 67f0ee4cc8f7fe5fd534eff4
title: Attività 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Questa frase di due parole si usa per mostrare accordo o approvazione di un'idea o proposta. La prima parola termina con `-s`.

---

`appreciate`

### --feedback--

Questa parola significa essere grati per qualcosa. Esprime ringraziamento per un aiuto, supporto o qualcosa fatto per te.

# --explanation--

`Sounds good` indica che chi parla è d'accordo o approva ciò che è stato detto. Per esempio:

`Your idea sounds good.` – Questo significa che chi parla pensa che l'idea sia buona ed è d'accordo.

`I appreciate` è un modo per dire grazie o mostrare gratitudine. Per esempio:

`I appreciate your help with the project.` – Questo significa che sei grato per l'aiuto ricevuto.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
