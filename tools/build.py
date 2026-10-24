#!/usr/bin/env python3
"""Build the release carts from Manbomber.p8 (the playable single cart).

Manbomber.p8 marks code with comment lines:
  --#only <variants>      live code, kept only in the listed variants
  --#end                  (always lists single, so the source still runs)
  --[[#only <variants>    code commented out in the source, made live
  --]]                    in the listed variants
Variants: single (everything, one cart), menu (credits..wins, then
load()s the match), game (the match, load()s the menu back).

Writes release/manbomber.p8 (menu), release/manbomber_game.p8 and
release/manbomber_single.p8, minified with shrinko8, and prints each
cart's tokens / chars / compressed size.
usage: tools/build.py [--no-minify]   (SHRINKO8=path/to/shrinko8.py)"""
import os, sys, subprocess
root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
shrinko8 = os.environ.get("SHRINKO8", os.path.expanduser("~/retro/shrinko8/shrinko8.py"))
src = open(os.path.join(root, "Manbomber.p8"), encoding="utf-8").read().split("\n")

def variant(v):
    out, mode = [], None  # mode: None, "keep", "drop"
    for n, l in enumerate(src, 1):
        t = l.strip()
        if t.startswith("--#only ") or t.startswith("--[[#only "):
            assert mode is None, f"line {n}: block inside a block"
            mode = "keep" if v in t.split("#only ")[1].split() else "drop"
            mode += "-comment" if t.startswith("--[[") else ""
            continue
        if (t == "--#end" and mode in ("keep", "drop")) or (t == "--]]" and mode and mode.endswith("-comment")):
            mode = None
            continue
        assert not (t == "--#end" or t == "--]]") or mode, f"line {n}: {t} without a block"
        if mode in (None, "keep", "keep-comment"):
            out.append(l)
    assert mode is None, "block not closed"
    return "\n".join(out)

os.makedirs(os.path.join(root, "release", "full"), exist_ok=True)
for v, name in (("menu", "manbomber"), ("game", "manbomber_game"), ("single", "manbomber_single")):
    full = os.path.join(root, "release", "full", name + ".p8")
    open(full, "w", encoding="utf-8").write(variant(v))
    out = os.path.join(root, "release", name + ".p8")
    if "--no-minify" in sys.argv:
        args = [sys.executable, shrinko8, full, "--count"]
    else:
        args = [sys.executable, shrinko8, full, out, "--minify", "--count"]
    r = subprocess.run(args, capture_output=True, text=True)
    print(f"{name}.p8: " + " | ".join(x.strip() for x in r.stdout.splitlines() + r.stderr.splitlines() if x.strip()))
