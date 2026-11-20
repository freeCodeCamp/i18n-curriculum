---
id: 6af77072c5aad1645eedfdfa
title: 22단계
challengeType: 20
dashedName: step-22
---

# --description--

이제 새 릴리스를 게시할 수 있습니다. `release_version`이 새로운 튜플을 반환하므로 결과를 `releases`에 다시 할당해야 합니다.

코드 끝에서 `release_version`을 `releases`와 문자열 `minor`를 인수로 호출하고 결과를 `releases`에 할당하세요.

그런 다음 `(2, 2, 1)`과 `releases`를 인수로 `check_for_update`를 호출한 결과를 `status`와 `latest_version`으로 풀고, 이전과 같은 방식으로 출력하세요. 버전 `2.2.1`은 더 이상 최신 버전이 아닙니다.

# --hints--

`release_version`을 `releases`와 문자열 `minor`를 인수로 호출하고 결과를 `releases`에 할당해야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("releases = release_version(releases, 'minor')")
`) });
```

새 버전을 릴리스한 후 `(2, 2, 1)`과 `releases`를 인수로 `check_for_update`를 호출한 결과를 `status`와 `latest_version`으로 풀어야 합니다.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered(
  "releases = release_version(releases, 'minor')",
  "status, latest_version = check_for_update((2, 2, 1), releases)"
)
`) });
```

새로운 `check_for_update` 호출 후에 문자열 `Status:` 다음에 공백과 `status` 값을, 그리고 문자열 `Latest version:` 다음에 공백과 `latest_version` 값을 출력해야 합니다.

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
