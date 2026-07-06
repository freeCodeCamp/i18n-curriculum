---
id: 691f7773cddba1caf1bf5ece
title: "تحدٍّ 135: Re: Fwd: Fw: Count"
challengeType: 29
dashedName: challenge-135
---

# --description--

معطاة سلسلة نصية تمثل سطر الموضوع في بريد إلكتروني، حدد عدد المرات التي تم فيها إعادة توجيه البريد أو الرد عليه.

للتبسيط، اعتبر البريد الإلكتروني معاد توجيهه أو مُجابًا عليه إذا احتوت السلسلة النصية على أي من العلامات التالية (بغض النظر عن حالة الأحرف):

- `"fw:"`
- `"fwd:"`
- `"re:"`

أرجع العدد الإجمالي لمرات ظهور هذه العلامات.

# --hints--

`email_chain_count("Re: Meeting Notes")` يجب أن تُرجع `1`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Meeting Notes"), 1)`)
}})
```

`email_chain_count("Meeting Notes")` يجب أن تُرجع `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Meeting Notes"), 0)`)
}})
```

`email_chain_count("Re: re: RE: rE: Meeting Notes")` يجب أن تُرجع `4`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: re: RE: rE: Meeting Notes"), 4)`)
}})
```

`email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes")` يجب أن تُرجع `5`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(email_chain_count("Re: Fwd: Re: Fw: Re: Meeting Notes"), 5)`)
}})
```

`email_chain_count("re:Ref:fw:re:review:FW:Re:fw:report:Re:FW:followup:re:summary:Fwd:Re:fw:NextStep:RE:FW:re:Project:Fwd:Re:fw:Notes:RE:re:Update:FWD:Re:fw:Summary")` يجب أن تُرجع `23`.

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
