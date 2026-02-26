---
id: 699cc94ffc3ee628dfae74bf
title: 任务 31
challengeType: 22
dashedName: task-31
lang: es
---

<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` 来自动词 `ser`，用于识别或介绍某物。例如：

- `Es mi número.` - 它是我的号码。
  
- `Es mi correo.` - 这是我的电子邮件。

拼写电子邮件 `address` 时，某些 `symbol` 会被大声读出：

`Punto` 用于符号 `.` 例如： 

`ana.lopez` 读取为 `ana punto lopez`。

`Arroba` 用于符号 `@`。例如： 

`ana.lopez@ejemplo.com` 读取为 `ana punto lopez arroba ejemplo punto com`。

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

这种 `ser` 形式用于展示或识别某物。

---

`punto`

### --feedback--

这个词用于在电子邮件 `address` 中说出符号 `.`。

---

`arroba`

### --feedback--

当说到符号 `@` 时使用这个词。

---

`punto`

### --feedback--

这个词在最后的字母 `p r` 之前再次出现。

# --explanation--

完整的句子是：

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` 介绍了信息。

`Punto` 表现符号 `.`

`Arroba` 表现符号 `@`

这些词通常在拼读电子邮件 `address` 时使用。

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

