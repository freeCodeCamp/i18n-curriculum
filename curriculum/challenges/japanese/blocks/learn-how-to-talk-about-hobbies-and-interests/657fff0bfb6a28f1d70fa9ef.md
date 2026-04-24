---
id: 657fff0bfb6a28f1d70fa9ef
title: タスク 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

`I appreciate it, but...` は、申し出や好意に感謝を示しつつ、丁寧に断ったり、自分の制限や好みを伝えたりするために使います。

たとえば、友達がコーディングチャレンジを手伝ってくれると言ったとき、感謝しつつもまず自分でやってみたい場合、`I appreciate it, but I want to give it a shot by myself first` と言うかもしれません。

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

この言葉は感謝やありがたみを示すときによく使われます。

---

`but`

### --feedback--

この言葉は、すでに述べたことと対照的な節やフレーズを導入するときに使われます。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
