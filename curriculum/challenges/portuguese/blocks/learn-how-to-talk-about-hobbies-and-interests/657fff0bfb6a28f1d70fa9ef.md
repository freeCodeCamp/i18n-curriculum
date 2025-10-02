---
id: 657fff0bfb6a28f1d70fa9ef
title: Tarefa 80
challengeType: 22
dashedName: task-80
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

A expressão `I appreciate it, but` é usada para expressar gratidão por uma oferta ou gesto enquanto recusa educadamente ou declara uma limitação ou preferência pessoal.

Por exemplo, se seu amigo se oferecer para ajudar você com o desafio de programação e você estiver agradecido e quiser tentar sozinho primeiro, você pode dizer, `I appreciate it, but I want to give it a shot by myself first.`

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

Esta palavra é frequentemente usada para mostrar agradecimento ou gratidão.

---

`but`

### --feedback--

Esta conjunção é usada para introduzir uma frase ou oração que contrasta com o que já foi mencionado.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
