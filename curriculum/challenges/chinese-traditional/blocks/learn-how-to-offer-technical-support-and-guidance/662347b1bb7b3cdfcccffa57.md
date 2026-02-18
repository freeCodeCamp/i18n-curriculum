---
id: 662347b1bb7b3cdfcccffa57
title: 任務 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` 是動詞 `to hear` 的過去式，意思是透過耳朵察覺某事或被告知某事。 例如，`I heard the news yesterday` 意味著你在前一天得知了這個消息。

軟體背景關係中的 `authentication module` 是系統中負責驗證使用者身份的零件。它經常用於登入系統。 例如，`The authentication module checks the username and password` 意味著它會驗證使用者的憑證。

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

它是 `to hear` 的過去式，表示 Brian 已經得知 Sophie 的任務。

---

`fixing`

### --feedback--

它是指修復或解決軟體中問題（錯誤）的行為。

---

`authentication`

### --feedback--

它是指在軟體模組中驗證使用者身份的處理程序。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
