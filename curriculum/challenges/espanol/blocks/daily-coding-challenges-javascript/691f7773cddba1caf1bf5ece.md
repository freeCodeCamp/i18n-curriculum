---
id: 691f7773cddba1caf1bf5ece
title: "Desafío 135: Re: Fwd: Fw: Count"
challengeType: 28
dashedName: challenge-135
---

# --description--

Dada una cadena que representa la línea de asunto de un correo electrónico, determina cuántas veces se ha reenviado o respondido el correo.

Para simplificar, considera un correo electrónico reenviado o respondido si la cadena contiene cualquiera de los siguientes marcadores (sin distinguir mayúsculas o minúsculas):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Devuelve el número total de ocurrencias de estos marcadores.

# --hints--

`emailChainCount("Re: Meeting Notes")` debería devolver `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` debería devolver `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` debería devolver `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` debería devolver `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` debería devolver `23`.

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
