# CIS-3030
## Example Function

### Debug lib modules in GHCi
1. Open an instance of GHCi
    ```
    ghci
    ```
2. Load the source ExampleFunction.hs source file into the GHCi environment
    ```
    :load lib/FirstFunction.hs
    ```
3. Call the example function
    ```
    exampleSum 2 3
    ```
4. Begin editing the `ExampleFunction` module according to the comments in its file
5. Reload the `FirstFunction.hs` file in GHCi as you make changes - call the functions that you have added or changed to debug them!
6. When you are ready, run `cabal test` to run the test suite. You can also run `cabal run first-function` to run the `Main` module

Without modifying source code, `cabal test` should run successfully and output the following:

```
Running 1 test suites...
Test suite tests: RUNNING...
Test suite tests: PASS
Test suite logged to: path/to/logs
```