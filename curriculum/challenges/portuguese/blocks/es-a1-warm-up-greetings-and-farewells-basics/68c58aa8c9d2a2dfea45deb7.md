---
id: 68c58aa8c9d2a2dfea45deb7
title: Tarefa 7
challengeType: 19
dashedName: task-7
lang: es
---

<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena está se despedindo, mas ela espera ver você novamente.

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Que frase Elena usa para dizer "see you later"?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Esta é uma despedida, mas é mais definitiva. O orador usa uma frase diferente.

---

`Chao`

### --feedback--

Esta também é uma forma informal de dizer adeus, mas não é a que está no áudio.

---

`¡Hola!`

### --feedback--

Isso significa "Hi", uma saudação geral, mas não é o que Elena diz.

## --video-solution--

1

# --explanation--

`Hasta luego` é uma forma comum de dizer adeus em espanhol. Isso se traduz como "See you later".

É usado quando você espera ver a pessoa novamente, mas não necessariamente em breve. Por exemplo:  

`Hasta luego, Marta.` – Até mais, Marta.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
