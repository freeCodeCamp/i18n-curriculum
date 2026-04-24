---
id: 679d26afcebc4ea8a9478fbf
title: タスク 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェームズはソフトウェアを更新する必要があると確信していますか？

## --answers--

あまりそうではありません。彼はマリアの意見を求めています。

---

はい、彼はすでに更新することを決めています。

### --feedback--

ジェームズはマリアに尋ねているので、まだ決めていない可能性が高いです。

---

はい、彼はすでにソフトウェアの更新を始めています。

### --feedback--

ジェームズはソフトウェアを更新すべきかどうかを尋ねています。

---

逆に、彼は更新すべきではないと確信しています。

### --feedback--

ジェームズはその考えを完全に否定しているわけではなく、実際にはマリアの意見を求めています。

## --video-solution--

1

# --explanation--

`To update` は、新しいバージョンをリリースしてソフトウェアを修正または改善することを意味します。更新にはバグ修正、新機能、またはパフォーマンスの向上が含まれる場合があります。例えば：

`The company released an update to fix security vulnerabilities in the app.` - これはセキュリティ問題に対処するために新しいバージョンがリリースされたことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
