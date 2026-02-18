---
id: 675ecedbb04f6ca6dd620f0e
title: 任務 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

這是一種網路攻擊型別，駭客秘密地介入兩個人或系統之間的通訊。駭客可以在沒有人知道的情況下查看、更改或竊取被分享的資訊。這是一個複合字，記得使用 `-`。第一個字和第四個字的首字母要大寫。

---

`attacks`

### --feedback--

這個字的複數形式表示駭客或犯罪分子對電腦系統造成傷害、竊取資訊或引起問題的行為。

# --explanation--

`Man-in-the-Middle`（或 `MITM`）是一種攻擊型別，駭客會秘密介入兩個正在通訊的人或系統之間。駭客會在沒有人知道的情況下竊聽或更改所共享的資訊。例如：

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - 駭客假裝成銀行，攔截資訊並竊取使用者的登入憑證。這使得駭客能在使用者不知情的情況下存取銀行帳戶。

`Attacks` 是駭客對電腦系統造成傷害、竊取資訊或引起問題的行為。例如：

`The website was unavailable for hours because of a cyber attack that overloaded its server.`－這表示駭客傳送過多的假流量到該網站，使其當機或變慢。這阻止了真實使用者存取，造成中斷。

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
