---
id: 6996cdf1f60cbc30eeeae1c9
title: Passo 12
challengeType: 1
dashedName: step-12
---

# --description--

Se a condição no `else if` for verdadeira, atualize o valor da variável `low` adicionando `1` à variável `mid`.

Isso vai estender a busca para a metade direita das áreas de busca atuais na lista, porque se o `value` for maior que o `valueAtMiddle`, significa que o `value` deve estar na metade direita da área de busca atual.

# --hints--

Você deve atualizar a variável `low` para `mid + 1`.

```js
assert.match(__helpers.removeJSComments(String(binarySearch)), /low\s*=\s*mid\s*\+\s*1/);
```

# --seed--

## --seed-contents--

```js
function binarySearch(searchList, value) {
  let pathToTarget = [];
  let low = 0;
  let high = searchList.length - 1;
  while (low <= high) {
    let mid = Math.floor((low + high) / 2);
    let valueAtMiddle = searchList[mid];
    pathToTarget.push(valueAtMiddle);

    if (value === valueAtMiddle) {
      return pathToTarget;
    } else if (value > valueAtMiddle) {
--fcc-editable-region--
        
--fcc-editable-region--     
    }
    
    break;
  }
  return [];
}

console.log(binarySearch([1, 2, 3, 4, 5], 3));
console.log(binarySearch([1, 2, 3, 4, 5, 9], 4));
```
