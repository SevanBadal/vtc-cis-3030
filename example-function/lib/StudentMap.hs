import qualified Data.Map as Map
-- Week 4b

generateIDs :: Foldable t => t a -> [Int]
generateIDs students = [1..length students]

assignIDs :: [a] -> [b] -> [(a, b)]
assignIDs ids students  = zip ids students

createDictionary :: Ord a => [a] -> Map.Map Int a
createDictionary students = Map.fromList $ assignIDs (generateIDs students) students

seedDictionary :: Map.Map Int [Char]
seedDictionary = createDictionary ["Sevo", "Mary", "John", "Blaze"]

insertNewStudent :: a -> Map.Map Int a -> Map.Map Int a
insertNewStudent name dictionary = Map.insert ( (+1) . fst $ Map.findMax dictionary) name dictionary

upsertStudent :: Ord k => k -> a -> Map.Map k a -> Map.Map k a
upsertStudent id name dictionary = Map.insert id name dictionary

fetchStudentByID :: Ord k => k -> Map.Map k a -> Maybe a
fetchStudentByID id dictionary = Map.lookup id dictionary

fetchStudentByName :: Eq a => a -> Map.Map k a -> Map.Map k a
fetchStudentByName name dictionary = Map.filter (== name) dictionary

deleteStudentByName :: Eq a => a -> Map.Map k a -> Map.Map k a
deleteStudentByName name dictionary = Map.filter (/= name) dictionary

doesStudentExist :: Ord k => k -> Map.Map k a -> Bool
doesStudentExist id dictionary = Map.member id dictionary