---
id: 6af77072c5aad1645eedfdfa
title: Paso 22
challengeType: 20
dashedName: step-22
---

# --description--

Ahora puedes publicar una nueva versión. Como `release_version` devuelve una nueva tupla, necesitas reasignar el resultado a `releases`.

Al final de tu código, llama a `release_version` con `releases` y la cadena `minor` como argumentos, y asigna el resultado a `releases`.

Luego, desempaqueta el resultado de llamar a `check_for_update` con `(2, 2, 1)` y `releases` en `status` y `latest_version`, e imprímelos de la misma manera que antes. La versión `2.2.1` ya no es la más reciente.

# --hints--

Debes llamar a `release_version` con `releases` y la cadena `minor` como argumentos, y asignar el resultado a `releases`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("releases = release_version(releases, 'minor')")
`) });
```

Debes desempaquetar el resultado de llamar a `check_for_update` con `(2, 2, 1)` y `releases` en `status` y `latest_version` después de publicar la nueva versión.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered(
  "releases = release_version(releases, 'minor')",
  "status, latest_version = check_for_update((2, 2, 1), releases)"
)
`) });
```

Debes imprimir la cadena `Status:` seguida de un espacio y el valor de `status`, y la cadena `Latest version:` seguida de un espacio y el valor de `latest_version`, después de la nueva llamada a `check_for_update`.

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
