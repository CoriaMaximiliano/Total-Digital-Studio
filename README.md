# Total Digital Studio — Sitio corporativo

Sitio web institucional para **Total Digital Studio**, estudio de desarrollo de software.

**URL publicada:** [https://coriamaximiliano.github.io/Angry-Axies/total-digital-studio/](https://coriamaximiliano.github.io/Angry-Axies/total-digital-studio/)

> **Nota:** La URL `coriamaximiliano.github.io/Total-Digital-Studio/` da 404 hasta activar GitHub Pages en ese repo (Settings → Pages → branch `main`). La URL de arriba funciona ya porque usa el Pages activo de Angry-Axies.

## Contenido

- Presentación corporativa formal orientada a generar confianza
- Servicios: aplicaciones, sitios web, programas, sistemas, ecosistemas y videojuegos
- Proceso de trabajo transparente
- Portafolio basado en proyectos reales publicados
- Contacto directo (correo y teléfono)
- Soporte bilingüe ES / EN

## Publicar en GitHub Pages

### 1. Crear el repositorio

1. Creá un repositorio **público** llamado **`Total-Digital-Studio`** en tu cuenta.
2. No marques “Add a README” al crearlo (el repo debe estar vacío).

Enlace directo:

```
https://github.com/new?name=Total-Digital-Studio&description=Total+Digital+Studio+-+Sitio+corporativo
```

### 2. Publicar desde tu PC

En PowerShell:

```powershell
cd "F:\AngryAxies\Juego Angry Axies navegador\totalstudio-github"
.\publicar-totalstudio.ps1
```

### 3. Activar GitHub Pages (obligatorio — sin esto da 404)

Abrí este enlace estando logueado en GitHub:

**https://github.com/CoriaMaximiliano/Total-Digital-Studio/settings/pages**

1. En **Build and deployment** → **Source**, elegí **Deploy from a branch**
2. **Branch:** `main` → carpeta **`/ (root)`**
3. Clic en **Save**

En 1–2 minutos el sitio estará en:

```
https://coriamaximiliano.github.io/Total-Digital-Studio/
```

> Si recibiste un mail de que falló el workflow "Deploy GitHub Pages", es porque Pages no estaba activado todavía. Con los pasos de arriba alcanza; no hace falta ningún workflow.

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
