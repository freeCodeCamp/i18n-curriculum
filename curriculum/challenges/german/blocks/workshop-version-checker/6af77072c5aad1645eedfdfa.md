---
id: 6af77072c5aad1645eedfdfa
title: Schritt 22
challengeType: 20
dashedName: step-22
---

# --description--

Jetzt können Sie eine neue Version veröffentlichen. Da `release_version` ein neues Tuple zurückgibt, müssen Sie das Ergebnis erneut `releases` zuweisen.

Rufen Sie am Ende Ihres Codes `release_version` mit `releases` und dem String `minor` als Argumente auf, und weisen Sie das Ergebnis `releases` zu.

Entpacken Sie dann das Ergebnis des Aufrufs von `check_for_update` mit `(2, 2, 1)` und `releases` in `status` und `latest_version` und geben Sie sie wie zuvor aus. Die Version `2.2.1` ist nicht mehr die neueste.

# --hints--

Sie sollten `release_version` mit `releases` und dem String `minor` als Argumente aufrufen und das Ergebnis `releases` zuweisen.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("releases = release_version(releases, 'minor')")
`) });
```

Sie sollten das Ergebnis des Aufrufs von `check_for_update` mit `(2, 2, 1)` und `releases` nach der Veröffentlichung der neuen Version in `status` und `latest_version` entpacken.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered(
  "releases = release_version(releases, 'minor')",
  "status, latest_version = check_for_update((2, 2, 1), releases)"
)
`) });
```

Sie sollten nach dem neuen Aufruf von `check_for_update` den String `Status:` gefolgt von einem Leerzeichen und dem Wert von `status` sowie den String `Latest version:` gefolgt von einem Leerzeichen und dem Wert von `latest_version` ausgeben.

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
