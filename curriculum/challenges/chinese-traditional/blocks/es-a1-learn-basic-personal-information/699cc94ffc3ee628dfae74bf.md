---
id: 699cc94ffc3ee628dfae74bf
title: 任務 31
challengeType: 22
dashedName: task-31
lang: es
---

<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` 來自動詞 `ser`，用於識別或介紹某事物。 例如：

- `Es mi número.`－這是我的號碼。
  
- `Es mi correo.`－這是我的電子郵件。

在拼寫電子郵件位址時，某些符號會被唸出來：

`Punto` 用於符號 `.` 例如： 

`ana.lopez` 讀作 `ana punto lopez`。

`Arroba` 用於符號 `@`。例如： 

`ana.lopez@ejemplo.com` 讀作 `ana punto lopez arroba ejemplo punto com`。

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

這種 `ser` 用於呈現或識別某物。

---

`punto`

### --feedback--

這個字用於說出電子郵件 `address` 中的符號 `.`。

---

`arroba`

### --feedback--

這個字用於說出符號 `@` 時。

---

`punto`

### --feedback--

這個字在最後的字母 `p r` 之前再次出現。

# --explanation--

完整句子是：

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` 介紹該資訊。

`Punto` 表述符號 `.`

`Arroba` 表述符號 `@`

這些字通常用於拼讀電子郵件 `address`。

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

