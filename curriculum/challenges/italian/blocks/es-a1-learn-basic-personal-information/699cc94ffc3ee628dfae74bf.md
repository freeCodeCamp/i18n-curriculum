---
id: 699cc94ffc3ee628dfae74bf
title: Attività 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` deriva dal verbo `ser` ed è usato per identificare o presentare qualcosa. Per esempio:

- `Es mi número.` - È il mio numero.
  
- `Es mi correo.` - È la mia email.

Quando si compone a voce un indirizzo email, alcuni simboli si pronunciano ad alta voce:

`Punto` si usa per il simbolo `.`. Per esempio:

`ana.lopez` si legge `ana punto lopez`.

`Arroba` si usa per il simbolo `@`. Per esempio:

`ana.lopez@ejemplo.com` si legge `ana punto lopez arroba ejemplo punto com`.

# --instructions--

Ascolta l’audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Questa forma di `ser` si usa per presentare o identificare qualcosa.

---

`punto`

### --feedback--

Questa parola si usa quando si pronuncia il simbolo `.` in un indirizzo email.

---

`arroba`

### --feedback--

Questa parola si usa quando si pronuncia il simbolo `@`.

---

`punto`

### --feedback--

Questa parola ricompare prima delle ultime lettere `p r`.

# --explanation--

La frase completa è:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` introduce l’informazione.

`Punto` rappresenta il simbolo `.`

`Arroba` rappresenta il simbolo `@`

Queste parole sono comunemente usate quando si compone a voce un indirizzo email.

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
