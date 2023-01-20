# CIS-3030
## Example Function

### Debug lib modules in GHCi
1. Open an instance of GHCi
    ```
    ghci
    ```
2. Load the source ExampleFunction.hs source file into the GHCi environment
    ```
    :load lib/ExampleFunction.hs
    ```
3. Call the example function
    ```
    exampleSum 2 3
    ```
4. Begin editing the `ExampleFunction` module according to the comments in its file
5. Reload the `ExampleFunction.hs` file in GHCi as you make changes - call the functions that you have added or changed to debug them!
6. When you are ready, run `cabal test` to run the test suite. You can also run `cabal run example-function` to run the `Main` module

Without modifying source code, `cabal test` should run successfully and output the following:

```
Running 1 test suites...
Test suite tests: RUNNING...
Test suite tests: PASS
Test suite logged to: path/to/logs
```

Without modifying source code, `cabal run example-function` should run successfully and output the following:

```
Resolving dependencies...
Build profile: -w ghc-your.ghc.version -xx
3
```

Without modifying source code, loading `lib/ExampleFunction.hs` into a GHCi env and calling `exampleSum 1 4` should output `5`
