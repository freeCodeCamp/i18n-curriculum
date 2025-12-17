---
id: 68da8dffcffd794e83de9d6c
title: Tarefa 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Chen Na está dizendo para cumprimentar um grupo de pessoas?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Esta é uma saudação para uma pessoa, mas Chen Na está saudando mais de uma.

---

`您们好 (nín men hǎo)`

### --feedback--

Este formulário não é padrão em chinês.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Isso também significa "Hello, everyone.", mas Chen Na usa uma frase diferente.

## --video-solution--

3

# --explanation--

A pergunta é o que Chen Na está dizendo para cumprimentar **um grupo de pessoas**.

`你好 (nǐ hǎo)` é uma saudação para uma pessoa, enquanto `您好 (nín hǎo)` é uma saudação educada para uma pessoa. `您们好 (nín men hǎo)` não é padrão em chinês; `您 (nín)` é singular educado, não geralmente pluralizado.

A frase correta para cumprimentar um grupo é `你们好 (nǐ men hǎo)`, que é uma forma comum de dizer "olá, pessoal". `大家好 (dà jiā hǎo)` é outra forma de cumprimentar um grupo, que você aprenderá conforme avançar.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
