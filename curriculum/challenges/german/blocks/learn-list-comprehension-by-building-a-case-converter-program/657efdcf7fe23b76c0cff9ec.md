---
id: 657efdcf7fe23b76c0cff9ec
title: Schritt 7
challengeType: 20
dashedName: step-7
---

# --description--

Sie müssen die Zeichen, die bereits in Kleinbuchstaben sind, behandeln, indem Sie sie zur Liste der umgewandelten Zeichen hinzufügen.

Direkt nach der `if`-Anweisung innerhalb der `for`-Schleife fügen Sie eine `else`-Klausel hinzu und verwenden die `.append()`-Methode, um `char` zur `snake_cased_char_list`-Variablen hinzuzufügen.

# --hints--

Sie sollten eine `else`-Klausel innerhalb der `for`-Schleife hinzufügen. Vergessen Sie nicht den Doppelpunkt am Ende.

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +else:/);
    }
})
```

Sie sollten die `.append()`-Methode verwenden, um `char` zur `snake_cased_char_list`-Variablen hinzuzufügen.

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +snake_cased_char_list.append\(\s*char\s*\)/);
    }
})
```

# --seed--

## --seed-contents--

```py
def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
--fcc-editable-region--
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
--fcc-editable-region--
```
