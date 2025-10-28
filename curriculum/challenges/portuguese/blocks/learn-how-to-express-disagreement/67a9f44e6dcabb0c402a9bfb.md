---
id: 67a9f44e6dcabb0c402a9bfb
title: Tarefa 5
challengeType: 19
dashedName: task-5
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Bob quer saber?

## --answers--

Se os funcionários já compraram móveis de escritório.

### --feedback--

Bob não está pedindo confirmação das compras.

---

Quanto custa mobília de escritório.

### --feedback--

Bob não pergunta sobre o preço.

---

Se a empresa aumentará o `stipend`.

### --feedback--

Bob não está discutindo mudanças no `stipend`.

---

Se Anna acha que usar o `stipend` para móveis de escritório é uma boa ideia.

## --video-solution--

4

# --explanation--

Bob pergunta, `Do you think that's a good idea?` Esta é uma forma de pedir a opinião de alguém sobre uma sugestão ou plano.Aqui estão outras formas de pedir uma opinião:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

Neste diálogo, Bob está se referindo aos funcionários que usam o subsídio de trabalho remoto para móveis de escritório.Em vez de expressar sua própria opinião, ele está perguntando a Anna o que ela pensa.

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
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
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
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
