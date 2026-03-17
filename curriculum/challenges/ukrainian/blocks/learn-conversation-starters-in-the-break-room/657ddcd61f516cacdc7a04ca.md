---
id: 657ddcd61f516cacdc7a04ca
title: Завдання 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Марія повідомляє Тому про варіанти громадського транспорту, зокрема згадує транспорт, який зупиняється неподалік. Це важливо для пересування містом, особливо до місць, які не в межах пішої доступності.

`Two blocks away` означає, що вам потрібно пройти повз два перехрестя, щоб дістатися до місця. Це коротка прогулянка містом.

`Downtown` — це центр міста, де багато магазинів, ресторанів і зазвичай високі будівлі.

# --questions--

## --text--

Що, за словами Марії, зупиняється за два квартали?

## --answers--

A taxi

### --feedback--

Марія згадує варіант громадського транспорту, а не приватну послугу.

---

A train

### --feedback--

Поїзди зазвичай не зупиняються на кварталах; вони зупиняються на станціях.

---

A bus

---

A bicycle rental

### --feedback--

Прокат зазвичай є стаціонарною послугою, а не тим, що зупиняється. 

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
