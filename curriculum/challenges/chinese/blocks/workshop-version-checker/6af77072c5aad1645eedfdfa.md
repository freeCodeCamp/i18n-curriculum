---
id: 6af77072c5aad1645eedfdfa
title: 步骤 22
challengeType: 20
dashedName: step-22
---

# --description--

现在你可以发布一个新版本。由于 `release_version` 返回一个新的元组，你需要将结果重新赋值给 `releases`。

在你的代码末尾，调用 `release_version`，参数为 `releases` 和字串 `minor`，并将结果赋值给 `releases`。

然后，将调用 `check_for_update`，参数为 `(2, 2, 1)` 和 `releases` 的结果解包到 `status` 和 `latest_version`，并像之前一样打印它们。版本 `2.2.1` 不再是最新版本。

# --hints--

你应该调用 `release_version`，参数为 `releases` 和字串 `minor`，并将结果赋值给 `releases`。

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("releases = release_version(releases, 'minor')")
`) });
```

在发布新版本后，你应该将调用 `check_for_update`，参数为 `(2, 2, 1)` 和 `releases` 的结果解包到 `status` 和 `latest_version`。

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered(
  "releases = release_version(releases, 'minor')",
  "status, latest_version = check_for_update((2, 2, 1), releases)"
)
`) });
```

在新的 `check_for_update` 调用后，你应该打印字串 `Status:`，后跟一个空格和 `status` 的值，以及字串 `Latest version:`，后跟一个空格和 `latest_version` 的值。

```js
({ test: () => runPython(`
code = _Node(_code)
call = "status, latest_version = check_for_update((2, 2, 1), releases)"
assert any(
  code.is_ordered(call, status_print)
  for status_print in ["print(f'Status: {status}')", "print('Status:', status)", "print('Status: ' + status)"]
)
assert any(
  code.is_ordered(call, latest_print)
  for latest_print in ["print(f'Latest version: {latest_version}')", "print('Latest version:', latest_version)", "print('Latest version: ' + str(latest_version))"]
)
`) });
```

# --seed--

## --seed-contents--

```py
releases = (
    (1, 9, 0), (2, 0, 0), (1, 9, 1), (2, 1, 0),
    (2, 1, 1), (2, 2, 0), (1, 9, 2), (2, 2, 1)
)


def check_for_update(installed, releases):
    sorted_releases = tuple(sorted(releases, reverse=True))
    latest = sorted_releases[0]

    if installed not in releases:
        return 'not a known release', latest

    if installed == latest:
        return 'up to date', latest

    if installed[0] < latest[0]:
        update_type = 'major update'
    elif installed[:2] < latest[:2]:
        update_type = 'minor update'
    else:
        update_type = 'patch update'

    releases_behind = sorted_releases.index(installed)
    return f'{update_type} available, releases behind: {releases_behind}', latest


def release_version(releases, release_type, base_version=None):
    if base_version is None:
        base_version = sorted(releases, reverse=True)[0]
    elif base_version not in releases:
        print(f'{base_version} is not a known release')
        return releases

    major, minor, patch = base_version

    if release_type == 'major':
        new_version = (major + 1, 0, 0)
    elif release_type == 'minor':
        new_version = (major, minor + 1, 0)
    elif release_type == 'patch':
        new_version = (major, minor, patch + 1)
    else:
        print(f'{release_type} is not a valid release type')
        return releases

    if new_version in releases:
        print(f'{new_version} has already been released')
        return releases

    return releases + (new_version,)


status, latest_version = check_for_update((2, 1, 0), releases)
print(f'Status: {status}')
print(f'Latest version: {latest_version}')

--fcc-editable-region--

--fcc-editable-region--
```
