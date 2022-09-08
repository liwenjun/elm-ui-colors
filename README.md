# 用于 Elm-UI 的颜色 Colors

将 [Tailwind CSS](https://tailwindcss.com/docs/customizing-colors) （当前版本 `V3.1.8`）的颜色转换用于 `elm-ui`。

![颜色](https://github.com/liwenjun/elm-ui-colors/raw/main/assert/colors.png)


## 安装 Install
```bash
$ elm install liwenjun/elm-ui-colors
```

## 使用 Usage

[在Ellie中运行](https://ellie-app.com/jyCmpmFkC2ta1)

```elm
module Example exposing (main)

{-| -}

import Element exposing (..)
import Element.Background as Background
import Element.Colors exposing (..)


main =
    layout
        [ Background.color zinc_300
        , width fill
        , height fill
        ]
    <|
        column
            [ centerX, centerY ]
            [ row [ width fill, padding 10, spacing 10 ]
                [ textEl "红色 Red"
                , colorEl red_50
                , colorEl red_100
                , colorEl red_200
                , colorEl red_300
                , colorEl red_400
                , colorEl red_500
                , colorEl red_600
                , colorEl red_700
                , colorEl red_800
                , colorEl red_900
                ]
            , row [ width fill, padding 10, spacing 10 ]
                [ textEl "绿色 Green"
                , colorEl green_50
                , colorEl green_100
                , colorEl green_200
                , colorEl green_300
                , colorEl green_400
                , colorEl green_500
                , colorEl green_600
                , colorEl green_700
                , colorEl green_800
                , colorEl green_900
                ]
            , row [ width fill, padding 10, spacing 10 ]
                [ textEl "蓝色 Blue"
                , colorEl blue_50
                , colorEl blue_100
                , colorEl blue_200
                , colorEl blue_300
                , colorEl blue_400
                , colorEl blue_500
                , colorEl blue_600
                , colorEl blue_700
                , colorEl blue_800
                , colorEl blue_900
                ]
            , row [ width fill, padding 10, spacing 6 ]
                [ colorEl slate_500
                , colorEl gray_500
                , colorEl zinc_500
                , colorEl neutral_500
                , colorEl stone_500
                , colorEl red_500
                , colorEl orange_500
                , colorEl amber_500
                , colorEl yellow_500
                , colorEl lime_500
                , colorEl green_500
                , colorEl emerald_500
                , colorEl teal_500
                , colorEl cyan_500
                , colorEl sky_500
                , colorEl blue_500
                , colorEl indigo_500
                , colorEl violet_500
                , colorEl purple_500
                , colorEl fuchsia_500
                , colorEl pink_500
                , colorEl rose_500
                ]
            ]


colorEl : Color -> Element msg
colorEl c =
    el
        [ Background.color c
        , width (fill |> minimum 32)
        , height (fill |> minimum 48)
        ]
        (text " ")


textEl : String -> Element msg
textEl txt =
    el [ width (fill |> minimum 100) ] (text txt)
```
