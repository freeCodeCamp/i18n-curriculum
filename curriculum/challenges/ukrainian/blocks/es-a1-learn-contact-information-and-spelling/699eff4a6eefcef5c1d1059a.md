---
id: 699eff4a6eefcef5c1d1059a
title: Завдання 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

Слово `dominio` позначає основну частину веб-адреси, зазвичай розділ, що йде після `@` в е-пошті або після `www` на вебсайті.

Його часто використовують, коли називають або підтверджують е-пошту та URL-адреси. Наприклад:

`El dominio es gmail punto com.` – Домен — gmail.com.

`¿Cuál es el dominio?` – Що таке домен?

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

Це іменник, який позначає основну частину веб- або е-поштової адреси.

# --explanation--

`Dominio` — це іменник, який використовується для позначення доменної частини е-пошти або вебсайту.

Він часто зустрічається, коли люди диктують або підтверджують цифрові контактні дані.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
