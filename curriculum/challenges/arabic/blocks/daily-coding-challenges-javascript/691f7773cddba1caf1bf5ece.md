---
id: 691f7773cddba1caf1bf5ece
title: "تحدٍّ 135: Re: Fwd: Fw: Count"
challengeType: 28
dashedName: challenge-135
---

# --description--

معطى سلسلة نصية تمثل سطر موضوع بريد إلكتروني، حدّد عدد المرات التي تم فيها إعادة توجيه البريد أو الرد عليه.

للتبسيط، اعتبر البريد الإلكتروني معاد توجيهه أو مُجابًا عليه إذا احتوت السلسلة النصية على أي من العلامات التالية (بغض النظر عن حالة الأحرف):

- `"fw:"`
- `"fwd:"`
- `"re:"`

أرجع العدد الإجمالي لمرات ظهور هذه العلامات.

# --hints--

`emailChainCount("Re: Meeting Notes")` يجب أن تُرجع `1`.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")` يجب أن تُرجع `0`.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")` يجب أن تُرجع `4`.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")` يجب أن تُرجع `5`.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` يجب أن تُرجع `23`.

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
