---
id: 657efdcf7fe23b76c0cff9ec
title: Paso 7
challengeType: 20
dashedName: step-7
---

# --description--

Necesitas manejar los caracteres que ya están en minúsculas agregándolos a la lista de caracteres convertidos.

Justo después de la sentencia `if` dentro del bucle `for`, agrega una cláusula `else` y usa el método `.append()` para añadir `char` a la variable `snake_cased_char_list`.

# --hints--

Debes agregar una cláusula `else` dentro del ciclo `for`. No olvides los dos puntos al final.

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

Debes usar el método `.append()` para agregar `char` a la variable `snake_cased_char_list`.

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
