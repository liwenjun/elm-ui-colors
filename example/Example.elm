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
            [ row [ width fill, padding 10, spacing 7 ]
                [ textEl "红色 Red"
                , myEl red_50
                , myEl red_100
                , myEl red_200
                , myEl red_300
                , myEl red_400
                , myEl red_500
                , myEl red_600
                , myEl red_700
                , myEl red_800
                , myEl red_900
                ]
            , row [ width fill, padding 10, spacing 7 ]
                [ textEl "绿色 Green"
                , myEl green_50
                , myEl green_100
                , myEl green_200
                , myEl green_300
                , myEl green_400
                , myEl green_500
                , myEl green_600
                , myEl green_700
                , myEl green_800
                , myEl green_900
                ]
            , row [ width fill, padding 10, spacing 7 ]
                [ textEl "蓝色 Blue"
                , myEl blue_50
                , myEl blue_100
                , myEl blue_200
                , myEl blue_300
                , myEl blue_400
                , myEl blue_500
                , myEl blue_600
                , myEl blue_700
                , myEl blue_800
                , myEl blue_900
                ]
            ]


myEl : Color -> Element msg
myEl c =
    el
        [ Background.color c
        , width (fill |> minimum 40)
        , height (fill |> minimum 40)
        ]
        (text " ")


textEl : String -> Element msg
textEl txt =
    el [ width (fill |> minimum 100) ] (text txt)
