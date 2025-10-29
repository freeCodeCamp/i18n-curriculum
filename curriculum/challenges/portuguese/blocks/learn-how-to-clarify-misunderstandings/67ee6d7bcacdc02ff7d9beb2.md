---
id: 67ee6d7bcacdc02ff7d9beb2
title: Tarefa 69
challengeType: 22
dashedName: task-69
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Esta palavra é usada para falar sobre a existência de algo ou para dizer que algo está presente ou acontecendo.É a contração de `there is`.

---

`problem`

### --feedback--

Esta palavra se refere a um problema ou dificuldade que precisa ser resolvido ou corrigido.

---

`with`

### --feedback--

Esta preposição mostra a relação ou conexão entre duas coisas.

---

`event handling`

### --feedback--

Esta frase de duas palavras refere-se à forma como o software ou sites respondem a ações, como cliques ou pressionamentos de tecla, realizados pelo usuário. A segunda palavra termina com `-ing`.

# --explanation--

`There's a problem with` é usado para descrever que algo não está funcionando corretamente.Significa que há um problema ou dificuldade relacionado a uma coisa específica.Por exemplo:

`There's a problem with the network.` – Isso significa que a rede não está funcionando corretamente.

`Event handling` refere-se a como um programa ou site gerencia ações do usuário como cliques, pressionamentos de teclado ou movimentos do mouse.Por exemplo:

`There's an issue with event handling.` - Isso significa que o software não está respondendo corretamente às ações do usuário.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
