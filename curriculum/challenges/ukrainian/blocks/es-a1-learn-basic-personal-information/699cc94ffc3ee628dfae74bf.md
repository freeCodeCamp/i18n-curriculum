---
id: 699cc94ffc3ee628dfae74bf
title: Завдання 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` походить від дієслова `ser` і використовується, щоб ідентифікувати або представити щось. Наприклад:

- `Es mi número.` — це моє число.
  
- `Es mi correo.` — це моя е-пошта.

Коли вимовляють адресу е-пошти, певні символи проговорюють вголос:

`Punto` використовується для символу `.`. Наприклад:

`ana.lopez` читається як `ana punto lopez`.

`Arroba` використовується для символу `@`. Наприклад:

`ana.lopez@ejemplo.com` читається як `ana punto lopez arroba ejemplo punto com`.

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Ця форма `ser` використовується, щоб представити або ідентифікувати щось.

---

`punto`

### --feedback--

Це слово використовується, коли вимовляють символ `.` в адресі е-пошти.

---

`arroba`

### --feedback--

Це слово використовується, коли вимовляють символ `@`.

---

`punto`

### --feedback--

Це слово знову з’являється перед фінальними літерами `p r`.

# --explanation--

Повне речення таке:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` вводить інформацію.

`Punto` представляє символ `.`

`Arroba` представляє символ `@`

Ці слова часто використовують, коли вголос вимовляють адресу е-пошти.

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
