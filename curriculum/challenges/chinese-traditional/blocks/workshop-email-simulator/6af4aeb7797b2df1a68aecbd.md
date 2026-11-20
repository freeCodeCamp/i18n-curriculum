---
id: 6af4aeb7797b2df1a68aecbd
title: 第 25 步
challengeType: 20
dashedName: step-25
---

# --description--

既然你已經在主控台看到標題，請移除你為測試而添加的物件產生和方法呼叫。

# --hints--

你的程式碼中不應該有 `tory = User('Tory')`。

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_stmt("tory = User(\\"Tory\\")")`));
    }
})
```

你的程式碼中不應該有 `ramy = User('Ramy')`。

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_stmt("ramy = User(\\"Ramy\\")")`));
    }
})
```

你的程式碼中不應該有 `tory.send_email(ramy, 'Hello', 'Hi Ramy, just saying hello!')`。

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_call("tory.send_email(ramy, \\"Hello\\", \\"Hi Ramy, just saying hello!\\")")`));
    }
})
```

你的程式碼中不應該有 `ramy.inbox.emails[0].display_full_email()`。

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_call("ramy.inbox.emails[0].display_full_email()")`));
    }
})
```

# --seed--

## --seed-contents--

```py
class Email:
    def __init__(self, sender, receiver, subject, body):
        self.sender = sender
        self.receiver = receiver
        self.subject = subject
        self.body = body
        self.read = False

    def mark_as_read(self):
        self.read = True

    def display_full_email(self):
        self.mark_as_read()
        print(f"\n{' Email ':-^29}")

class User:
    def __init__(self, name):
        self.name = name
        self.inbox = Inbox()

    def send_email(self, receiver, subject, body):
        email = Email(sender=self, receiver=receiver, subject=subject, body=body)
        receiver.inbox.receive_email(email)

class Inbox:
    def __init__(self):
        self.emails = []

    def receive_email(self, email):
        self.emails.append(email)

--fcc-editable-region--
tory = User('Tory')
ramy = User('Ramy')

tory.send_email(ramy, 'Hello', 'Hi Ramy, just saying hello!')

ramy.inbox.emails[0].display_full_email()
--fcc-editable-region--
```
