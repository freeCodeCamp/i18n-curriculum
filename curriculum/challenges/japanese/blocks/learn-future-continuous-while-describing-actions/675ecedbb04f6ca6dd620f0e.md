---
id: 675ecedbb04f6ca6dd620f0e
title: タスク 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

これは、ハッカーが2人または2つのシステムの間にこっそり入り込み、やり取りされている情報を誰にも気づかれずに見たり、変更したり、盗んだりするサイバー攻撃の一種です。複合語なので、`-`を使うことを忘れないでください。最初の単語と4番目の単語の頭文字は大文字です。

---

`attacks`

### --feedback--

この単語の複数形は、ハッカーや犯罪者がコンピューターシステムを攻撃したり、情報を盗んだり、問題を引き起こしたりする行為を意味します。

# --explanation--

`Man-in-the-Middle`（または`MITM`）は、ハッカーが通信している2人または2つのシステムの間にこっそり入り込み、共有されている情報を誰にも気づかれずに聞いたり変更したりする攻撃の一種です。例えば：

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - ハッカーが銀行を装い、情報を傍受してユーザーのログイン情報を盗みました。これにより、ユーザーが気づかないうちに銀行口座にアクセスできました。

`Attacks`は、ハッカーがコンピューターシステムを攻撃したり、情報を盗んだり、問題を引き起こしたりする行為です。例えば：

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - ハッカーがウェブサイトに大量の偽のトラフィックを送ってクラッシュや遅延を引き起こしました。これにより、本物のユーザーがアクセスできなくなり、混乱が生じました。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
