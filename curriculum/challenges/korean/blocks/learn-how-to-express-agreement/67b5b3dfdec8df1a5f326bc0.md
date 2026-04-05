---
id: 67b5b3dfdec8df1a5f326bc0
title: 작업 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

이것은 강하거나 뚜렷하지 않은 것을 의미합니다. 부드럽거나 약해서 바로 눈에 띄지 않을 수 있는 것을 말합니다.

---

`palette`

### --feedback--

이것은 디자인이나 예술 작품에서 사용된 색상의 범위를 가리킵니다. 이 경우 `color palette`는 앱이나 프로젝트 디자인에 선택된 색상들을 의미합니다.

# --explanation--

`Subtle`는 섬세하거나 뚜렷하지 않은 것을 가리킵니다. 예를 들어:

`The artist used subtle shades of blue in the painting.` - 이것은 예술가가 강하거나 눈에 띄지 않는 연하거나 부드러운 파란색 음영을 사용했다는 뜻입니다.

`Palette`는 예술가나 디자이너가 사용하는 색상이나 재료의 범위를 의미합니다. 예를 들어:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - 이것은 디자이너가 웹사이트 디자인에 빨강, 주황, 노랑 같은 따뜻한 색상 세트를 선택했다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
