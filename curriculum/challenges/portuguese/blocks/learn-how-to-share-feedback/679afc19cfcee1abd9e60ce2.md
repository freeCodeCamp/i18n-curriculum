---
id: 679afc19cfcee1abd9e60ce2
title: Tarefa 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Brian acha que pode acontecer se não ouvirmos aqueles na equipe que discordam?

## --answers--

Eles podem perder a motivação.

---

Eles vão parar de ter desentendimentos.

### --feedback--

Ignorar as opiniões das pessoas não impede os desentendimentos; pode apenas fazer com que as pessoas se envolvam menos.

---

Eles vão trabalhar mais para provar seu ponto.

### --feedback--

Brian não sugere que se sentir desvalorizado faz as pessoas trabalharem mais.

---

Eles concordarão automaticamente com tudo.

### --feedback--

Não ouvir as pessoas não faz com que elas concordem com tudo — pode fazer com que elas se desliguem em vez disso.

## --video-solution--

1

# --explanation--

`To feel valued` descreve a sensação que você tem quando acredita que seus pensamentos, esforços e contribuições são apreciados. Por exemplo:

O gerente de projeto sempre dedica um tempo durante a reunião para ouvir o que temos a dizer. Isso faz com que todos na equipe se sintam valorizados.` - Isso significa que a atitude do gerente de projeto está trazendo bons resultados para a equipe.

O que Brian sugere é que, se as opiniões dos membros da equipe forem ignoradas, eles podem se sentir sem importância. Se os membros da equipe se sentirem valorizados, é mais provável que permaneçam engajados e contribuam com novas ideias.

Por outro lado, se as pessoas sentirem que suas opiniões não importam, elas podem se desengajar e perder a motivação para contribuir, o que pode prejudicar o trabalho em equipe e a produtividade geral.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
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
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
