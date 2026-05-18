---
id: 6620102deeab45aeeffa84ac
title: Zoezi la 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Unapokuwa unataja rangi ya macho ya mtu, kawaida huanza kwa kuwatambua kwa rangi yao. Rangi za macho zinazojulikana ni `black`, `brown`, `blue`, na `green`. Kulingana na rangi, inaweza kuwa na mwelekeo wa `white` au `black` (rangi yenyewe ni yenye nguvu zaidi au dhaifu zaidi). Katika hali hii, unaweza kuongeza maneno `light` (inayokaribia `white`) na `dark` (inayokaribia `black`) kabla ya rangi ili kuieleza. Sifa nyingine unayotumia kawaida kutambua macho ya mtu ni umbo - `round` wakati ni kama mduara na `narrow` wakati ni kama mstari. Mwishowe, unaweza kuzungumzia ukubwa wake, `large` (wakati ni makubwa) au `small` (wakati si makubwa). Tom pia anatoa maoni, akisema macho ya Lisa yamejaa nguvu na uhai. Katika hali hii, unasema macho ya mtu ni `bright`.

Kama unavyofanya na `hair`, vivumishi vinavyotumika kutambua macho ya mtu pia hufuata mpangilio katika Kiingereza. Kwanza, unaeleza maoni haya, kisha unaelekea kwenye ukubwa, kisha umbo na mwishowe rangi (ikiwa imeongozwa au la na `light` au `dark`).

Mfano: `Tom has beautiful, small, narrow, light green eyes.`

Sasa sikiliza na ujaze mapengo kwa maelezo ya Tom kuhusu macho ya Lisa.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom anatoa maoni kwanza. Anasema macho ya Lisa yamejaa nguvu.

---

`brown`

### --feedback--

Tom hatimaye anazungumzia rangi ya macho ya Lisa. Ni kivuli kinachokaribia `black`, na si `blue` wala `green`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
