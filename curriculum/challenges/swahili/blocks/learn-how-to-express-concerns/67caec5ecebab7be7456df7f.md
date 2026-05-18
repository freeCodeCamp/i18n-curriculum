---
id: 67caec5ecebab7be7456df7f
title: Zoezi la 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.  

# --questions--

## --text--

Ni tatizo gani lingine ambalo timu ililileta?

## --answers--

Kwamba wanapokea masasisho mapema mno.

### --feedback--

Maria anataja kinyume kabisa.

---

Kwamba hawataki kuwasiliana sana.

### --feedback--

Maria hataji kuhusu utayari wa timu kuwasiliana.  

---

Kwamba mara nyingi hawasikii kuhusu mabadiliko kwa wakati.

---

Kwamba wanafikiri watu wengi sana wanahusika katika mawasiliano.

### --feedback--

Maria hataji kuhusu idadi ya watu wanaohusika.

## --video-solution--

3  

# --explanation--

Unaposema kitu `isn't great`, unalainisha ujumbe hasi (badala ya kusema `it is bad`, kwa mfano). Hii hufanya ukosoaji usikike kwa heshima au kwa njia isiyo ya moja kwa moja. Angalia sentensi zifuatazo:

- `The design is bad.` - Hii ni kauli hasi kali, ambayo mara nyingi husikika isiyo na heshima.

- `The design isn't great. Maybe we can improve it.` - Kusema hivi husikika laini zaidi na kuwa na ujenzi zaidi.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
