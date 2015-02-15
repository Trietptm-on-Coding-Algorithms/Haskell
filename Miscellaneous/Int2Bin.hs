-- This function converts a non-negativ integer into a binary number
module Int2Bin where
import Unfold
type Bit = Int

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

-- Using unfold function, see Unfold.hs
int2bin' = unfold (== 0) (`mod` 2) (`div` 2)

