---
id: 66c4ef1cb275e86febc9fe2c
title: Attività 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

L'azione di mostrare o renderizzare qualcosa. Questa parola termina con `-ing`.

---

`running`

### --feedback--

Indica che l'estensione è attiva e funzionante. Questa parola termina con `-ing`.

# --explanation--

Un gerundio è una forma verbale che termina con `-ing` e funziona come un sostantivo. In questa frase, `displaying` e `running` sono gerundi che descrivono azioni in corso. Per esempio:

- `Updating the software is essential.` - Qui, `Updating` è un gerundio che descrive un'azione.

Nella frase di Sarah, `displaying` e `running` descrivono azioni relative all'estensione live server e a come funziona.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
