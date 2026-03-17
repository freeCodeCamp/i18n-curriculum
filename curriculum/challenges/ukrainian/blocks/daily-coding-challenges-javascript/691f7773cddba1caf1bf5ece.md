---
id: 691f7773cddba1caf1bf5ece
title: "Завдання 135: Re: Fwd: Fw: підрахунок"
challengeType: 28
dashedName: challenge-135
---

# --description--

Дано рядок, що представляє тему листа електронної пошти. Визначте, скільки разів цей лист було переслано або на нього відповіли.

Для спрощення вважайте, що лист переслано або на нього відповіли, якщо рядок містить будь-який із наступних маркерів (без урахування регістру):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Поверніть загальну кількість появ цих маркерів.

# --hints--

`emailChainCount("Re: Meeting Notes")` має повернути `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` має повернути `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` має повернути `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` має повернути `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` має повернути `23`.

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
