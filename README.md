![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_PictureTransparency

Making a colour transparent in a picture and superimposing pictures at runtime with the 4D picture transformation commands. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v15**; restored so it runs on current 4D releases.

## What it demonstrates

- Knocking a colour out of a picture by applying `TRANSFORM PICTURE` with the `Transparency` option (for example white `0x00FFFFFF` or blue `0x00FF`).
- Scaling a picture with `TRANSFORM PICTURE` and the `Scale` option before compositing.
- Overlaying one picture on another at a given offset with `COMBINE PICTURES` in `Superimposition` mode.
- Loading source images (`rgb-triangle.png`, `fond.bmp`, `4D.bmp`) from the resources folder into picture variables.
- Comparing an original picture against a version whose background colour has been made transparent.

## Key commands

| Command | Used for |
|---|---|
| `TRANSFORM PICTURE` | Apply `Transparency` (colour keying) and `Scale` to a picture |
| `COMBINE PICTURES` | Superimpose the transparent logo over the background at an offset |
| `READ PICTURE FILE` | Load the sample images into picture variables |
| `Get 4D folder` | Resolve the current resources folder path |

## How it works

`Demo_Start` opens `HDI2` as a dialog. The form method (`Project/Sources/Forms/HDI2/method.4dm`) runs on `On Load`: it reads `rgb-triangle.png` into three variables and calls `TRANSFORM PICTURE(vPict3; Transparency; 0x00FFFFFF)` so `vPict3` shows the same triangle with its white pixels made transparent, sitting next to the untouched originals.

The buttons drive the compositing variants. `Button.4dm` reads the background `fond.bmp` and the logo `4D.bmp`, scales the logo 1.5x, makes its white pixels transparent, then `COMBINE PICTURES(...; Superimposition; vPict5; 30; 90)` drops it onto the background at offset (30, 90). `Button3.4dm` is the same flow but keys out blue (`0x00FF`) instead of white, and `Button1.4dm` skips the transparency step so the logo's opaque rectangle covers the background -- a side-by-side illustration of what colour keying buys you.

## Points of interest

- The transparency colour is a plain RGB long integer; changing it (white vs blue) is all that separates a clean overlay from a boxed one.
- Scaling with `TRANSFORM PICTURE` mutates the picture variable in place, so the logo is re-read from disk before each button applies its own transformation.

## References

- [4D documentation: TRANSFORM PICTURE](https://developer.4d.com/docs/commands/transform-picture)
- [4D documentation: COMBINE PICTURES](https://developer.4d.com/docs/commands/combine-pictures)
- [4D documentation: READ PICTURE FILE](https://developer.4d.com/docs/commands/read-picture-file)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="500" height="auto" alt="" src="https://github.com/user-attachments/assets/5ee78912-7d49-493e-a413-480776c76f10" />
