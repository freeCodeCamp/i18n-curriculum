---
id: 68da8dffcffd794e83de9d6c
title: タスク 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

チェン・ナは複数の人に対してどのように挨拶していますか？

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

これは一人に対する挨拶ですが、チェン・ナは複数の人に挨拶しています。

---

`您们好 (nín men hǎo)`

### --feedback--

この形は中国語では標準的ではありません。

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

これも「みなさん、こんにちは」という意味ですが、チェン・ナは別の表現を使っています。

## --video-solution--

3

# --explanation--

この質問はチェン・ナが**複数の人に対して**どのように挨拶しているかを尋ねています。

`你好 (nǐ hǎo)`は一人に対する挨拶で、`您好 (nín hǎo)`は一人に対する丁寧な挨拶です。`您们好 (nín men hǎo)`は中国語では標準的ではなく、`您 (nín)`は丁寧な単数形で、通常は複数形にはなりません。

複数の人に挨拶する正しい表現は`你们好 (nǐ men hǎo)`で、「みなさん、こんにちは」と言う一般的な方法です。`大家好 (dà jiā hǎo)`は別の複数への挨拶方法で、今後学習していきます。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
