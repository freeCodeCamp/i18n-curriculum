---
id: 61fd986ddbcbd47ba8fbc5ec
title: Крок 23
challengeType: 0
dashedName: step-23
---

# --description--

До третього `tr` додайте елемент `th` з текстом `Credit The outstanding balance on our credit card.`. Обгорніть цей текст, окрім `Credit`, елементом `span` з `class` зі значенням `description`.

Додайте під ним три елементи `td` та надайте їм такий текст, за порядком: `$50`, `$50` та `$75`. Третьому елементу `td` потрібно надати `class` зі значенням `current`.

# --hints--

Ваш третій `tr` повинен мати елемент `th`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.isNotNull(tableRow?.querySelector('th'));
```

Ваш елемент `th` повинен мати текст `Credit The outstanding balance on our credit card.`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.strictEqual(
  tableRow?.querySelector('th')?.innerText.trim(),
  'Credit The outstanding balance on our credit card.'
);
```

Ви повинні обгорнути текст `The outstanding balance on our credit card.` в елемент `span`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.strictEqual(
  tableRow?.querySelector('th > span')?.textContent.trim(),
  'The outstanding balance on our credit card.'
);
```

Ваш елемент `span` повинен мати атрибут `class` зі значенням `description`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.isTrue(
  tableRow?.querySelector('th > span')?.classList?.contains('description')
);
```

Ви повинні мати три елементи `td`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.lengthOf(tableRow?.querySelectorAll('td'), 3);
```

Ваш перший елемент `td` повинен мати текст `$50`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.strictEqual(tableRow?.querySelectorAll('td')?.[0]?.textContent.trim(), '$50');
```

Ваш другий елемент `td` повинен мати текст `$50`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.strictEqual(tableRow?.querySelectorAll('td')?.[1]?.textContent.trim(), '$50');
```

Ваш третій елемент `td` повинен мати текст `$75`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.strictEqual(tableRow?.querySelectorAll('td')?.[2]?.textContent.trim(), '$75');
```

Ваш третій елемент `td` повинен мати `class` зі значенням `current`.

```js
const table = document.querySelectorAll('table')?.[1];
const tbody = table?.querySelector('tbody');
const tableRow = tbody?.querySelectorAll('tr')?.[2];
assert.isTrue(
  tableRow?.querySelectorAll('td')?.[2]?.classList?.contains('current')
);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Balance Sheet</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <main>
      <section>
        <h1>
          <span class="flex">
            <span>AcmeWidgetCorp</span>
            <span>Balance Sheet</span>
          </span>
        </h1>
        <div id="years" aria-hidden="true">
          <span class="year">2019</span>
          <span class="year">2020</span>
          <span class="year">2021</span>
        </div>
        <div class="table-wrap">
          <table>
            <caption>
              Assets
            </caption>
            <thead>
              <tr>
                <td></td>
                <th><span class="sr-only year">2019</span></th>
                <th><span class="sr-only year">2020</span></th>
                <th class="current"><span class="sr-only year">2021</span></th>
              </tr>
            </thead>
            <tbody>
              <tr class="data">
                <th>Cash <span class="description">This is the cash we currently have on hand.</span></th>
                <td>$25</td>
                <td>$30</td>
                <td class="current">$28</td>
              </tr>
              <tr class="data">
                <th>Checking <span class="description">Our primary transactional account.</span></th>
                <td>$54</td>
                <td>$56</td>
                <td class="current">$53</td>
              </tr>
              <tr class="data">
                <th>Savings <span class="description">Funds set aside for emergencies.</span></th>
                <td>$500</td>
                <td>$650</td>
                <td class="current">$728</td>
              </tr>
              <tr class="total">
                <th>Total <span class="sr-only">Assets</span></th>
                <td>$579</td>
                <td>$736</td>
                <td class="current">$809</td>
              </tr>
            </tbody>
          </table>
          <table>
            <caption>
              Liabilities
            </caption>
            <thead>
              <tr>
                <td></td>
                <th><span class="sr-only">2019</span></th>
                <th><span class="sr-only">2020</span></th>
                <th><span class="sr-only">2021</span></th>
              </tr>
            </thead>
            <tbody>
--fcc-editable-region--
              <tr class="data">
                <th>Loans <span class="description">The outstanding balance on our startup loan.</span></th>
                <td>$500</td>
                <td>$250</td>
                <td class="current">$0</td>
              </tr>
              <tr class="data">
                <th>Expenses <span class="description">Annual anticipated expenses, such as payroll.</span></th>
                <td>$200</td>
                <td>$300</td>
                <td class="current">$400</td>
              </tr>
              <tr class="data">
              </tr>
              <tr class="total">
              </tr>
--fcc-editable-region--
            </tbody>
          </table>
          <table></table>
        </div>
      </section>
    </main>
  </body>
</html>
```

```css

```
