"""Copia y optimiza el logo sin fondo para la web."""
from __future__ import annotations

from pathlib import Path

from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "imagenes utiles" / "logo sin fondo.png"
OUT = ROOT / "assets"


def load_logo_icon(src: Path) -> Image.Image:
    img = Image.open(src).convert("RGBA")
    bbox = img.getbbox()
    if not bbox:
        raise SystemExit("El logo no tiene contenido visible.")
    return img.crop(bbox)


def export_logo(src: Path, dest: Path, max_size: int) -> None:
    img = load_logo_icon(src)
    img.thumbnail((max_size, max_size), Image.Resampling.LANCZOS)
    img.save(dest, optimize=True)
    print(f"OK: {dest} ({img.size})")


def export_favicon(src: Path, dest: Path, size: int = 32) -> None:
    logo = load_logo_icon(src)
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    draw = ImageDraw.Draw(canvas)
    draw.ellipse((0, 0, size - 1, size - 1), fill="#ffffff")
    logo_max = int(size * 0.62)
    logo.thumbnail((logo_max, logo_max), Image.Resampling.LANCZOS)
    x = (size - logo.width) // 2
    y = (size - logo.height) // 2
    canvas.paste(logo, (x, y), logo)
    canvas.save(dest, optimize=True)
    print(f"OK: {dest} ({canvas.size})")


def main() -> None:
    if not SRC.exists():
        raise SystemExit(f"No se encontró: {SRC}")
    OUT.mkdir(parents=True, exist_ok=True)
    export_logo(SRC, OUT / "logo.png", 96)
    export_logo(SRC, OUT / "logo-icono.png", 64)
    export_logo(SRC, ROOT / "logo.png", 96)
    export_favicon(SRC, ROOT / "favicon.png", 32)


if __name__ == "__main__":
    main()
