# CIS-3030
## First Haskell Function

### Debug lib modules in GHCi
1. Open an instance of GHCi
    ```
    ghci
    ```
2. Load the source FirstFunction.hs source file into the GHCi environment
    ```
    :load lib/FirstFunction.hs
    ```
3. Call the example function
    ```
    exampleSum 2 3
    ```
4. Begin editing the `FirstFunction` module according to the comments in its file
5. Reload the `FirstFunction.hs` file in GHCi as you make changes - call the functions that you have added or changed to debug them!
6. When you are ready, run `cabal test` to run the test suite. You can also run `cabal run first-function` to run the `Main` module
7. Submit on Canvas when the test suite passes or you run out of time!

Without modifying source code, `cabal test` should fail with the following error:
```
tests/FirstFunctionTest.hs:7:82: error:
    Variable not in scope: greet :: [Char] -> [Char]
  |
7 | testGreet = TestCase (assertEqual "should return Hello, Sevan!" "Hello, Sevan!" (greet "Sevan"))
  |                                                                                  ^^^^^
```

Without modifying source code, `cabal run first-function` should fail with the following error:

```
app/Main.hs:6:27: error:
    Variable not in scope: greet :: [Char] -> t
  |
6 |     let greetingmessage = greet "sevan"
  |              
```