---
id: 698a5b056fac9afc70ef3cad
title: 任务 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

让我们复习一下你到目前为止学过的一些国家。

| 国家 | 国籍（阴性） | 国籍（阳性） |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

在西班牙语中，国家名称是专有名词，始终以大写字母开头。

注意国籍 `brasileño`/`brasileña` 和 `panameño`/`panameña` 使用了独特的字母 `eñe`（`ñ`）。

Camila 正在练习这些国家中的几个。你能认出它们吗？

# --instructions--

听音频并完成下面的序列。

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

这个国家是南美最大的国家，且以大写字母开头。

---

`Panamá`

### --feedback--

这个国家以著名的运河闻名。记得在最后一个字母 `a` 上加重音符号，并且首字母要大写。

# --explanation--

序列是 `Brasil` - `Colombia` - `Panamá`。

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
