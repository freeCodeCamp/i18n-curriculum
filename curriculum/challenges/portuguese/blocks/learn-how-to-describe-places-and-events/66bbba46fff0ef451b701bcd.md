---
id: 66bbba46fff0ef451b701bcd
title: Tarefa 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Sarah está disponível para falar com Tom?

## --answers--

Não, ela está ocupada e não quer saber dos problemas dele.

### --feedback--

Sarah diz que não está ocupada.

---

Sim, ela está disponível e quer saber qual é o problema.

---

Não, ela não pode falar agora ela tem seus próprios problemas.

### --feedback--

Sarah menciona que ela não está ocupada.

---

Sim, mas só por um momento porque ela tem seus próprios problemas.

### --feedback--

Sarah não limita o tempo; ela simplesmente afirma que não está ocupada.

## --video-solution--

2

# --explanation--

Em vez de dizer diretamente que ela está livre, Sarah usa a forma negativa `I'm not busy` para enfatizar que ela tem tempo para ajudar. 

Esta é uma forma educada e indireta de oferecer disponibilidade em inglês, comumente usada para tornar a conversa mais diplomática.

A frase de acompanhamento dela, `What's the problem?`, confirma que ela está disposta a ajudar convidando Tom a explicar o problema.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
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
      "startTimestamp": 0,
      "finishTimestamp": 6.5
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
