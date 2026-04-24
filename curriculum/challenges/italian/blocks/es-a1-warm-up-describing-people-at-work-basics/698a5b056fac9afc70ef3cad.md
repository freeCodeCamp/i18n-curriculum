---
id: 698a5b056fac9afc70ef3cad
title: Attività 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Rivediamo alcuni dei paesi che hai imparato finora.

| Paese | Nazionalità (femminile) | Nazionalità (maschile) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

In spagnolo, i nomi dei paesi sono nomi propri e iniziano sempre con la lettera maiuscola.

Nota che le nazionalità `brasileño`/`brasileña` e `panameño`/`panameña` usano la lettera unica `eñe` (`ñ`).

Camila sta praticando alcuni di questi paesi. Riesci a identificarli?

# --instructions--

Ascolta l’audio e completa la sequenza qui sotto.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Questo paese è il più grande del Sud America e inizia con una lettera maiuscola.

---

`Panamá`

### --feedback--

Questo paese è noto per il suo famoso canale. Ricorda di includere l’accento sull’ultima lettera `a` e di scrivere la prima lettera maiuscola.

# --explanation--

La sequenza è `Brasil` - `Colombia` - `Panamá`.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
