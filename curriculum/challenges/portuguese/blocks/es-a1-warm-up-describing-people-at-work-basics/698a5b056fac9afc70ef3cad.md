---
id: 698a5b056fac9afc70ef3cad
title: tarefa 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Vamos revisar alguns dos países que você aprendeu até agora.

| País | Nacionalidade (feminina) | Nacionalidade (masculina) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

Em espanhol, os nomes dos países são nomes próprios e sempre começam com letra maiúscula.

Note que as nacionalidades `brasileño`/`brasileña` e `panameño`/`panameña` usam a letra única `eñe` (`ñ`).

Camila está praticando alguns desses países. Você consegue identificá-los?

# --instructions--

Ouça o áudio e complete a sequência abaixo.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Este país é o maior da América do Sul e começa com letra maiúscula.

---

`Panamá`

### --feedback--

Este país é conhecido por seu famoso canal. Lembre-se de incluir o acento na última letra `a` e de colocar a primeira letra em maiúscula.

# --explanation--

A sequência é `Brasil` - `Colombia` - `Panamá`.

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
