---
id: 679d2dc229e6ceeadff4ed48
title: Tarefa 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Esta palavra é usada para evitar repetir o verbo `update` da frase anterior.

---

`delay`

### --feedback--

Esta palavra significa adiar ou fazer algo acontecer mais tarde do que o planejado.

# --explanation--

Em vez de dizer `If we update the software, it might delay other projects.`, James encurta para `If we do`. A palavra `do` é frequentemente usada para evitar repetir o verbo ou uma frase completa usada na sentença anterior. Por exemplo:

`She wants to join the meeting` e, se ela o fizer, precisará do link. - Em vez de dizer `if she joins the meeting`, você pode usar `does` para substituí-lo e assim evitar a repetição.

`To delay` significa fazer algo acontecer mais tarde do que o planejado. Por exemplo:

`The flight was delayed due to bad weather.` - Isso significa que o voo foi adiado e não partiu no horário.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
