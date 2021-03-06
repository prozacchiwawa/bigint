module Constants
    exposing
        ( maxDigitValue
        , maxDigitMagnitude
        )

{-| Seven base-10 digits is the most we can have where x * x < the JS bigInt limit.
99999999 > sqrt(MAX_SAFE_INTEGER) > 9999999
A slightly higher number is possible, but would require a major reworking of the string functions.
-}


maxDigitValue : Int
maxDigitValue =
    -1 + 10 ^ maxDigitMagnitude


maxDigitMagnitude : Int
maxDigitMagnitude =
    7
