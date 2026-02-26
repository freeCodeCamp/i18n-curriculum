---
id: 699cc94ffc3ee628dfae74bf
title: Tarea 31
challengeType: 22
dashedName: task-31
lang: es
---

<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` proviene del verbo `ser` y se usa para identificar o presentar algo. Por ejemplo:

- `Es mi número.` - Es mi número.
  
- `Es mi correo.` - Es mi correo electrónico.

Al deletrear una dirección de correo electrónico, ciertos símbolos se pronuncian en voz alta:

`Punto` se usa para el símbolo `.` Por ejemplo: 

`ana.lopez` se lee como `ana punto lopez`.

`Arroba` se usa para el símbolo `@`. Por ejemplo: 

`ana.lopez@ejemplo.com` se lee como `ana punto lopez arroba ejemplo punto com`.

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Esta forma de `ser` se usa para presentar o identificar algo.

---

`punto`

### --feedback--

Esta palabra se usa cuando se dice el símbolo `.` en una dirección de correo electrónico.

---

`arroba`

### --feedback--

Esta palabra se usa al decir el símbolo `@`.

---

`punto`

### --feedback--

Esta palabra aparece de nuevo antes de las letras finales `p r`.

# --explanation--

La oración completa es:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` introduce la información.

`Punto` representa el símbolo `.`

`Arroba` representa el símbolo `@`

Estas palabras se usan comúnmente al deletrear una dirección de correo electrónico en voz alta.

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

