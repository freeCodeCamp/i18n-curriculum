---
id: 691f7773cddba1caf1bf5ece
title: "Challenge 135: Re: Fwd: Fw: Count"
challengeType: 29
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
