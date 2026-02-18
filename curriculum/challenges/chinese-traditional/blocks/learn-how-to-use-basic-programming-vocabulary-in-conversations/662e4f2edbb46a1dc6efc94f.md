---
id: 662e4f2edbb46a1dc6efc94f
title: 任務 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` 用來描述經常發生或在許多人之間廣泛共享的事物。例如，`Colds are a common illness during the winter.` 這表示在那個季節許多人面臨的常見健康問題。

`Challenge` 指的是一項需要特別努力才能完成的任務或情況，因為它很困難。例如，`Learning to ride a bike was a big challenge for her at first.` 這句話描述了學習騎腳踏車一開始帶來的困難。

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

這個形容詞描述在一個群組中經常發生或通常出現的事物。

---

`challenge`

### --feedback--

這個名詞指的是一個需要努力解決或克服的困難任務或問題。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
