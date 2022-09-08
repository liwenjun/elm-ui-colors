module Element.Colors exposing
    ( slate_50, slate_100, slate_200, slate_300, slate_400, slate_500, slate_600, slate_700, slate_800, slate_900
    , gray_50, gray_100, gray_200, gray_300, gray_400, gray_500, gray_600, gray_700, gray_800, gray_900
    , zinc_50, zinc_100, zinc_200, zinc_300, zinc_400, zinc_500, zinc_600, zinc_700, zinc_800, zinc_900
    , neutral_50, neutral_100, neutral_200, neutral_300, neutral_400, neutral_500, neutral_600, neutral_700, neutral_800, neutral_900
    , stone_50, stone_100, stone_200, stone_300, stone_400, stone_500, stone_600, stone_700, stone_800, stone_900
    , red_50, red_100, red_200, red_300, red_400, red_500, red_600, red_700, red_800, red_900
    , orange_50, orange_100, orange_200, orange_300, orange_400, orange_500, orange_600, orange_700, orange_800, orange_900
    , amber_50, amber_100, amber_200, amber_300, amber_400, amber_500, amber_600, amber_700, amber_800, amber_900
    , yellow_50, yellow_100, yellow_200, yellow_300, yellow_400, yellow_500, yellow_600, yellow_700, yellow_800, yellow_900
    , lime_50, lime_100, lime_200, lime_300, lime_400, lime_500, lime_600, lime_700, lime_800, lime_900
    , green_50, green_100, green_200, green_300, green_400, green_500, green_600, green_700, green_800, green_900
    , emerald_50, emerald_100, emerald_200, emerald_300, emerald_400, emerald_500, emerald_600, emerald_700, emerald_800, emerald_900
    , teal_50, teal_100, teal_200, teal_300, teal_400, teal_500, teal_600, teal_700, teal_800, teal_900
    , cyan_50, cyan_100, cyan_200, cyan_300, cyan_400, cyan_500, cyan_600, cyan_700, cyan_800, cyan_900
    , sky_50, sky_100, sky_200, sky_300, sky_400, sky_500, sky_600, sky_700, sky_800, sky_900
    , blue_50, blue_100, blue_200, blue_300, blue_400, blue_500, blue_600, blue_700, blue_800, blue_900
    , indigo_50, indigo_100, indigo_200, indigo_300, indigo_400, indigo_500, indigo_600, indigo_700, indigo_800, indigo_900
    , violet_50, violet_100, violet_200, violet_300, violet_400, violet_500, violet_600, violet_700, violet_800, violet_900
    , purple_50, purple_100, purple_200, purple_300, purple_400, purple_500, purple_600, purple_700, purple_800, purple_900
    , fuchsia_50, fuchsia_100, fuchsia_200, fuchsia_300, fuchsia_400, fuchsia_500, fuchsia_600, fuchsia_700, fuchsia_800, fuchsia_900
    , pink_50, pink_100, pink_200, pink_300, pink_400, pink_500, pink_600, pink_700, pink_800, pink_900
    , rose_50, rose_100, rose_200, rose_300, rose_400, rose_500, rose_600, rose_700, rose_800, rose_900
    )

{-|


# 颜色 Colors

将Tailwind的默认调色板转换为Elm-UI所用。

## Slate

@docs slate_50, slate_100, slate_200, slate_300, slate_400, slate_500, slate_600, slate_700, slate_800, slate_900


## Gray

@docs gray_50, gray_100, gray_200, gray_300, gray_400, gray_500, gray_600, gray_700, gray_800, gray_900


## Zinc

@docs zinc_50, zinc_100, zinc_200, zinc_300, zinc_400, zinc_500, zinc_600, zinc_700, zinc_800, zinc_900


## Neutral

@docs neutral_50, neutral_100, neutral_200, neutral_300, neutral_400, neutral_500, neutral_600, neutral_700, neutral_800, neutral_900


## Stone

@docs stone_50, stone_100, stone_200, stone_300, stone_400, stone_500, stone_600, stone_700, stone_800, stone_900


## Red

@docs red_50, red_100, red_200, red_300, red_400, red_500, red_600, red_700, red_800, red_900


## Orange

@docs orange_50, orange_100, orange_200, orange_300, orange_400, orange_500, orange_600, orange_700, orange_800, orange_900


## Amber

@docs amber_50, amber_100, amber_200, amber_300, amber_400, amber_500, amber_600, amber_700, amber_800, amber_900


## Yellow

@docs yellow_50, yellow_100, yellow_200, yellow_300, yellow_400, yellow_500, yellow_600, yellow_700, yellow_800, yellow_900


## Lime

@docs lime_50, lime_100, lime_200, lime_300, lime_400, lime_500, lime_600, lime_700, lime_800, lime_900


## Green

@docs green_50, green_100, green_200, green_300, green_400, green_500, green_600, green_700, green_800, green_900


## Emerald

@docs emerald_50, emerald_100, emerald_200, emerald_300, emerald_400, emerald_500, emerald_600, emerald_700, emerald_800, emerald_900


## Teal

@docs teal_50, teal_100, teal_200, teal_300, teal_400, teal_500, teal_600, teal_700, teal_800, teal_900


## Cyan

@docs cyan_50, cyan_100, cyan_200, cyan_300, cyan_400, cyan_500, cyan_600, cyan_700, cyan_800, cyan_900


## Sky

@docs sky_50, sky_100, sky_200, sky_300, sky_400, sky_500, sky_600, sky_700, sky_800, sky_900


## Blue

@docs blue_50, blue_100, blue_200, blue_300, blue_400, blue_500, blue_600, blue_700, blue_800, blue_900


## Indigo

@docs indigo_50, indigo_100, indigo_200, indigo_300, indigo_400, indigo_500, indigo_600, indigo_700, indigo_800, indigo_900


## Violet

@docs violet_50, violet_100, violet_200, violet_300, violet_400, violet_500, violet_600, violet_700, violet_800, violet_900


## Purple

@docs purple_50, purple_100, purple_200, purple_300, purple_400, purple_500, purple_600, purple_700, purple_800, purple_900


## Fuchsia

@docs fuchsia_50, fuchsia_100, fuchsia_200, fuchsia_300, fuchsia_400, fuchsia_500, fuchsia_600, fuchsia_700, fuchsia_800, fuchsia_900


## Pink

@docs pink_50, pink_100, pink_200, pink_300, pink_400, pink_500, pink_600, pink_700, pink_800, pink_900


## Rose

@docs rose_50, rose_100, rose_200, rose_300, rose_400, rose_500, rose_600, rose_700, rose_800, rose_900

-}

import Element exposing (Color)
import Element.HexColor exposing (rgbCSSHex)


{-| -}
slate_50 : Color
slate_50 =
    "#f8fafc" |> rgbCSSHex


{-| -}
slate_100 : Color
slate_100 =
    "#f1f5f9" |> rgbCSSHex


{-| -}
slate_200 : Color
slate_200 =
    "#e2e8f0" |> rgbCSSHex


{-| -}
slate_300 : Color
slate_300 =
    "#cbd5e1" |> rgbCSSHex


{-| -}
slate_400 : Color
slate_400 =
    "#94a3b8" |> rgbCSSHex


{-| -}
slate_500 : Color
slate_500 =
    "#64748b" |> rgbCSSHex


{-| -}
slate_600 : Color
slate_600 =
    "#475569" |> rgbCSSHex


{-| -}
slate_700 : Color
slate_700 =
    "#334155" |> rgbCSSHex


{-| -}
slate_800 : Color
slate_800 =
    "#1e293b" |> rgbCSSHex


{-| -}
slate_900 : Color
slate_900 =
    "#0f172a" |> rgbCSSHex


{-| -}
gray_50 : Color
gray_50 =
    "#f9fafb" |> rgbCSSHex


{-| -}
gray_100 : Color
gray_100 =
    "#f3f4f6" |> rgbCSSHex


{-| -}
gray_200 : Color
gray_200 =
    "#e5e7eb" |> rgbCSSHex


{-| -}
gray_300 : Color
gray_300 =
    "#d1d5db" |> rgbCSSHex


{-| -}
gray_400 : Color
gray_400 =
    "#9ca3af" |> rgbCSSHex


{-| -}
gray_500 : Color
gray_500 =
    "#6b7280" |> rgbCSSHex


{-| -}
gray_600 : Color
gray_600 =
    "#4b5563" |> rgbCSSHex


{-| -}
gray_700 : Color
gray_700 =
    "#374151" |> rgbCSSHex


{-| -}
gray_800 : Color
gray_800 =
    "#1f2937" |> rgbCSSHex


{-| -}
gray_900 : Color
gray_900 =
    "#111827" |> rgbCSSHex


{-| -}
zinc_50 : Color
zinc_50 =
    "#fafafa" |> rgbCSSHex


{-| -}
zinc_100 : Color
zinc_100 =
    "#f4f4f5" |> rgbCSSHex


{-| -}
zinc_200 : Color
zinc_200 =
    "#e4e4e7" |> rgbCSSHex


{-| -}
zinc_300 : Color
zinc_300 =
    "#d4d4d8" |> rgbCSSHex


{-| -}
zinc_400 : Color
zinc_400 =
    "#a1a1aa" |> rgbCSSHex


{-| -}
zinc_500 : Color
zinc_500 =
    "#71717a" |> rgbCSSHex


{-| -}
zinc_600 : Color
zinc_600 =
    "#52525b" |> rgbCSSHex


{-| -}
zinc_700 : Color
zinc_700 =
    "#3f3f46" |> rgbCSSHex


{-| -}
zinc_800 : Color
zinc_800 =
    "#27272a" |> rgbCSSHex


{-| -}
zinc_900 : Color
zinc_900 =
    "#18181b" |> rgbCSSHex


{-| -}
neutral_50 : Color
neutral_50 =
    "#fafafa" |> rgbCSSHex


{-| -}
neutral_100 : Color
neutral_100 =
    "#f5f5f5" |> rgbCSSHex


{-| -}
neutral_200 : Color
neutral_200 =
    "#e5e5e5" |> rgbCSSHex


{-| -}
neutral_300 : Color
neutral_300 =
    "#d4d4d4" |> rgbCSSHex


{-| -}
neutral_400 : Color
neutral_400 =
    "#a3a3a3" |> rgbCSSHex


{-| -}
neutral_500 : Color
neutral_500 =
    "#737373" |> rgbCSSHex


{-| -}
neutral_600 : Color
neutral_600 =
    "#525252" |> rgbCSSHex


{-| -}
neutral_700 : Color
neutral_700 =
    "#404040" |> rgbCSSHex


{-| -}
neutral_800 : Color
neutral_800 =
    "#262626" |> rgbCSSHex


{-| -}
neutral_900 : Color
neutral_900 =
    "#171717" |> rgbCSSHex


{-| -}
stone_50 : Color
stone_50 =
    "#fafaf9" |> rgbCSSHex


{-| -}
stone_100 : Color
stone_100 =
    "#f5f5f4" |> rgbCSSHex


{-| -}
stone_200 : Color
stone_200 =
    "#e7e5e4" |> rgbCSSHex


{-| -}
stone_300 : Color
stone_300 =
    "#d6d3d1" |> rgbCSSHex


{-| -}
stone_400 : Color
stone_400 =
    "#a8a29e" |> rgbCSSHex


{-| -}
stone_500 : Color
stone_500 =
    "#78716c" |> rgbCSSHex


{-| -}
stone_600 : Color
stone_600 =
    "#57534e" |> rgbCSSHex


{-| -}
stone_700 : Color
stone_700 =
    "#44403c" |> rgbCSSHex


{-| -}
stone_800 : Color
stone_800 =
    "#292524" |> rgbCSSHex


{-| -}
stone_900 : Color
stone_900 =
    "#1c1917" |> rgbCSSHex


{-| -}
red_50 : Color
red_50 =
    "#fef2f2" |> rgbCSSHex


{-| -}
red_100 : Color
red_100 =
    "#fee2e2" |> rgbCSSHex


{-| -}
red_200 : Color
red_200 =
    "#fecaca" |> rgbCSSHex


{-| -}
red_300 : Color
red_300 =
    "#fca5a5" |> rgbCSSHex


{-| -}
red_400 : Color
red_400 =
    "#f87171" |> rgbCSSHex


{-| -}
red_500 : Color
red_500 =
    "#ef4444" |> rgbCSSHex


{-| -}
red_600 : Color
red_600 =
    "#dc2626" |> rgbCSSHex


{-| -}
red_700 : Color
red_700 =
    "#b91c1c" |> rgbCSSHex


{-| -}
red_800 : Color
red_800 =
    "#991b1b" |> rgbCSSHex


{-| -}
red_900 : Color
red_900 =
    "#7f1d1d" |> rgbCSSHex


{-| -}
orange_50 : Color
orange_50 =
    "#fff7ed" |> rgbCSSHex


{-| -}
orange_100 : Color
orange_100 =
    "#ffedd5" |> rgbCSSHex


{-| -}
orange_200 : Color
orange_200 =
    "#fed7aa" |> rgbCSSHex


{-| -}
orange_300 : Color
orange_300 =
    "#fdba74" |> rgbCSSHex


{-| -}
orange_400 : Color
orange_400 =
    "#fb923c" |> rgbCSSHex


{-| -}
orange_500 : Color
orange_500 =
    "#f97316" |> rgbCSSHex


{-| -}
orange_600 : Color
orange_600 =
    "#ea580c" |> rgbCSSHex


{-| -}
orange_700 : Color
orange_700 =
    "#c2410c" |> rgbCSSHex


{-| -}
orange_800 : Color
orange_800 =
    "#9a3412" |> rgbCSSHex


{-| -}
orange_900 : Color
orange_900 =
    "#7c2d12" |> rgbCSSHex


{-| -}
amber_50 : Color
amber_50 =
    "#fffbeb" |> rgbCSSHex


{-| -}
amber_100 : Color
amber_100 =
    "#fef3c7" |> rgbCSSHex


{-| -}
amber_200 : Color
amber_200 =
    "#fde68a" |> rgbCSSHex


{-| -}
amber_300 : Color
amber_300 =
    "#fcd34d" |> rgbCSSHex


{-| -}
amber_400 : Color
amber_400 =
    "#fbbf24" |> rgbCSSHex


{-| -}
amber_500 : Color
amber_500 =
    "#f59e0b" |> rgbCSSHex


{-| -}
amber_600 : Color
amber_600 =
    "#d97706" |> rgbCSSHex


{-| -}
amber_700 : Color
amber_700 =
    "#b45309" |> rgbCSSHex


{-| -}
amber_800 : Color
amber_800 =
    "#92400e" |> rgbCSSHex


{-| -}
amber_900 : Color
amber_900 =
    "#78350f" |> rgbCSSHex


{-| -}
yellow_50 : Color
yellow_50 =
    "#fefce8" |> rgbCSSHex


{-| -}
yellow_100 : Color
yellow_100 =
    "#fef9c3" |> rgbCSSHex


{-| -}
yellow_200 : Color
yellow_200 =
    "#fef08a" |> rgbCSSHex


{-| -}
yellow_300 : Color
yellow_300 =
    "#fde047" |> rgbCSSHex


{-| -}
yellow_400 : Color
yellow_400 =
    "#facc15" |> rgbCSSHex


{-| -}
yellow_500 : Color
yellow_500 =
    "#eab308" |> rgbCSSHex


{-| -}
yellow_600 : Color
yellow_600 =
    "#ca8a04" |> rgbCSSHex


{-| -}
yellow_700 : Color
yellow_700 =
    "#a16207" |> rgbCSSHex


{-| -}
yellow_800 : Color
yellow_800 =
    "#854d0e" |> rgbCSSHex


{-| -}
yellow_900 : Color
yellow_900 =
    "#713f12" |> rgbCSSHex


{-| -}
lime_50 : Color
lime_50 =
    "#f7fee7" |> rgbCSSHex


{-| -}
lime_100 : Color
lime_100 =
    "#ecfccb" |> rgbCSSHex


{-| -}
lime_200 : Color
lime_200 =
    "#d9f99d" |> rgbCSSHex


{-| -}
lime_300 : Color
lime_300 =
    "#bef264" |> rgbCSSHex


{-| -}
lime_400 : Color
lime_400 =
    "#a3e635" |> rgbCSSHex


{-| -}
lime_500 : Color
lime_500 =
    "#84cc16" |> rgbCSSHex


{-| -}
lime_600 : Color
lime_600 =
    "#65a30d" |> rgbCSSHex


{-| -}
lime_700 : Color
lime_700 =
    "#4d7c0f" |> rgbCSSHex


{-| -}
lime_800 : Color
lime_800 =
    "#3f6212" |> rgbCSSHex


{-| -}
lime_900 : Color
lime_900 =
    "#365314" |> rgbCSSHex


{-| -}
green_50 : Color
green_50 =
    "#f0fdf4" |> rgbCSSHex


{-| -}
green_100 : Color
green_100 =
    "#dcfce7" |> rgbCSSHex


{-| -}
green_200 : Color
green_200 =
    "#bbf7d0" |> rgbCSSHex


{-| -}
green_300 : Color
green_300 =
    "#86efac" |> rgbCSSHex


{-| -}
green_400 : Color
green_400 =
    "#4ade80" |> rgbCSSHex


{-| -}
green_500 : Color
green_500 =
    "#22c55e" |> rgbCSSHex


{-| -}
green_600 : Color
green_600 =
    "#16a34a" |> rgbCSSHex


{-| -}
green_700 : Color
green_700 =
    "#15803d" |> rgbCSSHex


{-| -}
green_800 : Color
green_800 =
    "#166534" |> rgbCSSHex


{-| -}
green_900 : Color
green_900 =
    "#14532d" |> rgbCSSHex


{-| -}
emerald_50 : Color
emerald_50 =
    "#ecfdf5" |> rgbCSSHex


{-| -}
emerald_100 : Color
emerald_100 =
    "#d1fae5" |> rgbCSSHex


{-| -}
emerald_200 : Color
emerald_200 =
    "#a7f3d0" |> rgbCSSHex


{-| -}
emerald_300 : Color
emerald_300 =
    "#6ee7b7" |> rgbCSSHex


{-| -}
emerald_400 : Color
emerald_400 =
    "#34d399" |> rgbCSSHex


{-| -}
emerald_500 : Color
emerald_500 =
    "#10b981" |> rgbCSSHex


{-| -}
emerald_600 : Color
emerald_600 =
    "#059669" |> rgbCSSHex


{-| -}
emerald_700 : Color
emerald_700 =
    "#047857" |> rgbCSSHex


{-| -}
emerald_800 : Color
emerald_800 =
    "#065f46" |> rgbCSSHex


{-| -}
emerald_900 : Color
emerald_900 =
    "#064e3b" |> rgbCSSHex


{-| -}
teal_50 : Color
teal_50 =
    "#f0fdfa" |> rgbCSSHex


{-| -}
teal_100 : Color
teal_100 =
    "#ccfbf1" |> rgbCSSHex


{-| -}
teal_200 : Color
teal_200 =
    "#99f6e4" |> rgbCSSHex


{-| -}
teal_300 : Color
teal_300 =
    "#5eead4" |> rgbCSSHex


{-| -}
teal_400 : Color
teal_400 =
    "#2dd4bf" |> rgbCSSHex


{-| -}
teal_500 : Color
teal_500 =
    "#14b8a6" |> rgbCSSHex


{-| -}
teal_600 : Color
teal_600 =
    "#0d9488" |> rgbCSSHex


{-| -}
teal_700 : Color
teal_700 =
    "#0f766e" |> rgbCSSHex


{-| -}
teal_800 : Color
teal_800 =
    "#115e59" |> rgbCSSHex


{-| -}
teal_900 : Color
teal_900 =
    "#134e4a" |> rgbCSSHex


{-| -}
cyan_50 : Color
cyan_50 =
    "#ecfeff" |> rgbCSSHex


{-| -}
cyan_100 : Color
cyan_100 =
    "#cffafe" |> rgbCSSHex


{-| -}
cyan_200 : Color
cyan_200 =
    "#a5f3fc" |> rgbCSSHex


{-| -}
cyan_300 : Color
cyan_300 =
    "#67e8f9" |> rgbCSSHex


{-| -}
cyan_400 : Color
cyan_400 =
    "#22d3ee" |> rgbCSSHex


{-| -}
cyan_500 : Color
cyan_500 =
    "#06b6d4" |> rgbCSSHex


{-| -}
cyan_600 : Color
cyan_600 =
    "#0891b2" |> rgbCSSHex


{-| -}
cyan_700 : Color
cyan_700 =
    "#0e7490" |> rgbCSSHex


{-| -}
cyan_800 : Color
cyan_800 =
    "#155e75" |> rgbCSSHex


{-| -}
cyan_900 : Color
cyan_900 =
    "#164e63" |> rgbCSSHex


{-| -}
sky_50 : Color
sky_50 =
    "#f0f9ff" |> rgbCSSHex


{-| -}
sky_100 : Color
sky_100 =
    "#e0f2fe" |> rgbCSSHex


{-| -}
sky_200 : Color
sky_200 =
    "#bae6fd" |> rgbCSSHex


{-| -}
sky_300 : Color
sky_300 =
    "#7dd3fc" |> rgbCSSHex


{-| -}
sky_400 : Color
sky_400 =
    "#38bdf8" |> rgbCSSHex


{-| -}
sky_500 : Color
sky_500 =
    "#0ea5e9" |> rgbCSSHex


{-| -}
sky_600 : Color
sky_600 =
    "#0284c7" |> rgbCSSHex


{-| -}
sky_700 : Color
sky_700 =
    "#0369a1" |> rgbCSSHex


{-| -}
sky_800 : Color
sky_800 =
    "#075985" |> rgbCSSHex


{-| -}
sky_900 : Color
sky_900 =
    "#0c4a6e" |> rgbCSSHex


{-| -}
blue_50 : Color
blue_50 =
    "#eff6ff" |> rgbCSSHex


{-| -}
blue_100 : Color
blue_100 =
    "#dbeafe" |> rgbCSSHex


{-| -}
blue_200 : Color
blue_200 =
    "#bfdbfe" |> rgbCSSHex


{-| -}
blue_300 : Color
blue_300 =
    "#93c5fd" |> rgbCSSHex


{-| -}
blue_400 : Color
blue_400 =
    "#60a5fa" |> rgbCSSHex


{-| -}
blue_500 : Color
blue_500 =
    "#3b82f6" |> rgbCSSHex


{-| -}
blue_600 : Color
blue_600 =
    "#2563eb" |> rgbCSSHex


{-| -}
blue_700 : Color
blue_700 =
    "#1d4ed8" |> rgbCSSHex


{-| -}
blue_800 : Color
blue_800 =
    "#1e40af" |> rgbCSSHex


{-| -}
blue_900 : Color
blue_900 =
    "#1e3a8a" |> rgbCSSHex


{-| -}
indigo_50 : Color
indigo_50 =
    "#eef2ff" |> rgbCSSHex


{-| -}
indigo_100 : Color
indigo_100 =
    "#e0e7ff" |> rgbCSSHex


{-| -}
indigo_200 : Color
indigo_200 =
    "#c7d2fe" |> rgbCSSHex


{-| -}
indigo_300 : Color
indigo_300 =
    "#a5b4fc" |> rgbCSSHex


{-| -}
indigo_400 : Color
indigo_400 =
    "#818cf8" |> rgbCSSHex


{-| -}
indigo_500 : Color
indigo_500 =
    "#6366f1" |> rgbCSSHex


{-| -}
indigo_600 : Color
indigo_600 =
    "#4f46e5" |> rgbCSSHex


{-| -}
indigo_700 : Color
indigo_700 =
    "#4338ca" |> rgbCSSHex


{-| -}
indigo_800 : Color
indigo_800 =
    "#3730a3" |> rgbCSSHex


{-| -}
indigo_900 : Color
indigo_900 =
    "#312e81" |> rgbCSSHex


{-| -}
violet_50 : Color
violet_50 =
    "#f5f3ff" |> rgbCSSHex


{-| -}
violet_100 : Color
violet_100 =
    "#ede9fe" |> rgbCSSHex


{-| -}
violet_200 : Color
violet_200 =
    "#ddd6fe" |> rgbCSSHex


{-| -}
violet_300 : Color
violet_300 =
    "#c4b5fd" |> rgbCSSHex


{-| -}
violet_400 : Color
violet_400 =
    "#a78bfa" |> rgbCSSHex


{-| -}
violet_500 : Color
violet_500 =
    "#8b5cf6" |> rgbCSSHex


{-| -}
violet_600 : Color
violet_600 =
    "#7c3aed" |> rgbCSSHex


{-| -}
violet_700 : Color
violet_700 =
    "#6d28d9" |> rgbCSSHex


{-| -}
violet_800 : Color
violet_800 =
    "#5b21b6" |> rgbCSSHex


{-| -}
violet_900 : Color
violet_900 =
    "#4c1d95" |> rgbCSSHex


{-| -}
purple_50 : Color
purple_50 =
    "#faf5ff" |> rgbCSSHex


{-| -}
purple_100 : Color
purple_100 =
    "#f3e8ff" |> rgbCSSHex


{-| -}
purple_200 : Color
purple_200 =
    "#e9d5ff" |> rgbCSSHex


{-| -}
purple_300 : Color
purple_300 =
    "#d8b4fe" |> rgbCSSHex


{-| -}
purple_400 : Color
purple_400 =
    "#c084fc" |> rgbCSSHex


{-| -}
purple_500 : Color
purple_500 =
    "#a855f7" |> rgbCSSHex


{-| -}
purple_600 : Color
purple_600 =
    "#9333ea" |> rgbCSSHex


{-| -}
purple_700 : Color
purple_700 =
    "#7e22ce" |> rgbCSSHex


{-| -}
purple_800 : Color
purple_800 =
    "#6b21a8" |> rgbCSSHex


{-| -}
purple_900 : Color
purple_900 =
    "#581c87" |> rgbCSSHex


{-| -}
fuchsia_50 : Color
fuchsia_50 =
    "#fdf4ff" |> rgbCSSHex


{-| -}
fuchsia_100 : Color
fuchsia_100 =
    "#fae8ff" |> rgbCSSHex


{-| -}
fuchsia_200 : Color
fuchsia_200 =
    "#f5d0fe" |> rgbCSSHex


{-| -}
fuchsia_300 : Color
fuchsia_300 =
    "#f0abfc" |> rgbCSSHex


{-| -}
fuchsia_400 : Color
fuchsia_400 =
    "#e879f9" |> rgbCSSHex


{-| -}
fuchsia_500 : Color
fuchsia_500 =
    "#d946ef" |> rgbCSSHex


{-| -}
fuchsia_600 : Color
fuchsia_600 =
    "#c026d3" |> rgbCSSHex


{-| -}
fuchsia_700 : Color
fuchsia_700 =
    "#a21caf" |> rgbCSSHex


{-| -}
fuchsia_800 : Color
fuchsia_800 =
    "#86198f" |> rgbCSSHex


{-| -}
fuchsia_900 : Color
fuchsia_900 =
    "#701a75" |> rgbCSSHex


{-| -}
pink_50 : Color
pink_50 =
    "#fdf2f8" |> rgbCSSHex


{-| -}
pink_100 : Color
pink_100 =
    "#fce7f3" |> rgbCSSHex


{-| -}
pink_200 : Color
pink_200 =
    "#fbcfe8" |> rgbCSSHex


{-| -}
pink_300 : Color
pink_300 =
    "#f9a8d4" |> rgbCSSHex


{-| -}
pink_400 : Color
pink_400 =
    "#f472b6" |> rgbCSSHex


{-| -}
pink_500 : Color
pink_500 =
    "#ec4899" |> rgbCSSHex


{-| -}
pink_600 : Color
pink_600 =
    "#db2777" |> rgbCSSHex


{-| -}
pink_700 : Color
pink_700 =
    "#be185d" |> rgbCSSHex


{-| -}
pink_800 : Color
pink_800 =
    "#9d174d" |> rgbCSSHex


{-| -}
pink_900 : Color
pink_900 =
    "#831843" |> rgbCSSHex


{-| -}
rose_50 : Color
rose_50 =
    "#fff1f2" |> rgbCSSHex


{-| -}
rose_100 : Color
rose_100 =
    "#ffe4e6" |> rgbCSSHex


{-| -}
rose_200 : Color
rose_200 =
    "#fecdd3" |> rgbCSSHex


{-| -}
rose_300 : Color
rose_300 =
    "#fda4af" |> rgbCSSHex


{-| -}
rose_400 : Color
rose_400 =
    "#fb7185" |> rgbCSSHex


{-| -}
rose_500 : Color
rose_500 =
    "#f43f5e" |> rgbCSSHex


{-| -}
rose_600 : Color
rose_600 =
    "#e11d48" |> rgbCSSHex


{-| -}
rose_700 : Color
rose_700 =
    "#be123c" |> rgbCSSHex


{-| -}
rose_800 : Color
rose_800 =
    "#9f1239" |> rgbCSSHex


{-| -}
rose_900 : Color
rose_900 =
    "#881337" |> rgbCSSHex
