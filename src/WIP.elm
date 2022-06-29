module WIP exposing (..)

import Element exposing (Element, centerX, centerY, column, el, fill, height, html, rgb255, text)
import Element.Font exposing (color, family, serif, size, typeface)
import FontAwesome exposing (view)
import FontAwesome.Solid exposing (personDigging)


workInProgress : Element msg
workInProgress =
    column
        [ centerX
        , height fill
        ]
        [ workIcon
        , mainText
        ]


workIcon : Element msg
workIcon =
    personDigging
        |> view
        |> html
        |> el
            [ centerY
            , centerX
            , size 200
            , color <| rgb255 250 108 48
            ]


mainText : Element msg
mainText =
    "Site under construction (literally)"
        |> text
        |> el
            [ centerY
            , size 50
            , family [ typeface "Josefin Slab", serif ]
            ]
