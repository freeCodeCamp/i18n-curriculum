---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: 任務 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget` 是一種小型工具或裝置，通常巧妙或新穎，能執行特定的函式或使某事變得更簡單。 

在科技領域中，裝置可以包括智慧型手機、智慧手錶或任何酷炫且創新的電子裝置。 

例如，`My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

這個字表示某事物引起一種感覺或反應。在這裡，它用來說明什麼讓 Bob 對科技感到興奮。它以第三人稱單數變化。

---

`those`

### --feedback--

這個字用來指出正在談論的特定事物，在這個例子中是指那些裝置。`that` 的複數形式。

---

`gadgets`

### --feedback--

這個字是指有用或有趣的小型電子裝置或工具。它經常用來談論酷炫的科技項目。它是複數形式。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
