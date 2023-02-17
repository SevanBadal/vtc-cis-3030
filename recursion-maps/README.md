# CIS-3030
## Recursion, Maps, etc

### Debug lib modules in GHCi
1. Open an instance of GHCi
    ```
    ghci
    ```
2. Load the source files found in `lib/` into the GHCi environment
    ```
    :load lib/RecursionMaps.hs
    ```
3. Begin editing the modules/files in `/lib` according to the comments in its file
4. Reload your GHCi env as you make changes - call the functions that you have added or changed to debug them! tip: `:reload` in GHCi will pull in any udpates to files/modules you have previously loaded
5. When you are ready, run `cabal test` to run the test suite. You can also run `cabal run <name-of-project>` to run the `Main` module
    - test commands for individual functions are specified in comments e.g. `cabal run some-function-test`
6. Submit on Canvas when the test suite passes or you run out of time!