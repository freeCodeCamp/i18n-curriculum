---
id: 657bdcc3a322aae1eac38392
title: Construye una Caja Registradora
challengeType: 14
forumTopicId: 16012
dashedName: build-a-cash-register
---

# --description--

Aquí construirás una aplicación de caja registradora que devolverá el cambio al cliente según el precio del artículo, el monto de dinero proporcionado por el cliente, y la cantidad de dinero en la caja de efectivo. También deberás mostrar diferentes mensajes al usuario en diferentes escenarios, tales como cuando el cliente proporciona muy poco dinero en efectivo o cuando la caja registradora no tiene suficiente para emitir el cambio correcto.

En el archivo `script.js`, se te han proporcionado las variables `price` y `cid`. La variable `price` es el precio del artículo, y la variable `cid` es el cambio que hay caja, que es un arreglo 2D que enumera la moneda disponible en la caja registradora.

La otra variable que necesitarás agregar es la variable `cash`, que corresponde a la cantidad de dinero proveniente del comprador del artículo, proporcionada mediante un elemento `input` en la página.

Si deseas probar tu aplicación con diferentes valores para `price` y `cid`, asegúrate de declararlos con la palabra clave `let` para que puedan ser reasignados por nuestras pruebas.

Tu aplicación debería mostrar diferentes mensajes dependiendo del precio del artículo, la cantidad de dinero proporcionada por el cliente y la cantidad de dinero en la caja registradora:

- `"Status: INSUFFICIENT_FUNDS"`: Si `cash-in-drawer` es menor que el cambio esperado, o si no puedes devolver el cambio exacto.
- `"Status: CLOSED"`: si `cash-in-drawer` es igual a el cambio esperado.
- `"Status: OPEN"`: si `cash-in-drawer` es mayor que el cambio adeudado y puede devolver el cambio, con el cambio adeudado en monedas y billetes ordenados de mayor a menor.

| Unidad Monetaria |           Importe            |
|:----------------:|:----------------------------:|
|     Centavo      |      $0.01 (UN CENTAVO)      |
|      Níquel      |    $0.05 (CINCO CENTAVOS)    |
|      Décimo      |     $0.1 (DIEZ CENTAVOS)     |
|      Cuarto      | $0.25 (VEINTICINCO CENTAVOS) |
|      Dólar       |           $1 (UNO)           |
|  Cinco dólares   |          $5 (CINCO)          |
|   Diez dólares   |          $10 (DIEZ)          |
|  Veinte dólares  |         $20 (VEINTE)         |
|   Cien dólares   |         $100 (CIEN)          |

**Objetivo:** Crea una aplicación que sea funcionalmente similar a <a href="https://cash-register.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://cash-register.freecodecamp.rocks</a>.

**Historias de usuario:**

1. Debe tener un elemento `input` con un `id` de `"cash"`.
1. Debe tener un elemento `div`, `span` o `p` con un `id` de `"change-due"`.
1. Debes tener un elemento `button` con un `id` de `"purchase-btn"`.
1. Cuando el valor del elemento `#cash` es menor que `price`, debe aparecer una alerta con el texto `"Customer does not have enough money to purchase the item"`.
1. Cuando el valor en el elemento `#cash` es igual a `price`, el valor en el elemento `#change-due` debe ser `"No change due - customer paid with exact cash"`.
1. Cuando `price` es `19.5`, el valor en el elemento `#cash` es `20`, `cid` es `[["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]`, y se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: OPEN QUARTER: $0.5"`.
1. Cuando `price` es `3.26`, el valor en el elemento `#cash` es `100`, `cid` es `[["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]`, y se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: OPEN TWENTY: $60 TEN: $20 FIVE: $15 ONE: $1 QUARTER: $0.5 DIME: $0.2 PENNY: $0.04"`.
1. Cuando `price` es `19.5`, el valor en el elemento `#cash` es `20`, `cid` es `[["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: INSUFFICIENT_FUNDS"`.
1. Cuando `price` es `19.5`, el valor en el elemento `#cash` es `20`, `cid` es `[["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 1], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: INSUFFICIENT_FUNDS"`.
1. Cuando `price` es `19.5`, el valor en el elemento `#cash` es `20`, `cid` es `[["PENNY", 0.5], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: CLOSED PENNY: $0.5"`.

Cumpla las historias de usuario y supere todas las pruebas que se indican a continuación para completar este proyecto. Dale tu propio estilo. Feliz codificación!

# --antes-de-todo--

```js
const _money = [
  ['ONE HUNDRED', 10000],
  ['TWENTY', 2000],
  ['TEN', 1000],
  ['FIVE', 500],
  ['ONE', 100],
  ['QUARTER', 25],
  ['DIME', 10],
  ['NICKEL', 5]
];
const _denomRegexes = [
  /PENNY/,
  /NICKEL/,
  /DIME/,
  /QUARTER/,
  /ONE [^H]/,
  /FIVE/,
  /TEN/,
  /TWENTY/,
  /ONE HUNDRED/
];
function _randomNumber(max) {
  return Math.floor(Math.random() * (max + 1));
}
```

# --hints--

Debes tener el enlace del archivo HTML al archivo JavasCript.

```js
const script = document.querySelector('script[data-src$="script.js"]');
assert.isNotNull(script); 
```

Debes tener una variable global llamada `price`.

```js
price = 10;
assert.strictEqual(price, 10);
```

Debes tener una variable global llamada `cid`.

```js
cid = []; 
assert.isDefined(cid); 
```

Debes tener un elemento `input` con un `id` = `"cash"`.

```js
const el = document.getElementById('cash');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'input');
```

Debes tener un elemento `div`, `span`, o `p` con un `id` = `"change-due"`.

```js
const el = document.getElementById('change-due');
assert(['div', 'span', 'p'].includes(el?.nodeName?.toLowerCase()));
```

Debes tener un elemento `button` con un `id` = `"purchase-btn"`.

```js
const el = document.getElementById('purchase-btn');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'button');
```

Cuando `price` es `20` el valor del elemento `#cash` es `10`, y el elemento `#purchase-btn` es cliqueado, debe aparecer un alerta con el texto `"Customer does not have enough money to purchase the item"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
let alertMessage;
window.alert = message => (alertMessage = message); // Override alert and store message
// set price and customer cash
price = 20;
cashInput.value = '10';
cid = [['PENNY', 1.01], ['NICKEL', 2.05], ['DIME', 3.1], ['QUARTER', 4.25], ['ONE', 90], ['FIVE', 55], ['TEN', 20], ['TWENTY', 60], ['ONE HUNDRED', 100]];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  alertMessage
    ?.trim()
    .replace(/[.,?!]+$/g, '')
    .toLowerCase(),
  'customer does not have enough money to purchase the item'
);
```

Cuando el valor del elemento `#cash` es menor que `price` y se hace clic en el elemento `#purchase-btn`, debe aparecer una alerta con el texto `"Customer does not have enough money to purchase the item"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
let alertMessage;
window.alert = message => (alertMessage = message);

// Min $5.00, max $100.00, changes by $0.01, in cents.
const randomPrice = _randomNumber(9500) + 500;
// Min $1.00, max price - $1, changes by $0.01, in cents.
const randomCash = _randomNumber(randomPrice - 200) + 100;
price = randomPrice / 100;
cashInput.value = `${randomCash / 100}`;
cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  alertMessage
    ?.trim()
    .replace(/[.,?!]+$/g, '')
    .toLowerCase(),
  'customer does not have enough money to purchase the item'
);
```

Cuando `price` es `11.95`, el valor en el elemento `#cash` es `11.95`, y se hace clic en el elemento `#purchase-btn` entonces el valor del elemento `#change-due` debe ser `"No change due - customer paid with exact cash"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price and customer cash
price = 11.95;
cashInput.value = '11.95';
cid = [['PENNY', 1.01], ['NICKEL', 2.05], ['DIME', 3.1], ['QUARTER', 4.25], ['ONE', 90], ['FIVE', 55], ['TEN', 20], ['TWENTY', 60], ['ONE HUNDRED', 100]];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText
    .trim()
    .replace(/[.,?!]+$/g, '')
    .toLowerCase(),
  'no change due - customer paid with exact cash'
);
```

Cuando el valor en el elemento `#cash` es igual a `price`, y se hace clic en el elemento `#purchase-btn` el valor en el elemento `#change-due` debe ser `"No change due - customer paid with exact cash"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');

// Min $1.00, max $50.00, changes by $0.01, in cents.
const randomPrice = _randomNumber(4900) + 100;
price = randomPrice / 100;
cashInput.value = `${price}`;
cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText
    .trim()
    .replace(/[.,?!]+$/g, '')
    .toLowerCase(),
  'no change due - customer paid with exact cash'
);
```

Cuando `price` es `19.5`, el valor en el elemento `#cash` es `20`, `cid` es `[["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]`, y se hace clicl en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser: `"Status: OPEN QUARTER: $0.5"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price, customer cash, and cid
price = 19.5;
cashInput.value = 20;
cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

const expected = ['Status: OPEN', 'QUARTER: $0.5'];
cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
const result = changeDueDiv.innerText.trim().toLowerCase();
assert.isTrue(expected.every(str => result.includes(str.toLowerCase())));
const notExpected = [
  /PENNY/,
  /NICKEL/,
  /DIME/,
  /ONE [^H]/,
  /FIVE/,
  /TEN/,
  /TWENTY/,
  /ONE HUNDRED/
];
assert.isTrue(!notExpected.some(regex => result.match(new RegExp(regex, 'i'))));
```

Cuando `price` es `3.26`, el valor del elemento `#cash` es `100`, `cid` es `[["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]`, y se hace clic en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser: `"Status: OPEN TWENTY: $60 TEN: $20 FIVE: $15 ONE: $1 QUARTER: $0.5 DIME: $0.2 PENNY: $0.04"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price, customer cash, and cid
price = 3.26;
cashInput.value = 100;
cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

const expected = [
  'Status: OPEN',
  'TWENTY: $60',
  'TEN: $20',
  'FIVE: $15',
  'ONE: $1',
  'QUARTER: $0.5',
  'DIME: $0.2',
  'PENNY: $0.04'
];
cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
const result = changeDueDiv.innerText.trim().toLowerCase();
assert.isTrue(expected.every(str => result.includes(str.toLowerCase())));
const notExpected = [/NICKEL/];
assert.isTrue(!notExpected.some(regex => result.match(new RegExp(regex, 'i'))));
```

Cuando `price` es menor que el valor del elemento `#cash`, el efectivo total en `cid` es mayor que el cambio, los importes de cada denominación permiten devolver el cambio debido, y se hace clic en el elemento `#purchase-btn`, entonces el valor en el elemento `#change-due` debe ser `"Status: OPEN"` con su cambio debido en monedas y billetes ordenados de mayor a menor.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');

// Min $50, max $100, changes by $10, in cents.
const randomCash = _randomNumber(5) * 1000 + 5000;
// Min $5.00, max $30.00, changes by $0.01, in cents.
const randomChange = _randomNumber(2500) + 500;
price = (randomCash - randomChange) / 100;
cashInput.value = `${randomCash / 100}`;

let changeLeft = randomChange;
const _expectedChangeDue = [];
const _cashInDrawer = [];
for (const [denominationName, denomination] of _money) {
  const drawerCount = _randomNumber(15);
  _cashInDrawer.push([denominationName, (denomination * drawerCount) / 100]);
  if (denomination <= changeLeft && drawerCount > 0) {
    const maxCountInChange = Math.floor(changeLeft / denomination);
    const actualCount = Math.min(drawerCount, maxCountInChange);
    const amountInChange = actualCount * denomination;
    _expectedChangeDue.push([denominationName, amountInChange / 100]);
    changeLeft -= amountInChange;
  }
}

// At least changeLeft is needed in pennies, to make returning change due possible.
const drawerCount = _randomNumber(100) + changeLeft;
_cashInDrawer.push(['PENNY', drawerCount / 100]);
if (changeLeft > 0) {
  _expectedChangeDue.push(['PENNY', changeLeft / 100]);
}

cid = _cashInDrawer.reverse();
const expected = [
  'Status: OPEN',
  ..._expectedChangeDue
    .reverse()
    .map(([denominationName, amount]) => `${denominationName}: $${amount}`)
];
const notExpected = _denomRegexes.filter(
  regex => !expected.some(change => change.match(new RegExp(regex, 'i')))
);

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
const result = changeDueDiv.innerText.trim().toLowerCase();
assert.isTrue(expected.every(str => result.includes(str.toLowerCase())));
assert.isTrue(!notExpected.some(regex => result.match(new RegExp(regex, 'i'))));
```

Cuando `price` es `19.5`, el valor del elemento `#cash` es `20`, `cid` es `[["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser `"Status: INSUFFICIENT_FUNDS"`

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price, customer cash, and cid
price = 19.5;
cashInput.value = 20;
cid = [
  ['PENNY', 0.01],
  ['NICKEL', 0],
  ['DIME', 0],
  ['QUARTER', 0],
  ['ONE', 0],
  ['FIVE', 0],
  ['TEN', 0],
  ['TWENTY', 0],
  ['ONE HUNDRED', 0]
];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText.trim().toLowerCase(),
  'status: insufficient_funds'
);
```

Cuando el `price` es menor que el valor del elemento `#cash` y el efectivo total en el cajón (`cid`) es insuficiente para cubrir el cambio adeudado, la compra no debe continuar. Cuando se hace clic en `#purchase-btn` en estas condiciones, el elemento `#change-due` debe mostrar `"Status: INSUFFICIENT_FUNDS"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');

// Min $50, max $100, changes by $10, in cents.
const randomCash = _randomNumber(5) * 1000 + 5000;
// Min $5.00, max $30.00, changes by $0.01, in cents.
const randomChange = _randomNumber(2500) + 500;
price = (randomCash - randomChange) / 100;
cashInput.value = `${randomCash / 100}`;

let changeLeft = randomChange;
const _cashInDrawer = [];
for (const [denominationName, denomination] of _money) {
  const maxCountInChange = Math.floor(changeLeft / denomination);
  // Amount lower than maximum (adjusted to changeLeft) will ensure total in drawer
  // will be lower than needed change.
  const drawerCount = _randomNumber(Math.max(0, Math.min(15, maxCountInChange - 1)));
  const amountInDrawer = drawerCount * denomination;
  _cashInDrawer.push([denominationName, amountInDrawer / 100]);
  if (denomination <= changeLeft && drawerCount > 0) {
    changeLeft -= amountInDrawer;
  }
}

// Less pennies than changeLeft makes sure total cash in drawer is less than change due.
const count = _randomNumber(Math.min(15, changeLeft - 1));
_cashInDrawer.push(['PENNY', count / 100]);

cid = _cashInDrawer.reverse();

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText.trim().toLowerCase(),
  'status: insufficient_funds'
);
```

Cuando `price` es `19.5`, el valor del elemento `#cash` es `20`, `cid` es `[["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 1], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser `"Status: INSUFFICIENT_FUNDS"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price, customer cash, and cid
price = 19.5;
cashInput.value = 20;
cid = [
  ['PENNY', 0.01],
  ['NICKEL', 0],
  ['DIME', 0],
  ['QUARTER', 0],
  ['ONE', 1],
  ['FIVE', 0],
  ['TEN', 0],
  ['TWENTY', 0],
  ['ONE HUNDRED', 0]
];

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText.trim().toLowerCase(),
  'status: insufficient_funds'
);
```


Cuando `price` es menor que el valor en el elemento `#cash`, el efectivo total en el cajón `cid` es mayor que el cambio adeudado, pero los montos de denominación individuales hacen que sea imposible devolver el cambio necesario; cuando se hace clic en el elemento `#purchase-btn`, el valor en el elemento `#change-due` debe ser `"Status: INSUFFICIENT_FUNDS"`

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');

// Min $50, max $100, changes by $10, in cents.
const randomCash = _randomNumber(5) * 1000 + 5000;
// Min $5.00, max $30.00, changes by $0.01, in cents.
const randomChange = _randomNumber(2500) + 500;
price = (randomCash - randomChange) / 100;
cashInput.value = `${randomCash / 100}`;

let changeLeft = randomChange;
const _expectedChangeDue = [];
const _cashInDrawer = [];
for (const [denominationName, denomination] of _money) {
  const maxCountInChange = Math.floor(changeLeft / denomination);
  // If denomination can complete required changeLeft, available amount in drawer cannot
  // equal the maximum. Otherwise count in drawer can be greater than maximum count in change.
  let defaultAmount = denomination < 100 ? 3 : 15
  const drawerCount = _randomNumber(
    changeLeft % denomination === 0 ? Math.min(defaultAmount, maxCountInChange - 1) : defaultAmount
  );
  const amountInDrawer = drawerCount * denomination;
  _cashInDrawer.push([denominationName, amountInDrawer / 100]);
  const changeCount = Math.min(drawerCount, maxCountInChange);
  if (denomination <= changeLeft && changeCount > 0) {
    changeLeft -= changeCount * denomination;
  }
}

// Less pennies than changeLeft makes impossible to return change due.
const drawerCount = _randomNumber(Math.min(15, changeLeft - 1));
_cashInDrawer.push(['PENNY', drawerCount / 100]);

cid = _cashInDrawer.reverse();

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
assert.strictEqual(
  changeDueDiv.innerText.trim().toLowerCase(),
  'status: insufficient_funds'
);
```

Cuando `price` es `19.5`, el valor del elemento `#cash` es `20`, `cid` es `[["PENNY", 0.5], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]`, y se hace clic en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser `"Status: CLOSED PENNY: $0.5"`.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');
// set price, customer cash, and cid
price = 19.5;
cashInput.value = 20;
cid = [
  ['PENNY', 0.5],
  ['NICKEL', 0],
  ['DIME', 0],
  ['QUARTER', 0],
  ['ONE', 0],
  ['FIVE', 0],
  ['TEN', 0],
  ['TWENTY', 0],
  ['ONE HUNDRED', 0]
];

const expected = ['Status: CLOSED', 'PENNY: $0.5'];
cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
const result = changeDueDiv.innerText.trim().toLowerCase();
assert.isTrue(expected.every(str => result.includes(str.toLowerCase())));
const notExpected = [
  /NICKEL/,
  /DIME/,
  /QUARTER/,
  /ONE [^H]/,
  /FIVE/,
  /TEN/,
  /TWENTY/,
  /ONE HUNDRED/
];
assert.isTrue(!notExpected.some(regex => result.match(new RegExp(regex, 'i'))));
```

Cuando `price` es menor que el valor del elemento `#cash`, el efectivo total en `cid` es igual al cambio, y se hace clic en el elemento `#purchase-btn`, entonces el valor del elemento `#change-due` debe ser `"Status: CLOSED"` with change due in coins and bills sorted in highest to lowest order.

```js
const cashInput = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const changeDueDiv = document.getElementById('change-due');

// Min $50, max $100, changes by $10, in cents.
const randomCash = _randomNumber(5) * 1000 + 5000;
// Min $5.00, max $30.00, changes by $0.01, in cents.
const randomChange = _randomNumber(2500) + 500;
price = (randomCash - randomChange) / 100;
cashInput.value = `${randomCash / 100}`;

let changeLeft = randomChange;
const _expectedChangeDue = [];
const _cashInDrawer = [];
for (const [denominationName, denomination] of _money) {
  const maxCountInChange = Math.floor(changeLeft / denomination);
  const drawerCount = _randomNumber(maxCountInChange);
  const amountInDrawer = drawerCount * denomination;
  _cashInDrawer.push([denominationName, amountInDrawer / 100]);
  if (denomination <= changeLeft && drawerCount > 0) {
    _expectedChangeDue.push([denominationName, amountInDrawer / 100]);
    changeLeft -= amountInDrawer;
  }
}

// Pennies equal to changeLeft makes sure total cash in drawer is equal to change due.
_cashInDrawer.push(['PENNY', changeLeft / 100]);
if (changeLeft > 0) {
  _expectedChangeDue.push(['PENNY', changeLeft / 100]);
}

cid = _cashInDrawer.reverse();
const expected = [
  'Status: CLOSED',
  ..._expectedChangeDue
    .reverse()
    .map(([denominationName, amount]) => `${denominationName}: $${amount}`)
];
const notExpected = _denomRegexes.filter(
  regex => !expected.some(change => change.match(new RegExp(regex, 'i')))
);

cashInput.dispatchEvent(new Event('change'));
purchaseBtn.click();
const result = changeDueDiv.innerText.trim().toLowerCase();
assert.isTrue(expected.every(str => result.includes(str.toLowerCase())));
assert.isTrue(!notExpected.some(regex => result.match(new RegExp(regex, 'i'))));
```

# --seed--

## --seed-contents--

```html

```

```css

```

```js
let price = 1.87;
let cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="icon"
      type="image/png"
      href="https://cdn.freecodecamp.org/universal/favicons/favicon.ico"
    />
    <title>Cash Register</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <main>
      <img
        class="freecodecamp-logo"
        src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg"
        alt="freeCodeCamp Logo"
      />
      <h1>Cash Register Project</h1>
      <div id="change-due"></div>
      <div class="input-div">
        <label for="cash">Enter cash from customer:</label>
        <input type="number" id="cash" class="user-input" value="" />
        <button class="check-btn-styles" id="purchase-btn">Purchase</button>
      </div>
      <div class="container">
        <div class="top-display-screen-container">
          <p id="price-screen" class="price-screen"></p>
          <div class="connector"></div>
        </div>
        <div class="top-register">
          <div class="btns-container">
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
            <button class="btn"></button>
          </div>
          <div id="cash-drawer-display" class="cash-drawer-display"></div>
        </div>
        <div class="bottom-register">
          <div class="circle"></div>
        </div>
      </div>
    </main>
    <script src="./script.js"></script>
  </body>
</html>
```

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

:root {
  --light-gray: #dfdfe2;
  --dark-blue: #0a0a23;
}

body {
  background-color: var(--dark-blue);
  color: var(--light-gray);
}

main {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 40px 10px;
}

.freecodecamp-logo {
  width: 100%;
  height: 30px;
  margin-bottom: 20px;
}

h1 {
  font-size: 2.5rem;
  margin: 20px 0;
  text-align: center;
}

#change-due {
  text-align: left;
  font-size: 1.2rem;
}

.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.input-div {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin: 10px 0 20px;
}

label {
  font-size: 18px;
}

.user-input {
  height: 30px;
  padding: 10px;
  margin: 10px;
  font-size: 15px;
}

.price-screen {
  border: 10px solid #99c9ff;
  background-color: black;
  height: 50px;
  width: 200px;
  margin-left: -40px;
  color: white;
  font-size: 1.2rem;
  text-align: center;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
}

#price {
  font-size: 1.5rem;
  text-align: center;
}

.connector {
  margin-left: -20px;
  background-color: #99c9ff;
  height: 30px;
  width: 40px;
}

.top-register {
  display: flex;
  justify-content: space-around;
  border-radius: 35px 35px 0 0;
  padding-top: 20px;
  background-color: #99c9ff;
  height: 250px;
  width: 325px;
}

.btns-container {
  width: 25%;
}

.btn {
  border-radius: 10%;
  border: none;
  width: 20px;
  height: 20px;
  background-color: black;
}

.check-btn-styles {
  cursor: pointer;
  width: 100px;
  height: 30px;
  margin: 10px;
  color: #0a0a23;
  font-size: 18px;
  font-weight: bold;
  background-color: #feac32;
  background-image: linear-gradient(#fecc4c, #ffac33);
  border-color: #feac32;
  border-width: 3px;
}

.cash-drawer-display {
  font-size: 1.1rem;
  background-color: white;
  width: 55%;
  height: 95%;
  color: black;
  padding: 10px;
}

.bottom-register {
  background-color: #99c9ff;
  height: 50px;
  width: 325px;
  margin-top: 10px;
}

.circle {
  margin: 15px auto;
  border-radius: 50%;
  width: 20px;
  height: 20px;
  background-color: black;
}
```

```js
let price = 3.26;
let cid = [
  ['PENNY', 1.01],
  ['NICKEL', 2.05],
  ['DIME', 3.1],
  ['QUARTER', 4.25],
  ['ONE', 90],
  ['FIVE', 55],
  ['TEN', 20],
  ['TWENTY', 60],
  ['ONE HUNDRED', 100]
];

const displayChangeDue = document.getElementById('change-due');
const cash = document.getElementById('cash');
const purchaseBtn = document.getElementById('purchase-btn');
const priceScreen = document.getElementById('price-screen');
const cashDrawerDisplay = document.getElementById('cash-drawer-display');

const formatResults = (status, change) => {
  displayChangeDue.innerHTML = `<p>Status: ${status}</p>`;
  displayChangeDue.innerHTML += change
    .map(
      ([denominationName, amount]) => `<p>${denominationName}: $${amount}</p>`
    )
    .join('');
};

const checkCashRegister = () => {
  const cashInCents = Math.round(Number(cash.value) * 100);
  const priceInCents = Math.round(price * 100);
  if (cashInCents < priceInCents) {
    alert('Customer does not have enough money to purchase the item');
    cash.value = '';
    return;
  }

  if (cashInCents === priceInCents) {
    displayChangeDue.innerHTML =
      '<p>No change due - customer paid with exact cash</p>';
    cash.value = '';
    return;
  }

  let changeDue = cashInCents - priceInCents;
  const reversedCid = [...cid]
    .reverse()
    .map(([denominationName, amount]) => [
      denominationName,
      Math.round(amount * 100)
    ]);
  const denominations = [10000, 2000, 1000, 500, 100, 25, 10, 5, 1];
  const result = { status: 'OPEN', change: [] };
  const totalCID = reversedCid.reduce((prev, [_, amount]) => prev + amount, 0);

  if (totalCID < changeDue) {
    displayChangeDue.innerHTML = '<p>Status: INSUFFICIENT_FUNDS</p>';
    return;
  }

  if (totalCID === changeDue) {
    result.status = 'CLOSED';
  }

  for (let i = 0; i <= reversedCid.length; i++) {
    if (changeDue >= denominations[i] && changeDue > 0) {
      const [denominationName, total] = reversedCid[i];
      const possibleChange = Math.min(total, changeDue);
      const count = Math.floor(possibleChange / denominations[i]);
      const amountInChange = count * denominations[i];
      changeDue -= amountInChange;

      if (count > 0) {
        result.change.push([denominationName, amountInChange / 100]);
      }
    }
  }
  if (changeDue > 0) {
    displayChangeDue.innerHTML = '<p>Status: INSUFFICIENT_FUNDS</p>';
    return;
  }

  formatResults(result.status, result.change);
  updateUI(result.change);
};

const checkResults = () => {
  if (!cash.value) {
    return;
  }
  checkCashRegister();
};

const updateUI = change => {
  const currencyNameMap = {
    PENNY: 'Pennies',
    NICKEL: 'Nickels',
    DIME: 'Dimes',
    QUARTER: 'Quarters',
    ONE: 'Ones',
    FIVE: 'Fives',
    TEN: 'Tens',
    TWENTY: 'Twenties',
    'ONE HUNDRED': 'Hundreds'
  };
  // Update cid if change is passed in
  if (change) {
    change.forEach(([changeDenomination, changeAmount]) => {
      const targetArr = cid.find(
        ([denominationName, _]) => denominationName === changeDenomination
      );
      targetArr[1] =
        (Math.round(targetArr[1] * 100) - Math.round(changeAmount * 100)) / 100;
    });
  }

  cash.value = '';
  priceScreen.textContent = `Total: $${price}`;
  cashDrawerDisplay.innerHTML = `<p><strong>Change in drawer:</strong></p>
    ${cid
      .map(
        ([denominationName, amount]) =>
          `<p>${currencyNameMap[denominationName]}: $${amount}</p>`
      )
      .join('')}
  `;
};

purchaseBtn.addEventListener('click', checkResults);

cash.addEventListener('keydown', e => {
  if (e.key === 'Enter') {
    checkResults();
  }
});

updateUI();
```
