---
id: 6903d3c4ccae5fffec5f3cbc
title: 任务 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Mateo 的国籍是什么？

## --answers--

`Chileno`

### --feedback--

此选项指的是来自智利的某人。

---

`Peruano`

### --feedback--

这个词描述一个来自秘鲁的人。

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

这指的是一位来自哥伦比亚的女性，结尾的 `-a` 表示女性形式，这与 Mateo 不匹配。

## --video-solution--

3

# --explanation--

`Soy`（"I am"）来自动词 `ser`，用于表达同一性、国籍或职业。例如：

- `Soy chilena.` – 我是智利人。（女性）

- `Soy chileno.` – 我是智利人。（男性）

- `Soy puertorriqueña` - 我是波多黎各人。（女性）

- `Soy puertorriqueño` - 我是波多黎各人。（男性）

- `Soy canadiense.` – 我是加拿大人。（中性）

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
