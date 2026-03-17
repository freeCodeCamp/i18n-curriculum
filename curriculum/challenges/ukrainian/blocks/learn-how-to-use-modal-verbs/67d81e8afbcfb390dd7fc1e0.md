---
id: 67d81e8afbcfb390dd7fc1e0
title: Завдання 133
challengeType: 19
dashedName: task-133
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Джейк ще цього не перевіряв і каже, що команда має зосередитися на чомусь іншому. Що б він сказав?  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

ENcd1493b2

---

`I already checked, and everything looks fine.`

### --audio-id--

EN4ec0b91b

### --feedback--

Джейк ще не перевіряв, тому не міг би це підтвердити.

## --video-solution--

1

# --explanation--

Зазвичай пріоритетом є захист критичних систем перед оцінкою окремих файлів.

`Not yet.` означає, що Джейк не перевіряв, які файли були скомпрометовані.

`We should focus on the critical systems first.` означає, що замість перегляду файлів команда має пріоритетно захищати важливі частини системи.

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
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
