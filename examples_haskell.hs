--Question 1: max in a list using recursion
maxFunc :: (Ord a)=>[a]->a
maxFunc [] = error"Empty List"
maxFunc [x]=x
maxFunc (x:xs)
 |x>maxT =x
 |otherwise = maxT where maxT= maxFunc xs
 
--Question 2: True if intersection of list is empty
intersectHelp :: (Ord a)=>[a]->[a]->[a]
intersectHelp [] _ = []
intersectHelp _ [] = []
intersectHelp (x:xs) (y:ys) 
 |x==y =x: (intersectHelp xs ys)
 |x<y =(intersectHelp xs (y:ys)) 
 |otherwise = intersectHelp (x:xs) ys
checkFunc :: (Ord a)=>[a]->[a]->Bool
checkFunc []_=True
checkFunc _[]=True
checkFunc (x:xs)(y:ys)
 |intersectHelp (x:xs)(y:ys)==[]=True
 |otherwise=False

--Question 3: union of 2 lists
unionFunc :: (Ord a)=>[a]->[a]->[a]
unionFunc [][]=[]
unionFunc xs []=xs
unionFunc [] ys=ys
unionFunc (x:xs)(y:ys)
 |x==y =x :(unionFunc xs ys)
 |x<y =x :(unionFunc xs (y:ys))
 |otherwise =y :(unionFunc (x:xs) ys)
 
--Question 4: Last element of list
lastFunc :: (Ord a)=>[a]->a
lastFunc []=error"Empty List"
lastFunc [x]=x
lastFunc (x:xs)= lastFunc xs

--Question 5: combined elements of list
tupleHelper :: (Ord a)=> a->[a]->[(a,a)]
tupleHelper x []=[]
tupleHelper x (y:ys)=(x,y):(tupleHelper x ys)
tupleFunc :: (Ord a)=>[a]->[a]->[(a,a)]
tupleFunc [] ys = []
tupleFunc (x:xs) ys =(tupleHelper x ys)++(tupleFunc xs ys)

--Question 6: Fibonacci series with optimization
fibHelper n ans prev
 |n==0 = ans
 |otherwise = fibHelper (n-1) (ans+prev) ans
fib n
 |n==0 = 1
 |otherwise = fibHelper (n-1) 1 1

 

