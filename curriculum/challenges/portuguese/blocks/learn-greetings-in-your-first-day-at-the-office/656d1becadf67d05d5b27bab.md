---
id: 656d1becadf67d05d5b27bab
title: Tarefa 149
challengeType: 19
dashedName: task-149
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

Assim como quando você aprendeu sobre o pronome `he`, pronomes como `she` são usados para se referir a indivíduos do sexo feminino.Eles ajudam a evitar repetições na conversa.Veja esta parte do diálogo:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

Aqui, `she` é usado por Brian para se referir a Sophie.Em vez de repetir o nome Sophie, Brian usa o pronome `she` para tornar a conversa mais fluida e evitar repetições.

# --questions--

## --text--

No diálogo, qual palavra Brian usa para se referir a Sophie sem repetir o nome dela?

## --answers--

`he`

### --feedback--

`He` refere-se a um masculino.

---

`they`

### --feedback--

`They` é plural e se refere a mais de uma pessoa.

---

`it`

### --feedback--

`It` é geralmente usado para coisas ou animais.

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
