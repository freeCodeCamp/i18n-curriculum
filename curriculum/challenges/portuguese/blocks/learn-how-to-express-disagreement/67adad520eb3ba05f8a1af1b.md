---
id: 67adad520eb3ba05f8a1af1b
title: Tarefa 33
challengeType: 19
dashedName: task-33
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Anna deve dizer para concordar com Bob?

## --answers--

`I don't understand.`

### --audio-id--

en-b1-67adad520eb3ba05f8a1af1b-SP1

### --feedback--

Esta frase sugere confusão, mas Anna precisa mostrar concordância com a ideia de Bob.

---

`That makes sense.`

### --audio-id--

en-b1-67adad520eb3ba05f8a1af1b-SP2

## --video-solution--

2

# --explanation--

`That makes sense` é uma forma natural de mostrar concordância. As pessoas usam essa frase em conversas quando aceitam ou entendem uma sugestão. Por exemplo:

- Pessoa 1: `We should optimize the code before adding new features to avoid performance issues.`

- Pessoa 2: `That makes sense. A slow app will frustrate users.` - Esta pessoa concorda e entende por que otimizar o código primeiro é uma boa ideia.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 52,
      "finishTimestamp": 58.24
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
