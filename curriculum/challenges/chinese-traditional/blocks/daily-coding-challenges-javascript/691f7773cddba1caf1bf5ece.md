---
id: 691f7773cddba1caf1bf5ece
title: "挑戰 135：回覆：轉寄：轉寄：計數"
challengeType: 28
dashedName: challenge-135
---

# --description--

給定一個表述電子郵件主旨行的字串，判斷該電子郵件被轉寄或回覆了多少次。

為了簡化起見，如果字串包含以下任一標記（不區分大小寫），則視為已轉寄或回覆的電子郵件：

- `"fw:"`
- `"fwd:"`
- `"re:"`

傳回這些標記的總出現次數。

# --hints--

`emailChainCount("Re: Meeting Notes")` 應該傳回 `1`。

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` 應該傳回 `0`。

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` 應該傳回 `4`。

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` 應該傳回 `5`。

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` 應該傳回 `23`。

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
