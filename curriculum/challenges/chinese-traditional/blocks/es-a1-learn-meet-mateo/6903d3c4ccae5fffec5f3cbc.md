---
id: 6903d3c4ccae5fffec5f3cbc
title: 任務 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Mateo 的國籍是什麼？

## --answers--

`Chileno`

### --feedback--

這個選項取用來自智利的人。

---

`Peruano`

### --feedback--

這個字描述一個來自秘魯的人。

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

這是指來自哥倫比亞的女性，而結尾的 `-a` 顯示女性形式，與 Mateo 不符。

## --video-solution--

3

# --explanation--

`Soy`（「我是」）來自動詞 `ser`，用於表達身份、國籍或職業。<dfn>例如</dfn>：

- `Soy chilena.` – 我是智利人。（女性）

- `Soy chileno.`－我是智利人。（男性）

- `Soy puertorriqueña`－我是波多黎各人。（女性）

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
