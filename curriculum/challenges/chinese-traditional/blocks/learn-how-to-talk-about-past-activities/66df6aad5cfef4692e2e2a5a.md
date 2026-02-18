---
id: 66df6aad5cfef4692e2e2a5a
title: 任務 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

一個表示兩個動作同時發生或一個動作依賴另一個動作的字。

---

`more`

### --feedback--

一個顯示較大量或數字的字。

---

`users`

### --feedback--

一個取用正在瀏覽更新後介面的人員的字。

---

`navigate`

### --feedback--

表示在某物內移動或瀏覽的字、單字，例如網站或應用程式。

# --explanation--

`As` 可以用來表示「當…的同時」或「當…時」，表示一個動作會在另一個動作進行時發生。例如：

- `As I was walking home, they called me.`－他們在你走回家的時候呼叫你。

- 你在練習更多時會變得更擅長編碼。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
