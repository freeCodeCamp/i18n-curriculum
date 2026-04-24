---
id: 662e4f2edbb46a1dc6efc94f
title: タスク 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` は、頻繁に起こることや多くの人に広く共有されていることを表すために使われます。例えば、`Colds are a common illness during the winter.` これは、その時期に多くの人が直面する一般的な健康問題であることを意味します。

`Challenge` は、困難であるために特別な努力を要する課題や状況を指します。例えば、`Learning to ride a bike was a big challenge for her at first.` この文は、自転車の乗り方を学ぶことが最初は難しかったことを説明しています。

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

この形容詞は、ある集団の中で頻繁に起こる、または通常のことであるものを表します。

---

`challenge`

### --feedback--

この名詞は、解決や克服に努力を要する困難な課題や問題を指します。

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
