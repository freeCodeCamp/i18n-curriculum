---
id: 699cc94ffc3ee628dfae74bf
title: Tarefa 31
challengeType: 22
dashedName: task-31
lang: es
---

<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` vem do verbo `ser` e é usado para identificar ou apresentar algo. Por exemplo:

- `Es mi número.` - É o meu número.
  
- `Es mi correo.` - É meu e-mail.

Ao soletrar um endereço de e-mail, certos símbolos são pronunciados em voz alta:

`Punto` é usado para o símbolo `.` Por exemplo: 

`ana.lopez` é lido como `ana punto lopez`.

`Arroba` é usado para o símbolo `@`. Por exemplo: 

`ana.lopez@ejemplo.com` é lido como `ana punto lopez arroba ejemplo punto com`.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Esta forma de `ser` é usada para apresentar ou identificar algo.

---

`punto`

### --feedback--

Esta palavra é usada ao dizer o símbolo `.` em um endereço de e-mail.

---

`arroba`

### --feedback--

Esta palavra é usada ao dizer o símbolo `@`.

---

`punto`

### --feedback--

Esta palavra aparece novamente antes das letras finais `p r`.

# --explanation--

A frase completa é:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` introduz a informação.

`Punto` representa o símbolo `.`

`Arroba` representa o símbolo `@`

Essas palavras são comumente usadas ao soletrar um endereço de e-mail em voz alta.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```

