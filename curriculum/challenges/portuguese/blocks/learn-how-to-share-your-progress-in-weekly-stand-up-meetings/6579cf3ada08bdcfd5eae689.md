---
id: 6579cf3ada08bdcfd5eae689
title: Tarefa 5
challengeType: 19
dashedName: task-5
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

Neste diálogo, Sophie está fazendo uma solicitação para Bob.Compreender a natureza do pedido dela é essencial para uma comunicação e colaboração eficazes da equipe, especialmente em ambientes técnicos onde resolver problemas juntos é comum.

# --questions--

## --text--

O que Sophie está pedindo em sua conversa com Bob?

## --answers--

Ela está pedindo ajuda com um problema de programação

---

Ela quer que Bob resolva o problema para ela

### --feedback--

Sophie está pedindo ajuda, não necessariamente para que Bob resolva tudo sozinho.

---

Ela está oferecendo ajuda para Bob com um problema

### --feedback--

Sophie é quem está solicitando assistência, não oferecendo-a.

---

Ela está discutindo um projeto futuro

### --feedback--

A solicitação da Sophie é sobre um problema atual de codificação que ela está enfrentando, não um projeto futuro.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
