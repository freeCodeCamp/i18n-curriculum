---
id: 675ecedbb04f6ca6dd620f0e
title: 작업 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

이것은 해커가 두 사람 또는 시스템 사이에 몰래 끼어드는 사이버 공격 유형입니다. 해커는 아무도 모르게 공유되는 정보를 보고, 변경하거나 훔칠 수 있습니다. 복합어이므로 `-`를 사용하세요. 첫 번째와 네 번째 단어의 첫 글자는 대문자입니다.

---

`attacks`

### --feedback--

이 단어의 복수형은 해커나 범죄자가 컴퓨터 시스템을 해치거나 정보를 훔치거나 문제를 일으키는 행위를 의미합니다.

# --explanation--

`Man-in-the-Middle` (또는 `MITM`)는 해커가 통신하는 두 사람 또는 시스템 사이에 몰래 끼어드는 공격 유형입니다. 해커는 아무도 모르게 공유되는 정보를 듣거나 변경합니다. 예를 들어:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - 해커가 은행인 척하며 정보를 가로채 사용자의 로그인 자격 증명을 훔쳤습니다. 이를 통해 사용자가 모르는 사이에 은행 계좌에 접근할 수 있었습니다.

`Attacks`는 해커가 컴퓨터 시스템을 해치거나 정보를 훔치거나 문제를 일으키는 행위입니다. 예를 들어:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - 해커가 웹사이트에 너무 많은 가짜 트래픽을 보내 사이트가 다운되거나 느려지게 했습니다. 이로 인해 실제 사용자가 접근하지 못해 서비스가 중단되었습니다.

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
