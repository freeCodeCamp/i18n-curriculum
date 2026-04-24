---
id: 662347b1bb7b3cdfcccffa57
title: タスク 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` は動詞 `to hear` の過去形で、耳で何かを知覚することや、何かを知らされることを意味します。例えば、`I heard the news yesterday` は前日にそのニュースを知ったことを意味します。

ソフトウェアの文脈での `authentication module` は、ユーザーの認証を担当するシステムの一部です。ログインシステムでよく使われます。例えば、`The authentication module checks the username and password` はユーザーの資格情報を認証することを意味します。

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

これは `to hear` の過去形で、ブライアンがソフィーのタスクについて知らされたことを示しています。

---

`fixing`

### --feedback--

これはソフトウェアのバグを修正または解決する行為を指します。

---

`authentication`

### --feedback--

これはソフトウェアモジュール内でユーザーの認証を行うプロセスを指します。

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
