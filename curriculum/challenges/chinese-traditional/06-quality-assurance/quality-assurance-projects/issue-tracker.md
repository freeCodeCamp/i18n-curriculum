---
id: 587d8249367417b2b2512c42
title: 問題跟蹤器
challengeType: 4
forumTopicId: 301569
dashedName: issue-tracker
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://issue-tracker.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://issue-tracker.freecodecamp.rocks/</a>. Working on this project will involve you writing your code using one of the following methods:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-issuetracker/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

-   Complete the necessary routes in `/routes/api.js`
-   在 `tests/2_functional-tests.js` 中創建所有的功能測試
-   複製 `sample.env` 文件到 `.env` 並按需設置變量
-   To run the tests automatically, add `NODE_ENV=test` in your `.env` file
-   To run the tests in the console, use the command `npm run test`

Write the following tests in `tests/2_functional-tests.js`:

-   Create an issue with every field: POST request to `/api/issues/{project}`
-   用必填字段創建 issue：POST 請求到 `/api/issues/{project}`
-   用缺失必填字段創建 issue：POST 請求到 `/api/issues/{project}`
-   查看 project 裏的 issue：GET 請求到 `/api/issues/{project}`
-   用 filter 過濾 project 裏的 issue：GET 請求到 `/api/issues/{project}`
-   用多個 filter 過濾 project 裏的 issue：GET 請求到 `/api/issues/{project}`
-   更新 issue 裏的一個字段：PUT 請求到 `/api/issues/{project}`
-   更新 issue 裏的多個字段：PUT 請求到 `/api/issues/{project}`
-   在缺少 `_id` 字段的情況下更新 issue: PUT 請求到 `/api/issues/{project}`
-   在沒有字段更新的情況下調用更新：PUT 請求到 `/api/issues/{project}`
-   傳入一個無效的的 `_id` 來調用更新：PUT 請求到 `/api/issues/{project}`
-   刪除一個 issue：DELETE 請求到 `/api/issues/{project}`
-   傳入一個無效的的 `_id` 來調用刪除：DELETE 請求到 `/api/issues/{project}`
-   在缺失 `_id` 的情況下來調用刪除：DELETE 請求到 `/api/issues/{project}`

# --hints--

提交自己的項目，而不是示例的 URL。

```js
  assert(!/.*\/issue-tracker\.freecodecamp\.rocks/.test(code));
```

You can send a `POST` request to `/api/issues/{projectname}` with form data containing the required fields `issue_title`, `issue_text`, `created_by`, and optionally `assigned_to` and `status_text`.

```js
async () => {
  try {
    let test_data = {
      issue_title: 'Faux Issue Title',
      issue_text: 'Functional Test - Required Fields Only',
      created_by: 'fCC'
    };
    const data = await $.post(
      code + '/api/issues/fcc-project',
      test_data
    );
    assert.isObject(data);
    assert.nestedInclude(data, test_data);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

The `POST` request to `/api/issues/{projectname}` will return the created object, and must include all of the submitted fields. Excluded optional fields will be returned as empty strings. Additionally, include `created_on` (date/time), `updated_on` (date/time), `open` (boolean, `true` for open - default value, `false` for closed), and `_id`.

```js
async () => {
  try {
    let test_data = {
      issue_title: 'Faux Issue Title 2',
      issue_text: 'Functional Test - Every field filled in',
      created_by: 'fCC',
      assigned_to: 'Chai and Mocha'
    };
    const data = await $.post(
      code + '/api/issues/fcc-project',
      test_data
    );
    assert.isObject(data);
    assert.nestedInclude(data, test_data);
    assert.property(data, 'created_on');
    assert.isNumber(Date.parse(data.created_on));
    assert.property(data, 'updated_on');
    assert.isNumber(Date.parse(data.updated_on));
    assert.property(data, 'open');
    assert.isBoolean(data.open);
    assert.isTrue(data.open);
    assert.property(data, '_id');
    assert.isNotEmpty(data._id);
    assert.property(data, 'status_text');
    assert.isEmpty(data.status_text);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

If you send a `POST` request to `/api/issues/{projectname}` without the required fields, returned will be the error `{ error: 'required field(s) missing' }`

```js
async () => {
  try {
    let test_data = { created_by: 'fCC' };
    const data = await $.post(code + '/api/issues/fcc-project', {
      created_by: 'fCC'
    });
    assert.isObject(data);
    assert.property(data, 'error');
    assert.equal(data.error, 'required field(s) missing');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

You can send a `GET` request to `/api/issues/{projectname}` for an array of all issues for that specific `projectname`, with all the fields present for each issue.

```js
async () => {
  try {
    let test_data = { issue_text: 'Get Issues Test', created_by: 'fCC' };
    const url =
      code +
      '/api/issues/get_issues_test_' +
      Date.now().toString().substring(7);
    const data1 = await $.post(
      url,
      Object.assign(test_data, { issue_title: 'Faux Issue 1' })
    );
    assert.isObject(data1);
    const data2 = await $.post(
      url,
      Object.assign(test_data, { issue_title: 'Faux Issue 2' })
    );
    assert.isObject(data2);
    const data3 = await $.post(
      url,
      Object.assign(test_data, { issue_title: 'Faux Issue 3' })
    );
    assert.isObject(data3);
    const getIssues = await $.get(url);
    assert.isArray(getIssues);
    assert.lengthOf(getIssues, 3);
    let re = new RegExp('Faux Issue \\d');
    getIssues.forEach((issue) => {
      assert.property(issue, 'issue_title');
      assert.match(issue.issue_title, re);
      assert.property(issue, 'issue_text');
      assert.property(issue, 'created_by');
      assert.property(issue, 'assigned_to');
      assert.property(issue, 'status_text');
      assert.property(issue, 'open');
      assert.property(issue, 'created_on');
      assert.property(issue, 'updated_on');
      assert.property(issue, '_id');
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

You can send a `GET` request to `/api/issues/{projectname}` and filter the request by also passing along any field and value as a URL query (ie. `/api/issues/{project}?open=false`). You can pass one or more field/value pairs at once.

```js
async () => {
  try {
    let test_data = {
      issue_title: 'To be Filtered',
      issue_text: 'Filter Issues Test'
    };
    const url =
      code +
      '/api/issues/get_issues_test_' +
      Date.now().toString().substring(7);
    const data1 = await $.post(
      url,
      Object.assign(test_data, { created_by: 'Alice', assigned_to: 'Bob' })
    );
    const data2 = await $.post(
      url,
      Object.assign(test_data, { created_by: 'Alice', assigned_to: 'Bob' })
    );
    const data3 = await $.post(
      url,
      Object.assign(test_data, { created_by: 'Alice', assigned_to: 'Eric' })
    );
    const data4 = await $.post(
      url,
      Object.assign(test_data, { created_by: 'Carol', assigned_to: 'Eric' })
    );
    const getSingle = await $.get(url + '?created_by=Alice');
    assert.isArray(getSingle);
    assert.lengthOf(getSingle, 3);
    const getMultiple = await $.get(url + '?created_by=Alice&assigned_to=Bob');
    assert.isArray(getMultiple);
    assert.lengthOf(getMultiple, 2);
    const copyId = getMultiple[0]._id;
    const getById = await $.get(url + `?_id=${copyId}`);
    assert.isArray(getById);
    assert.lengthOf(getById, 1);
    assert.equal(getById[0]._id, copyId, 'should be able to query a document by _id')
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

You can send a `PUT` request to `/api/issues/{projectname}` with an `_id` and one or more fields to update. On success, the `updated_on` field should be updated, and returned should be `{  result: 'successfully updated', '_id': _id }`.

```js
async () => {
  try {
    let initialData = {
      issue_title: 'Issue to be Updated',
      issue_text: 'Functional Test - Put target',
      created_by: 'fCC'
    };
    const url = code + '/api/issues/fcc-project';
    const itemToUpdate = await $.post(url, initialData);
    const updateSuccess = await $.ajax({
      url: url,
      type: 'PUT',
      data: { _id: itemToUpdate._id, issue_text: 'New Issue Text' }
    });
    assert.isObject(updateSuccess);
    assert.deepEqual(updateSuccess, {
      result: 'successfully updated',
      _id: itemToUpdate._id
    });
    const getUpdatedId = await $.get(url + '?_id=' + itemToUpdate._id);
    assert.isArray(getUpdatedId);
    assert.isObject(getUpdatedId[0]);
    assert.isAbove(
      Date.parse(getUpdatedId[0].updated_on),
      Date.parse(getUpdatedId[0].created_on)
    );
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

When the `PUT` request sent to `/api/issues/{projectname}` does not include an `_id`, the return value is `{ error: 'missing _id' }`.

```js
async () => {
  try {
    const url = code + '/api/issues/fcc-project';
    const badUpdate = await $.ajax({ url: url, type: 'PUT' });
    assert.isObject(badUpdate);
    assert.property(badUpdate, 'error');
    assert.equal(badUpdate.error, 'missing _id');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

When the `PUT` request sent to `/api/issues/{projectname}` does not include update fields, the return value is `{ error: 'no update field(s) sent', '_id': _id }`. On any other error, the return value is `{ error: 'could not update', '_id': _id }`.

```js
async () => {
  try {
    const url = code + '/api/issues/fcc-project';
    const badUpdate = await $.ajax({
      url: url,
      type: 'PUT',
      data: { _id: '5f665eb46e296f6b9b6a504d' }
    });
    assert.deepEqual(badUpdate, {
      error: 'no update field(s) sent',
      _id: '5f665eb46e296f6b9b6a504d'
    });
    const badIdUpdate = await $.ajax({
      url: url,
      type: 'PUT',
      data: { _id: '5f665eb46e296f6b9b6a504d', issue_text: 'New Issue Text' }
    });
    assert.deepEqual(badIdUpdate, {
      error: 'could not update',
      _id: '5f665eb46e296f6b9b6a504d'
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

You can send a `DELETE` request to `/api/issues/{projectname}` with an `_id` to delete an issue. If no `_id` is sent, the return value is `{ error: 'missing _id' }`. On success, the return value is `{ result: 'successfully deleted', '_id': _id }`. On failure, the return value is `{ error: 'could not delete', '_id': _id }`.

```js
async () => {
  try {
    let initialData = {
      issue_title: 'Issue to be Deleted',
      issue_text: 'Functional Test - Delete target',
      created_by: 'fCC'
    };
    const url = code + '/api/issues/fcc-project';
    const itemToDelete = await $.post(url, initialData);
    assert.isObject(itemToDelete);
    const deleteSuccess = await $.ajax({
      url: url,
      type: 'DELETE',
      data: { _id: itemToDelete._id }
    });
    assert.isObject(deleteSuccess);
    assert.deepEqual(deleteSuccess, {
      result: 'successfully deleted',
      _id: itemToDelete._id
    });
    const noId = await $.ajax({ url: url, type: 'DELETE' });
    assert.isObject(noId);
    assert.deepEqual(noId, { error: 'missing _id' });
    const badIdDelete = await $.ajax({
      url: url,
      type: 'DELETE',
      data: { _id: '5f665eb46e296f6b9b6a504d', issue_text: 'New Issue Text' }
    });
    assert.isObject(badIdDelete);
    assert.deepEqual(badIdDelete, {
      error: 'could not delete',
      _id: '5f665eb46e296f6b9b6a504d'
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

All 14 functional tests are complete and passing.

```js
async () => {
  try {
    const getTests = await $.get(code + '/_api/get-tests');
    assert.isArray(getTests);
    assert.isAtLeast(getTests.length, 14, 'At least 14 tests passed');
    getTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

