---
id: 657ddcd61f516cacdc7a04ca
title: タスク128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

マリアはトムに公共交通機関の選択肢について伝えています。特に近くに停まる交通手段について言及しています。これは、徒歩圏外の場所へ移動する際に重要です。

`Two blocks away` は、目的地までに2つの交差点を通り過ぎる必要があることを意味します。都市内での短い徒歩距離です。

`Downtown` は、多くの店やレストランがあり、通常は高層ビルが立ち並ぶ都市の中心部です。

# --questions--

## --text--

マリアは何が2ブロック先で停まると言っていますか？

## --answers--

タクシー

### --feedback--

マリアは公共交通機関について話しており、個人のサービスではありません。

---

電車

### --feedback--

電車は通常ブロック単位で停まらず、駅で停車します。

---

バス

---

自転車レンタル

### --feedback--

レンタルは通常、固定されたサービスであり、停車するものではありません。

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
