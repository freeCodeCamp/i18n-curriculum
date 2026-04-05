---
id: 691f7773cddba1caf1bf5ece
title: "Challenge 135: Re: Fwd: Fw: Count"
challengeType: 29
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

`email_chain_count("Re: Meeting Notes")` should return `1`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Meeting Notes"), 1)`)
}})
```

`email_chain_count("Meeting Notes")` should return `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Meeting Notes"), 0)`)
}})
```

`email_chain_count("Re: re: RE: rE: Meeting Notes")` should return `4`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: re: RE: rE: Meeting Notes"), 4)`)
}})
```

`email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes")` should return `5`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5)`)
}})
```

`email_chain_count("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` should return `23`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary"), 23)`)
}})
```

# --seed--

## --seed-contents--

```py
def email_chain_count(subject):

    return subject
```

# --solutions--

```py
def email_chain_count(subject):
    markers = ["re:", "fwd:", "fw:"]
    lower = subject.lower()
    count = 0

    for marker in markers:
        start = 0
        while True:
            idx = lower.find(marker, start)
            if idx == -1:
                break
            count += 1
            start = idx + len(marker)

    return count
```
