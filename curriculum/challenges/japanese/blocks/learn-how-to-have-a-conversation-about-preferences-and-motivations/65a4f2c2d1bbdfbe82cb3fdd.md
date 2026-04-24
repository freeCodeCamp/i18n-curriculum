---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: タスク 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget` は、小さな道具や装置で、しばしば巧妙または斬新で、特定の関数を実行したり何かを簡単にしたりします。

テクノロジーの分野では、ガジェットにはスマートフォン、スマートウォッチ、またはクールで革新的な電子機器などが含まれます。

例えば、`My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

この単語は、何かが感情や反応を引き起こすことを意味します。ここでは、ボブがテクノロジーに興奮する理由を話すために使われています。三人称単数形で活用されています。

---

`those`

### --feedback--

この単語は、話題にしている特定のものを指し示すために使われています。ここではガジェットを指します。`that` の複数形です。

---

`gadgets`

### --feedback--

この単語は、小さな電子機器や便利な道具を指します。クールなテクノロジーアイテムについて話すときによく使われます。複数形です。

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
