---
id: 6af4aeb7797b2df1a68aecbd
title: Paso 25
challengeType: 20
dashedName: step-25
---

# --description--

Ahora que has visto el encabezado en la consola, elimina las creaciones de objetos y las llamadas a métodos que agregaste para las pruebas.

# --hints--

No debes tener `tory = User('Tory')` en tu código.

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_stmt("tory = User(\\"Tory\\")")`));
    }
})
```

No debes tener `ramy = User('Ramy')` en tu código.

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_stmt("ramy = User(\\"Ramy\\")")`));
    }
})
```

No debes tener `tory.send_email(ramy, 'Hello', 'Hi Ramy, just saying hello!')` en tu código.

```js
({
    test: () => {
        assert(!runPython(`_Node(_code).has_call("tory.send_email(ramy, \\"Hello\\", \\"Hi Ramy, just saying hello!\\")")`));
    }
})
```

No debes tener `ramy.inbox.emails[0].display_full_email()` en tu código.

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
