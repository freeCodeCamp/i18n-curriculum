---
id: 691f7773cddba1caf1bf5ece
title: "도전 과제 135: Re: Fwd: Fw: 개수 세기"
challengeType: 28
dashedName: challenge-135
---

# --description--

이메일 제목을 나타내는 문자열이 주어졌을 때, 이메일이 몇 번 전달되었거나 회신되었는지 확인하세요.

간단히 하기 위해, 문자열에 다음 표시 중 하나라도 포함되어 있으면 이메일이 전달되었거나 회신된 것으로 간주하세요(대소문자 구분 없음):

- `"fw:"`
- `"fwd:"`
- `"re:"`

이 표시들의 총 출현 횟수를 반환하세요.

# --hints--

`emailChainCount("Re: Meeting Notes")`는 `1`를 반환해야 합니다.

```js
assert.equal(emailChainCount("Re: Meeting Notes"), 1);
```

`emailChainCount("Meeting Notes")`는 `0`를 반환해야 합니다.

```js
assert.equal(emailChainCount("Meeting Notes"), 0);
```

`emailChainCount("Re: re: RE: rE: Meeting Notes")`는 `4`를 반환해야 합니다.

```js
assert.equal(emailChainCount("Re: re: RE: rE: Meeting Notes"), 4);
```

`emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes")`는 `5`를 반환해야 합니다.

```js
assert.equal(emailChainCount("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5);
```

`emailChainCount("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")`는 `23`를 반환해야 합니다.

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
