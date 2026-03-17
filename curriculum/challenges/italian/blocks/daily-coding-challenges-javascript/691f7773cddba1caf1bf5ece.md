---
id: 691f7773cddba1caf1bf5ece
title: "Sfida 135: Re: Fwd: Fw: conta"
challengeType: 28
dashedName: challenge-135
---

# --description--

Data una stringa che rappresenta la riga dell'oggetto di un'email, determina quante volte l'email è stata inoltrata o a cui è stato risposto.

Per semplicità, considera un'email inoltrata o a cui è stato risposto se la stringa contiene uno qualsiasi dei seguenti indicatori (non sensibili al caso):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Restituisci il numero totale di occorrenze di questi indicatori.

# --hints--

`emailChainCount("Re: Meeting Notes")` dovrebbe restituire `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` dovrebbe restituire `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` dovrebbe restituire `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` dovrebbe restituire `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` dovrebbe restituire `23`.

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
