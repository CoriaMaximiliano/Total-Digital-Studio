# Total Digital Studio — Sitio corporativo

Sitio web institucional para **Total Digital Studio**, estudio de desarrollo de software.

**URL publicada:** [https://coriamaximiliano.github.io/Total-Digital-Studio/](https://coriamaximiliano.github.io/Total-Digital-Studio/)

> **Nota:** `totalstudio.github.io` no está disponible — la organización [totalstudio](https://github.com/totalstudio) ya pertenece a otra empresa. Alternativa con dominio propio: crear la org [TotalDigitalStudio](https://github.com/organizations/plan?organization=TotalDigitalStudio) → `totaldigitalstudio.github.io`

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

### 3. Activar GitHub Pages

1. En el repo → **Settings** → **Pages**
2. **Source:** Deploy from a branch
3. **Branch:** `main` → `/ (root)` → **Save**

En unos minutos el sitio estará en:

```
https://coriamaximiliano.github.io/Total-Digital-Studio/
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
