---
id: 675ecedbb04f6ca6dd620f0e
title: Zoezi la 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Hii ni aina ya shambulio la mtandao ambapo mdukuhu huingia kwa siri katikati ya watu wawili au mifumo inayozungumza. Mdukuhu anaweza kuona, kubadilisha, au kuiba taarifa zinazoshirikiwa bila mtu yeyote kujua. Huu ni neno mchanganyiko, kumbuka kutumia `-`. Herufi za kwanza za neno la kwanza na la nne zinapaswa kuwa kubwa.

---

`attacks`

### --feedback--

Neno hili kwa wingi linamaanisha vitendo vya wadukuzi au wahalifu vya kuharibu mfumo wa kompyuta, kuiba taarifa, au kusababisha matatizo.

# --explanation--

`Man-in-the-Middle` (au `MITM`) ni aina ya shambulio ambapo mdukuhu huingia kwa siri kati ya watu wawili au mifumo inayozungumza. Mdukuhu husikiliza au kubadilisha taarifa zinazoshirikiwa bila mtu yeyote kujua. Kwa mfano:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - Mdukuhu alijifanya kuwa benki, akakataza taarifa, na kuiba nywila za mtumiaji. Hii ilimruhusu mdukuhu kupata upatikanaji wa akaunti ya benki bila mtumiaji kujua.

`Attacks` ni vitendo vya wadukuzi vya kuharibu mifumo ya kompyuta, kuiba taarifa, au kusababisha matatizo. Kwa mfano:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - Inaonyesha mdukuhu alituma trafiki bandia nyingi sana kwenye tovuti, ikasababisha kuvunjika au kupungua kasi. Hii ilizuia watumiaji halisi kupata upatikanaji, na kusababisha usumbufu.

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
