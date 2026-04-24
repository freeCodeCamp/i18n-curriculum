---
id: 691f7773cddba1caf1bf5ece
title: "チャレンジ 135: Re: Fwd: Fw: Count"
challengeType: 28
dashedName: challenge-135
---

# --description--

メールの件名を表す文字列が与えられたとき、そのメールが何回転送または返信されたかを判定してください。

簡単にするために、文字列に以下のいずれかのマーカーが含まれていれば、そのメールは転送または返信されたとみなします（大文字・小文字は区別しません）。

- `"fw:"`
- `"fwd:"`
- `"re:"`

これらのマーカーの合計出現回数を返してください。

# --hints--

`emailChainCount("Re: Meeting Notes")` は `1` を返すべきです。

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` は `0` を返すべきです。

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` は `4` を返すべきです。

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` は `5` を返すべきです。

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` は `23` を返すべきです。

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
