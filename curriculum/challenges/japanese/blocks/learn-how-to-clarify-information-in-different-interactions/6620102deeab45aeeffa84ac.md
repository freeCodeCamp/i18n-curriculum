---
id: 6620102deeab45aeeffa84ac
title: タスク 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

人の目の色を説明するときは、通常、最初に色で識別します。一般的な目の色は `black`、`brown`、`blue`、`green` です。色によっては `white` または `black` の傾向があります（色自体が強いか弱いか）。この場合、色の前に `light`（`white` の傾向がある）や `dark`（`black` の傾向がある）という言葉を加えて表現できます。もう一つ、他人の目を識別するために通常使う特徴は形で、円に近い場合は `round`、線に近い場合は `narrow` です。最後に、目の大きさで表現することもでき、大きい場合は `large`、そうでない場合は `small` です。トム はまた意見を表現しており、リサ の目はエネルギーと活力に満ちていると言っています。この場合、目は `bright` と言います。

`hair` と同様に、人の目を表す形容詞も英語では順序があります。最初に意見を表現し、次に大きさ、次に形、最後に色（`light` または `dark` があってもなくてもよい）を述べます。

例：`Tom has beautiful, small, narrow, light green eyes.`

では、トム が リサ の目を説明する内容を聞いて、空欄を埋めてください。

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

トム は最初に意見を述べています。リサ の目はエネルギーに満ちていると言っています。

---

`brown`

### --feedback--

トム は最後に リサ の目の色について話しています。`black` に近い色合いで、`blue` でも `green` でもありません。

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
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
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
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
