-- Chops a list into lists of at most eight bits
import Unfold
type Bit = Int

chop8 :: [Bit] -> [[Bit]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop8' = unfold null (take 8) (drop 8)
