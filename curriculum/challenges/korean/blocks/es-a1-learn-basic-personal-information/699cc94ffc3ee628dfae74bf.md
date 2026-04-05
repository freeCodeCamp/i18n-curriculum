---
id: 699cc94ffc3ee628dfae74bf
title: 작업 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es`는 동사 `ser`에서 파생되었으며 무언가를 식별하거나 나타내는 데 사용됩니다. 예를 들어:

- `Es mi número.` - 내 번호입니다.
  
- `Es mi correo.` - 내 이메일입니다.

이메일 주소를 철자할 때 특정 기호는 소리 내어 말합니다:

`Punto`는 기호 `.`를 나타낼 때 사용됩니다. 예를 들어:

`ana.lopez`는 `ana punto lopez`로 읽힙니다.

`Arroba`는 기호 `@`를 나타낼 때 사용됩니다. 예를 들어:

`ana.lopez@ejemplo.com`는 `ana punto lopez arroba ejemplo punto com`로 읽힙니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

이 형태의 `ser`는 무언가를 나타내거나 식별할 때 사용됩니다.

---

`punto`

### --feedback--

이 단어는 이메일 주소에서 기호 `.`를 말할 때 사용됩니다.

---

`arroba`

### --feedback--

이 단어는 기호 `@`를 말할 때 사용됩니다.

---

`punto`

### --feedback--

이 단어는 마지막 글자 `p r` 앞에 다시 나타납니다.

# --explanation--

전체 문장은 다음과 같습니다:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es`는 정보를 소개합니다.

`Punto`는 기호 `.`를 나타냅니다.

`Arroba`는 기호 `@`를 나타냅니다.

이 단어들은 이메일 주소를 소리 내어 철자할 때 흔히 사용됩니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```
