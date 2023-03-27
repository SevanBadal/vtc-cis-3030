module Example.ExpressionTree where

-- 2) Define a module Example.ExpressionTree
-- ExpressionTree should be of kind * -> * meaning that its type of value is not fixed.
-- An instance of ExpressionTree should be either a simple value or an operation node.
-- An operation node has a function defining the operation, a string describing the function and two subtrees, each of which are ExpressionTrees.
-- Define (and export) an evaluate function that will evaluate an entire ExpressionTree, yielding the result.
-- So: evaluate $ OpNode (+) "+" (ValueNode 3) (ValueNode 4) should return 7
-- Finally, make ExpressionTree an instance of Show such that it displays the tree in pre-order.
-- So: show $ OpNode (*) "*" (ValueNode 2) $ OpNode (+) "+" (ValueNode 3) (ValueNode 4) should return "* 2 + 3 4" 
-- test: cabal run expression-tree-test -v0

-- create the ExpressionTree data type here

-- create the instance of Show here

-- write your evaluate function here