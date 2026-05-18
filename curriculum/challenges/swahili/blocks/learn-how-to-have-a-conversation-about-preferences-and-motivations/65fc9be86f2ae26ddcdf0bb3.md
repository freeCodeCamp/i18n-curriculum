---
id: 65fc9be86f2ae26ddcdf0bb3
title: Zoezi la 36
challengeType: 19
dashedName: task-36
lang: en-US
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

Sikiliza Maria na jibu swali.

# --questions--

## --text--

Nini kinaweza kuongeza motisha yao kulingana na Maria?

## --answers--

Kuwa na timu kubwa

### --feedback--

Fikiria ni nini hasa kinachowafanya timu kuwa na motisha zaidi, si ukubwa wa timu tu.

---

Kupumzika kwa muda mrefu

### --feedback--

Fikiria kama mapumziko yameelezwa kama njia ya kuongeza motisha.

---

Kuona timu ikiwa na msukumo

---

Kutatua matatizo haraka

### --feedback--

Fikiria kama kasi ya kutatua matatizo ndiyo Maria anayoangazia kama chanzo cha motisha.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
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
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
