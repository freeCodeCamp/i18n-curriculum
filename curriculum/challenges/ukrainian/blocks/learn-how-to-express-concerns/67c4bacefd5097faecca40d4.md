---
id: 67c4bacefd5097faecca40d4
title: Завдання 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що хоче дізнатися Боб?  

## --answers--

Чи слід скасувати проєкт.  

### --feedback--

Боб не питає про скасування проєкту.  

---

Чи буде краще працювати менше годин.  

### --feedback--

Боб пропонує працювати більше годин, а не менше.  

---

Чи команда вже вирішила проблему.  

### --feedback--

Боб питає, чи допоможе його пропозиція, а не чи проблема вже вирішена.  

---

Чи покращить ситуацію робота понаднормово.  

## --video-solution--

4  

# --explanation--

Використання заперечень у запитаннях з допоміжними або модальними дієсловами (такими як `wouldn't`, `isn't`, `doesn't`), які вимагають прямих `yes`/`no` відповідей, свідчить про те, що мовник очікує позитивної відповіді — у цьому випадку Боб припускає, що робота понаднормово допоможе. Інший приклад:

`Doesn't this plan seem like a good idea?` - Мовник очікує, що слухач погодиться, що план хороший.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
