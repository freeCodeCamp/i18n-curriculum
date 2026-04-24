---
id: 657cbef9aa43ceba8af6feb4
title: タスク 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

何かをとても好きなとき、「you `enjoy` it」と言えます。これは、何かがあなたを幸せにすることを表す簡単な方法です。

たとえば、「`I enjoy playing video games`」と言えます。これは、ビデオゲームをするのが楽しいという意味です。

会話では、ソフィーがマリアが仕事で楽しんでいることを話しています。

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

この動詞は、マリアが何かを好きで、それをしていると幸せに感じることを意味します。`-s`で終わります。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
