---
id: 655b67f02eecf57fa75ceecf
title: タスク 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

`stay` は、特定の状態や状況を維持することを示すために使われます。これは、自分自身をある状況に保つための指示やアドバイスでよく使われます。例えば：

- `Stay safe online.` - インターネットを使う際に安全を保ち続ける。

- `Stay calm during the test.` - 落ち着いた状態を維持し続ける。

- `Stay focused on your work.` - 仕事に注意を払い続ける。

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

この動詞は、ソフィーが積極的にチームに支援や助けを提供していることを示しています。`-ing`で終わります。

---

`stay`

### --feedback--

この言葉は、ここではオンラインで安全でいるという特定の状態を維持することを示唆するために使われています。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
