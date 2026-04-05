---
id: 699eff4a6eefcef5c1d1059a
title: 작업 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

단어 `dominio`는 보통 이메일에서 `@` 다음에 오거나 웹사이트에서 `www` 다음에 오는 웹 주소의 주요 부분을 가리킵니다.

이 단어는 이메일 주소나 URL을 주거나 확인할 때 흔히 사용됩니다. 예를 들어:

`El dominio es gmail punto com.` – 도메인은 gmail.com입니다.

`¿Cuál es el dominio?` – 도메인이 무엇인가요?

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

이 명사는 웹 또는 이메일 주소의 주요 부분을 가리킵니다.

# --explanation--

`Dominio`는 이메일 주소나 웹사이트의 도메인 부분을 지칭하는 명사입니다.

사람들이 디지털 연락처 정보를 철자하거나 확인할 때 자주 등장합니다.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
