module Main where
import Locker
import Test.HUnit
import qualified System.Exit as Exit


basicLock = lock 27 2

showTestOne :: Test
showTestOne = TestCase (assertEqual "show $ lock 27 2 should return *SECRET*" "*SECRET*" (show basicLock))

unlockTest :: Test
unlockTest = TestCase (assertEqual "unlock 27 $ lock 27 2 should return Just 2" (Just 2) (unlock 27 $ lock 27 2))

fmapTest :: Test
fmapTest = TestCase (assertEqual "unlock 27 $ fmap (+2) $ lock 27 2 should return Just 4" (Just 4) (unlock 27 $ fmap (+2) $ lock 27 2))


tests :: Test
tests = TestList [TestLabel "Testing show" showTestOne, TestLabel "Testing unlock" unlockTest, TestLabel "Testing fmap" fmapTest]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess