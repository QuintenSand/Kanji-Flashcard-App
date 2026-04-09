"""
Generates the Rising Sun app icon for Kanji Flashcard App.
Outputs three PNGs (light, dark, tinted) into the AppIcon.appiconset.
"""

import math
from PIL import Image, ImageDraw, ImageFilter, ImageFont

SIZE = 1024
FONT_PATH = "/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf"
OUT_DIR = "KanjiApp/Assets.xcassets/AppIcon.appiconset"

# ── helpers ──────────────────────────────────────────────────────────────────

def make_rounded_mask(size, radius):
    """Alpha mask with iOS-style rounded corners."""
    mask = Image.new("L", (size, size), 0)
    d = ImageDraw.Draw(mask)
    d.rounded_rectangle([0, 0, size - 1, size - 1], radius=radius, fill=255)
    return mask


def radial_gradient(size, cx, cy, r_inner, r_outer, color_inner, color_outer):
    """Radial gradient overlay as an RGBA image."""
    img = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    pix = img.load()
    for y in range(size):
        for x in range(size):
            dist = math.hypot(x - cx, y - cy)
            if dist <= r_inner:
                t = 0.0
            elif dist >= r_outer:
                t = 1.0
            else:
                t = (dist - r_inner) / (r_outer - r_inner)
            r = int(color_inner[0] * (1 - t) + color_outer[0] * t)
            g = int(color_inner[1] * (1 - t) + color_outer[1] * t)
            b = int(color_inner[2] * (1 - t) + color_outer[2] * t)
            a = int(color_inner[3] * (1 - t) + color_outer[3] * t)
            pix[x, y] = (r, g, b, a)
    return img


def linear_gradient_bg(size, top_color, bottom_color):
    """Simple top-to-bottom linear gradient."""
    img = Image.new("RGB", (size, size))
    pix = img.load()
    for y in range(size):
        t = y / (size - 1)
        r = int(top_color[0] * (1 - t) + bottom_color[0] * t)
        g = int(top_color[1] * (1 - t) + bottom_color[1] * t)
        b = int(top_color[2] * (1 - t) + bottom_color[2] * t)
        for x in range(size):
            pix[x, y] = (r, g, b)
    return img


def draw_rays(draw, cx, cy, n_rays, inner_r, outer_r, color):
    """Subtle sun rays emanating from centre."""
    for i in range(n_rays):
        angle = math.radians(i * (360 / n_rays))
        # Each ray is a thin elongated polygon
        spread = math.radians(4)
        pts = [
            (cx + inner_r * math.cos(angle - spread),
             cy + inner_r * math.sin(angle - spread)),
            (cx + outer_r * math.cos(angle),
             cy + outer_r * math.sin(angle)),
            (cx + inner_r * math.cos(angle + spread),
             cy + inner_r * math.sin(angle + spread)),
        ]
        draw.polygon(pts, fill=color)


def build_icon(bg_top, bg_bottom, sun_glow, ray_color, text_color):
    """Assemble one icon variant and return a PIL Image."""
    img = linear_gradient_bg(SIZE, bg_top, bg_bottom)
    img = img.convert("RGBA")

    # ── subtle diagonal tint ──────────────────────────────────────────────
    tint = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
    tpix = tint.load()
    for y in range(SIZE):
        for x in range(SIZE):
            t = (x + y) / (2 * SIZE)
            a = int(30 * t)
            tpix[x, y] = (0, 0, 0, a)
    img = Image.alpha_composite(img, tint)

    draw = ImageDraw.Draw(img)

    # ── sun rays ──────────────────────────────────────────────────────────
    draw_rays(draw, SIZE // 2, SIZE // 2, 16, 220, 480, ray_color)

    # ── main sun glow (radial) ────────────────────────────────────────────
    glow = radial_gradient(SIZE, SIZE // 2, SIZE // 2, 90, 300,
                           sun_glow, (sun_glow[0], sun_glow[1], sun_glow[2], 0))
    img = Image.alpha_composite(img, glow)

    # ── inner bright circle ───────────────────────────────────────────────
    draw = ImageDraw.Draw(img)
    draw.ellipse(
        [SIZE // 2 - 120, SIZE // 2 - 120,
         SIZE // 2 + 120, SIZE // 2 + 120],
        fill=(255, 255, 255, 30)
    )

    # ── kanji 漢 ──────────────────────────────────────────────────────────
    try:
        font = ImageFont.truetype(FONT_PATH, size=580)
    except Exception:
        font = ImageFont.load_default()

    kanji = "漢"
    bbox = draw.textbbox((0, 0), kanji, font=font)
    tw = bbox[2] - bbox[0]
    th = bbox[3] - bbox[1]
    tx = (SIZE - tw) // 2 - bbox[0]
    ty = (SIZE - th) // 2 - bbox[1] + 20  # slight downward nudge

    # soft shadow
    shadow_img = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
    sd = ImageDraw.Draw(shadow_img)
    sd.text((tx + 8, ty + 12), kanji, font=font, fill=(0, 0, 0, 60))
    shadow_img = shadow_img.filter(ImageFilter.GaussianBlur(radius=14))
    img = Image.alpha_composite(img, shadow_img)

    draw = ImageDraw.Draw(img)
    draw.text((tx, ty), kanji, font=font, fill=text_color)

    # ── rounded-corner mask ───────────────────────────────────────────────
    radius = int(SIZE * 0.23)   # matches iOS icon corner radius
    mask = make_rounded_mask(SIZE, radius)
    result = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
    result.paste(img, mask=mask)

    return result


# ── render variants ───────────────────────────────────────────────────────────

variants = {
    # filename suffix : (bg_top, bg_bottom, sun_glow RGBA, ray_color RGBA, text_color RGBA)
    "light": (
        (220, 38,  38),   # bg top   — vivid red
        (249, 115, 22),   # bg bottom — orange
        (255, 200, 100, 80),   # sun glow
        (255, 255, 255, 18),   # rays
        (255, 255, 255, 255),  # text
    ),
    "dark": (
        (160, 20,  20),   # deeper red
        (200, 80,  10),   # darker orange
        (255, 160,  60, 70),
        (255, 255, 255, 14),
        (255, 255, 255, 255),
    ),
    "tinted": (
        (239, 68,  68),   # lighter red  (monochromatic-friendly)
        (251, 146, 60),   # light orange
        (255, 220, 150, 60),
        (255, 255, 255, 20),
        (255, 255, 255, 255),
    ),
}

for name, (bg_top, bg_bottom, glow, rays, text) in variants.items():
    icon = build_icon(bg_top, bg_bottom, glow, rays, text)
    # Save as RGB PNG (no alpha channel needed for app icons)
    out = icon.convert("RGB")
    path = f"{OUT_DIR}/AppIcon-{name}.png"
    out.save(path, "PNG", optimize=False)
    print(f"Saved {path}")

print("Done ✓")
