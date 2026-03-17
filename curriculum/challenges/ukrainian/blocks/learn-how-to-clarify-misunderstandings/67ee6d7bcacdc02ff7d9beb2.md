---
id: 67ee6d7bcacdc02ff7d9beb2
title: Завдання 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Це слово використовується, щоб говорити про існування чогось або сказати, що щось присутнє чи відбувається. Це скорочення від `there is`.

---

`problem`

### --feedback--

Це слово означає проблему або складність, яку потрібно розв’язати чи виправити.

---

`with`

### --feedback--

Цей прийменник показує зв’язок або відношення між двома речами.

---

`event handling`

### --feedback--

Цей двослівний вираз описує, як програмне забезпечення або вебсайти реагують на дії користувача, такі як натискання чи введення з клавіатури. Друге слово закінчується на `-ing`.

# --explanation--

`There's a problem with` використовується, щоб описати, що щось працює неправильно. Це означає, що є проблема або складність, пов’язана з певною річчю. Наприклад:

`There's a problem with the network.` – це означає, що мережа працює неправильно.

`Event handling` стосується того, як програма або вебсайт обробляє дії користувача, такі як натискання, клавіатурні команди або рухи миші. Наприклад:

`There's an issue with event handling.` – це означає, що програмне забезпечення неправильно реагує на дії користувача.

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
