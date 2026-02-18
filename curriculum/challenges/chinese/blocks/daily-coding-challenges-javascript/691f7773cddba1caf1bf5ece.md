---
id: 691f7773cddba1caf1bf5ece
title: "挑战 135：回复：转发：转发：计数"
challengeType: 28
dashedName: challenge-135
---

# --description--

给定一个表现电子邮件主题行的字串，确定该电子邮件被转发或回复了多少次。

为简单起见，如果字串包含以下任意标记（不区分分支），则视为邮件已被转发或回复：

- `"fw:"`
- `"fwd:"`
- `"re:"`

返回这些标记的总出现次数。

# --hints--

`emailChainCount("Re: Meeting Notes")` 应该返回 `1`。

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` 应返回 `0`。

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` 应该返回 `4`。

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` 应该返回 `5`。

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` 应该返回 `23`。

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
