# Total Digital Studio — Sitio corporativo

Sitio web institucional para **Total Digital Studio**, estudio de desarrollo de software.

**URL objetivo:** [https://totalstudio.github.io](https://totalstudio.github.io)

## Contenido

- Presentación corporativa formal orientada a generar confianza
- Servicios: aplicaciones, sitios web, programas, sistemas, ecosistemas y videojuegos
- Proceso de trabajo transparente
- Portafolio basado en proyectos reales publicados
- Contacto directo (correo y teléfono)
- Soporte bilingüe ES / EN

## Publicar en GitHub Pages

### 1. Crear el repositorio

1. Creá una cuenta u organización de GitHub llamada **`totalstudio`** (si aún no existe).
2. Creá un repositorio **público** llamado exactamente **`totalstudio.github.io`**.
3. No marques “Add a README” al crearlo (el repo debe estar vacío).

Enlace directo para crear el repo:

```
https://github.com/new?name=totalstudio.github.io&description=Total+Digital+Studio+-+Sitio+corporativo
```

### 2. Publicar desde tu PC

En PowerShell:

```powershell
cd "F:\AngryAxies\Juego Angry Axies navegador\totalstudio-github"
.\publicar-totalstudio.ps1
```

### 3. Activar GitHub Pages

1. En el repo → **Settings** → **Pages**
2. **Source:** Deploy from a branch
3. **Branch:** `main` → `/ (root)` → **Save**

En unos minutos el sitio estará en:

```
https://totalstudio.github.io
```

## Archivos

| Archivo | Descripción |
|---------|-------------|
| `index.html` | Página principal |
| `site.css` | Estilos corporativos |
| `i18n.js` | Traducciones ES / EN |
| `nav.js` | Menú móvil |
| `favicon.svg` | Ícono del sitio |

## Vista local

Podés abrir `index.html` directamente en el navegador, o servir la carpeta con cualquier servidor estático:

```powershell
npx --yes serve .
```
