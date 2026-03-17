---
id: 691f7773cddba1caf1bf5ece
title: "Завдання 135: Re: Fwd: Fw: підрахунок"
challengeType: 29
dashedName: challenge-135
---

# --description--

Дано рядок, що представляє тему листа електронної пошти. Визначте, скільки разів цей лист було переслано або на нього відповіли.

Для спрощення вважайте, що лист переслано або на нього відповіли, якщо рядок містить будь-який із наступних маркерів (незалежно від регістру):

- `"fw:"`
- `"fwd:"`
- `"re:"`

Поверніть загальну кількість появ цих маркерів.

# --hints--

`email_chain_count("Re: Meeting Notes")` має повернути `1`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Meeting Notes"), 1)`)
}})
```

`email_chain_count("Meeting Notes")` має повернути `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Meeting Notes"), 0)`)
}})
```

`email_chain_count("Re: re: RE: rE: Meeting Notes")` має повернути `4`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: re: RE: rE: Meeting Notes"), 4)`)
}})
```

`email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes")` має повернути `5`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5)`)
}})
```

`email_chain_count("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` має повернути `23`.

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
