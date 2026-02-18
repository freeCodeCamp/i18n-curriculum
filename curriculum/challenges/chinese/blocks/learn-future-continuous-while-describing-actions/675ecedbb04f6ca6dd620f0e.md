---
id: 675ecedbb04f6ca6dd620f0e
title: 任务 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

这是一种网络攻击类型，黑客秘密地介入两个正在相互通信的人或系统之间。黑客可以在无人知晓的情况下查看、更改或窃取共享的信息。这是一个复合词，记得使用 `-`。第一个和第四个单词的首字母大写。

---

`attacks`

### --feedback--

这个词的复数形式表示黑客或犯罪分子对计算机系统进行破坏、窃取信息或制造问题的行为。

# --explanation--

`Man-in-the-Middle`（或 `MITM`）是一种攻击类型，黑客秘密地介入两个正在通信的人或系统之间。黑客在无人知晓的情况下监听或更改正在共享的信息。例如：

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` —— 黑客假装成银行，拦截了信息，并窃取了用户的登录凭证。这使得黑客能够在用户不知情的情况下访问银行账户。

`Attacks` 是黑客对计算机系统进行破坏、窃取信息或制造问题的行为。例如：

`The website was unavailable for hours because of a cyber attack that overloaded its server.`——这表明黑客向网站发送了过多的假流量，导致其崩溃或变慢。这阻止了真实用户访问它，造成了中断。

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
