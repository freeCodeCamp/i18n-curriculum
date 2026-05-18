---
id: 691f7773cddba1caf1bf5ece
title: "Zoezi la 135: Re: Fwd: Fw: Hesabu"
challengeType: 28
dashedName: challenge-135
---

# --description--

Kutolewa mfuatano wa herufi unaowakilisha mstari wa somo la barua pepe, amua ni mara ngapi barua pepe hiyo imetumwa tena au kujibiwa.

Kwa urahisi, zingatia barua pepe imetumwa tena au kujibiwa ikiwa mfuatano wa herufi una mojawapo ya alama zifuatazo (bila kujali herufi kubwa au ndogo):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Rudisha jumla ya mara alama hizi zilipotokea.

# --hints--

`emailChainCount("Re: Meeting Notes")` inapaswa kurudisha `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` inapaswa kurudisha `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` inapaswa kurudisha `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` inapaswa kurudisha `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` inapaswa kurudisha `23`.

```js
assert.equal(emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary"), 23);
```

# --seed--

## --seed-contents--

```js
function emailChainCount(subject) {

  return subject;
}
```

# --solutions--

```js
function emailChainCount(subject) {
  const markers = ["re:", "fwd:", "fw:"];
  const lower = subject.toLowerCase();
  let count = 0;

  for (const marker of markers) {
    let index = 0;
    while ((index = lower.indexOf(marker, index)) !== -1) {
      count++;
      index += marker.length;
    }
  }

  return count;
}
```
