---
id: 691f7773cddba1caf1bf5ece
title: "Desafio 135: Re: Fwd: Fw: Count"
challengeType: 28
dashedName: challenge-135
---

# --description--

Dada uma string que representa a linha de assunto de um email, determine quantas vezes o email foi encaminhado ou respondido.

Para simplificar, considere um email encaminhado ou respondido se a string contiver qualquer um dos seguintes marcadores (sem distinção entre maiúsculas e minúsculas):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Retorna o número total de ocorrências desses marcadores.

# --hints--

`emailChainCount("Re: Meeting Notes")` deve retornar `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` deve retornar `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` deve retornar `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` deve retornar `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` deve retornar `23`.

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
