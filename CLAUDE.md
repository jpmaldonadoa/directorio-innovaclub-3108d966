# Directorio InnovaClub 2026 — contexto

Directorio web de contactos de asistentes al **Segundo InnovaClub 2026** (Gerencia de Innovación CORFO):
42 personas · 32 empresas. Se publica en GitHub Pages casi igual al HTML recibido.

## Archivos
| Archivo | Descripción |
|---|---|
| `index.html` | Página publicada = original + metas `noindex` y `no-referrer` |
| `fuente/directorio_original.html` | HTML tal como llegó (no se sube; está en .gitignore) |
| `.repo_name` | Nombre discreto del repo (`directorio-innovaclub-3108d966`), no se sube |
| `actualizar.sh` | Commit + push con token (aborta si falta el noindex) |

Datos embebidos en `const DATA = [...]` dentro del `<script>`; campos: n nombre, c empresa, r cargo,
t tel. E.164, tp tel. formateado, e lista de correos, a empresa tal como se declaró.

## Privacidad (decisión del 29-09-2026)
Los asistentes autorizaron compartir sus datos **con los demás asistentes**, no con el público.
Se optó por: sitio público + `noindex` + URL con sufijo aleatorio. No agregar el enlace a otros
sitios, no linkearlo desde el catálogo CyE ni desde el perfil. El repo público deja ver el código en github.com.

## Advertencias
- Validar el JS con `node --check` tras editar.
- El token de GitHub nunca debe quedar en el historial de git ni en el chat.
