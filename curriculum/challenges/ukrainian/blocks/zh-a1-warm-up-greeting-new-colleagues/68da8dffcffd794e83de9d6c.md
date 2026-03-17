---
id: 68da8dffcffd794e83de9d6c
title: Завдання 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Прослухайте аудіозапис і дайте відповідь на запитання нижче.

# --questions--

## --text--

Що каже Chen Na, щоб привітатися з групою людей?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Це привітання для однієї особи, але Chen Na вітається з кількома.

---

`您们好 (nín men hǎo)`

### --feedback--

Ця форма не є стандартною в китайській мові.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Це також означає "Привіт усім", але Chen Na використовує іншу фразу.

## --video-solution--

3

# --explanation--

Питання запитує, що каже Chen Na, щоб привітатися з **групою людей**.

`你好 (nǐ hǎo)` — це привітання для однієї особи, тоді як `您好 (nín hǎo)` — ввічливе привітання для однієї особи. `您们好 (nín men hǎo)` не є стандартним у китайській; `您 (nín)` — ввічлива форма для однини, зазвичай не вживається у множині.

Правильна фраза для привітання групи — `你们好 (nǐ men hǎo)`, це загальний спосіб сказати "привіт усім". `大家好 (dà jiā hǎo)` — інший спосіб привітатися з групою, який ви вивчите пізніше.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
