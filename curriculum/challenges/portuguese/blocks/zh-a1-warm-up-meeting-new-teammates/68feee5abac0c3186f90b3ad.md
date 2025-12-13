---
id: 68feee5abac0c3186f90b3ad
title: Tarefa 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Qual opção é o Pinyin correto para o que Wang Hua diz?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

O tom da primeira sílaba não corresponde ao que você ouve no áudio.

---

`mín zi`

### --feedback--

O final da primeira sílaba não é o que ela diz.

---

`míng zhī`

### --feedback--

A inicial da segunda sílaba é diferente do que você ouve no áudio.

## --video-solution--

1

# --explanation--

Wang Hua está dizendo `míng zi`. A primeira sílaba tem uma final nasal `ing` e um tom ascendente. A segunda sílaba é uma sílaba inteira com tom neutro, pronunciada suavemente.

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_warmup_vocabulary.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
