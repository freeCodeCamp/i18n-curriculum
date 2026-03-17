---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Завдання 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget` — це невеликий інструмент або пристрій, часто винахідливий або новаторський, який виконує певну функцію або полегшує щось.

У технологіях гаджети можуть включати такі речі, як смартфони, смарт-годинники або будь-який крутий, інноваційний електронний пристрій.

Наприклад, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Це слово означає, що щось викликає почуття або реакцію. Тут воно використовується, щоб розповісти, що захоплює Боба у технологіях. Воно відмінюється в третій особі однини.

---

`those`

### --feedback--

Це слово використовується, щоб вказати на конкретні речі, про які йде мова, у цьому випадку — гаджети. Множина від `that`.

---

`gadgets`

### --feedback--

Це слово позначає невеликі електронні пристрої або інструменти, які є корисними або цікавими. Часто використовується для опису крутих технічних речей. Воно в множині.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
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
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
