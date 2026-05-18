---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Zoezi la 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget` ni chombo kidogo au kifaa, mara nyingi chenye werevu au kipya, kinachofanya kitendakazi fulani au kurahisisha jambo fulani.

Katika teknolojia, vifaa vidogo vinaweza kujumuisha vitu kama simu za mkononi, saa za mkononi za kisasa, au kifaa chochote cha kielektroniki chenye ubunifu na kizuri.

Kwa mfano, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Neno hili linamaanisha kitu kinachosababisha hisia au mwitikio. Hapa, linatumika kuelezea kile kinachomfurahisha Bob kuhusu teknolojia. Limeunganishwa kwa mtu wa tatu wingi.

---

`those`

### --feedback--

Neno hili linatumika kuonyesha vitu maalum vinavyotajwa, katika kesi hii, vifaa vidogo. Ni wingi wa `that`.

---

`gadgets`

### --feedback--

Neno hili linahusu vifaa vidogo vya kielektroniki au zana ambazo ni muhimu au za kuvutia. Mara nyingi hutumika kuzungumzia vitu vya teknolojia vinavyovutia. Lipo katika wingi.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
