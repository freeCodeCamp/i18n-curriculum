---
id: 675ecedbb04f6ca6dd620f0e
title: Tarefa 76
challengeType: 22
dashedName: task-76
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Este é um tipo de ciberataque onde um hacker secretamente se coloca no meio de duas pessoas ou sistemas que estão se comunicando.O hacker pode ver, alterar ou roubar informações que estão sendo compartilhadas sem que ninguém saiba.Esta é uma palavra composta, lembre-se de usar `-`.As primeiras letras da primeira e da quarta palavra estão capitalizadas.

---

`attacks`

### --feedback--

Esta palavra no plural significa ações de hackers ou criminosos para prejudicar um sistema de computador, roubar informações ou causar problemas.

# --explanation--

`Man-in-the-Middle` (ou `MITM`) é um tipo de ataque onde um hacker se posiciona secretamente entre duas pessoas ou sistemas que estão se comunicando.O hacker escuta ou altera as informações que estão sendo compartilhadas sem que ninguém saiba.Por exemplo:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - O hacker fingiu ser o banco, interceptou as informações e roubou as credenciais de login do usuário.Isso permitiu que o hacker acessasse a conta bancária sem que o usuário soubesse.

`Attacks` são ações de hackers para prejudicar sistemas de computador, roubar informações ou causar problemas.Por exemplo:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - Isso indica que o hacker enviou muito tráfego falso para o site, fazendo com que ele travasse ou ficasse lento.Isso impediu usuários reais de acessá-lo, causando interrupção.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
