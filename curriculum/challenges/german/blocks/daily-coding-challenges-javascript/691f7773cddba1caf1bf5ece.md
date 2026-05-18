---
id: 691f7773cddba1caf1bf5ece
title: "Aufgabe 135: Re: Fwd: Fw: zählen"
challengeType: 28
dashedName: challenge-135
---

# --description--

Gegeben ist ein String, der die Betreffzeile einer E-Mail darstellt. Bestimmen Sie, wie oft die E-Mail weitergeleitet oder beantwortet wurde.

Zur Vereinfachung gilt eine E-Mail als weitergeleitet oder beantwortet, wenn der String einen der folgenden Marker enthält (Groß- und Kleinschreibung wird nicht beachtet):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Geben Sie die Gesamtanzahl der Vorkommen dieser Marker zurück.

# --hints--

`emailChainCount("Re: Meeting Notes")` sollte `1` zurückgeben.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` sollte `0` zurückgeben.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` sollte `4` zurückgeben.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` sollte `5` zurückgeben.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` sollte `23` zurückgeben.

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
