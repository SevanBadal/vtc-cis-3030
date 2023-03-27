# CIS-3030
## Types and IO

Rating and ExpressionTree should be defined in the appropriate lib files

Recursive ls should be defined within the `Main` module. You can run `main` with the following command: `cabal run types-and-io -v0`

### Debug lib modules in GHCi
1. Open an instance of GHCi
    ```
    ghci
    ```
2. Load the source files found in `lib/` into the GHCi environment
    ```
    :load lib/SomeHaskellFile.hs
    ```
3. Call the example function
    ```
    exampleSum 2 3
    ```
4. Begin editing the modules/files in `/lib` according to the comments in its file
5. Reload your GHCi env as you make changes - call the functions that you have added or changed to debug them! tip: `:reload` in GHCi will pull in any udpates to files/modules you have previously loaded
6. When you are ready, run `cabal test` to run the test suite. You can also run `cabal run <name-of-project>` to run the `Main` module
    - test commands for individual functions are specified in comments e.g. `cabal run some-function-test`
7. Submit on Canvas when the test suite passes or you run out of time!