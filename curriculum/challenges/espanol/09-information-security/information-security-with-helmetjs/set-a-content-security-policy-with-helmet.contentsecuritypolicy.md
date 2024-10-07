---
id: 587d8249367417b2b2512c3f
title: Establece una Política de Seguridad de Contenido con helmet.contentSecurityPolicy()
challengeType: 2
forumTopicId: 301585
dashedName: set-a-content-security-policy-with-helmet-contentsecuritypolicy
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

Este desafío marca una nueva defensa prometedora que puede significativamente reducir el riesgo e impacto de muchos tipos de ataques en navegadores modernos. Estableciendo y configurando una Política de Seguridad de Contenido puedes prevenir la inyección de cualquier no intencionado en tu página. Esto protegerá tu app de vulnerabilidades XSS, seguimientos no deseados, marcos maliciosos, y mucho más. CSP trabaja defendiendo una lista de fuentes de contenido permitidas las cuales son confiables. Puedes configurarlas para cada tipo de recurso que una página web pueda necesitar (scripts, hojas de estilo, fuentes, marcos, medios, etc...). Hay multiples directivas disponibles, entonces un propietario de un sitio web puede tener un control granular. Vea HTML 5 Rocks, KeyCDN para más detalles. Desafortunadamente CSP no está soportado por navegadores antiguos.

Por defecto, directivas son ampliamente abiertas, entonces es importante la directiva defaultSrc de reserva. Helmet suporta ambos defaultSrc y default-src estilos de nomenclatura. La reserva aplica para la mayoría de directivas no específicadas.

# --instructions--

En este ejercicio, usa `helmet.contentSecurityPolicy()`. Configurala agregando un objeto `directives`. En eI objeto, establece el `defaultSrc` a `["'self'"]` (la lista de fuentes permitidas debe ser un arreglo), en orden para confiar solo en la dirección de tu sitio web por defecto. También establece la directiva `scriptSrc` para que permita solo descargar scripts desde tu sitio web (`'self'`), y desde el dominio `'trusted-cdn.com'`.

Pista: en la palabra clave `'self'`, las comillas simples son partes de la misma palabra clave, entonces se necesita ser encerradas entre comillas dobles para funcionar.

# --hints--

helmet.contentSecurityPolicy() middleware debe ser montado correctamente

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'csp');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Tu configuración csp no es correcta. defaultSrc debería ser ["'self'"] y scriptSrc debe ser ["'self'", 'trusted-cdn.com']

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/app-info').then(
    (data) => {
      var cspHeader = Object.keys(data.headers).filter(function (k) {
        return (
          k === 'content-security-policy' ||
          k === 'x-webkit-csp' ||
          k === 'x-content-security-policy'
        );
      })[0];
      assert.equal(
        data.headers[cspHeader],
        "default-src 'self'; script-src 'self' trusted-cdn.com"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```
