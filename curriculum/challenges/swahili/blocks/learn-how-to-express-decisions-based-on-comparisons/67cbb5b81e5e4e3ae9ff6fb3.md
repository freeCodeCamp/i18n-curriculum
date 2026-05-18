---
id: 67cbb5b81e5e4e3ae9ff6fb3
title: Zoezi la 42
challengeType: 19
dashedName: task-42
lang: en-US
---

<!-- (audio) Jake: If integration is crucial, you might have to do some extra work with SafeGuard. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Jake anamaanisha nini?

## --answers--

SafeGuard ni rahisi kuunganishwa na zana nyingine.
  
### --feedback--

Anachosema Jake kinaonyesha si rahisi.

---

Gharama ya SafeGuard huongezeka wakati inapounganishwa.

### --feedback--

Jake hakutaja gharama.

---

Muunganisho na SafeGuard unaweza kuhitaji juhudi za ziada.

---

SafeGuard haiko na unyumbufu katika muunganisho.

### --feedback--

Jake hakutaja unyumbufu bali anakazia hitaji la kazi ya ziada.

## --video-solution--

3

# --explanation--

`Extra work` inamaanisha juhudi au muda wa ziada unaohitajika kufanikisha lengo.

Jake anapendekeza kwamba `if integration is crucial` (muhimu sana), Sophie anaweza kukumbana na changamoto na SafeGuard, na kwa hiyo, kazi au juhudi za ziada zitahitajika kuunganisha na majukwaa mengine.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 62.88,
      "finishTimestamp": 67.4
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 5.34,
      "dialogue": {
        "text": "If integration is crucial, you might have to do some extra work with Safeguard.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
