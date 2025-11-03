---
id: 67efebdf734ad521ace8a89e
title: Tarefa 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

Esta frase de duas palavras refere-se a uma falha de segurança em um sistema que não possui uma correção ou atualização para resolvê-la e que pode ser explorada.

# --explanation--

`Unpatched` significa que algo não foi atualizado ou corrigido.

`Vulnerability` refere-se a uma vulnerabilidade em um sistema que pode ser explorada.

Juntos, uma `unpatched vulnerability` é uma falha de segurança que não foi corrigida ou atualizada. Hackers podem explorar essas vulnerabilidades para atacar um sistema. Por exemplo:

`We need to fix the unpatched vulnerability now.` - A equipe sabe sobre o problema de segurança mas ele ainda não foi reparado.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
