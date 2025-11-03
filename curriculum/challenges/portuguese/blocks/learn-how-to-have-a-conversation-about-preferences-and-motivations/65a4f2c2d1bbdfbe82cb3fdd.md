---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Tarefa 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

Um `gadget` é uma pequena ferramenta ou dispositivo, frequentemente inteligente ou inovador, que executa uma função específica ou facilita algo. 

Em tecnologia, gadgets podem incluir coisas como smartphones, smartwatches ou qualquer dispositivo eletrônico inovador e interessante. 

Por exemplo, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Esta palavra significa que algo causa um sentimento ou uma reação. Aqui, é usado para falar sobre o que entusiasma Bob em relação à tecnologia. Está conjugado na terceira pessoa do singular.

---

`those`

### --feedback--

Esta palavra é usada para apontar coisas específicas que estão sendo mencionadas, neste caso, os gadgets. Plural de `that`.

---

`gadgets`

### --feedback--

Esta palavra se refere a pequenos dispositivos eletrônicos ou ferramentas que são úteis ou interessantes. É frequentemente usado para falar sobre itens tecnológicos legais.  It is in plural.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
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
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
