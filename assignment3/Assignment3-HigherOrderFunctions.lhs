Functional Programming
Fall 2014, Schrum
Assignment 3: Higher-Order Functions

Higher-Order functions are functions that can take in other functions as parameters. They are one of the most powerful features of functional programming languages. You can define your own higher order functions, but many useful and general higher-order functions already exist. These pre-existing functions can be used to define many other functions without resorting to a recursive definition. In this assignment, you are not allowed to recursively define any function. Instead, you must use existing functions to accomplish your goals. Here is a list of the learning objectives for this assignment:

1. Learn about higher-order functions available in Haskell.
2. Learn to use anonymous functions.
3. Learn to use list comprehensions.
4. Practice designing your own code testing procedure.
5. Get practice explaining your code while writing in the literate programming style.

This is an individual assignment. Each student must complete it on their own and turn in their own code. The file you turn in will be this file, renamed as follows: Your last name followed by the assignment number and the "lhs" extension. For example, if I were turning in this assignment, I would turn in one file named "Schrum#3.lhs" via Moodle. You should also fill out the following entries to make sure I have all appropriate information:

Name: [TODO]
E-Mail: [TODO]
Phone: [TODO]

All instances of TODO that appear below need to be filled in by you. You may only share your code with me and departmental tutors. However, you may talk about your code, and the answers to the questions with anyone in the class, with me, and with departmental tutors. You may not discuss any part of this assignment with students outside of this class, and you may not look up any information online, unless otherwise stated below. You can use the textbook as a reference tool.

CODE WARNING: Remember, you are not allowed to define any of your functions recursively! You can use functions from the Haskell library that are recursive (you will have to), but none of the functions that you define can use recursion. It may be challenging, but all of the functions below can be implemented elegantly using pre-existing Haskell functions.

CODE WARNING: All code must be written in the literate programming style. Fully explain your code in complete sentences before presenting it, so I can appreciate the thought process behind your code. If your code doesn't work at all or has bugs, then talk about them in the literate comments preceding your code so that I know. Note that I won't be able to load and run your assignment if there is incomplete or broken code, so remove the starting '>' symbols from broken code and explain these omissions in the literate comments.

----------------------------------------------------------------

1.1. Enter ":t [0,2..10]" into Hugs. What does the result mean? What result does "[0,2..10]" return? Explain what is happening in general.

[DONE]
enumFromThenTo 0 2 10 :: (Enum a, Num a) => [a]
It is a function that takes 3 parameters, and returns a list of elements which are Enums and Nums.
[0,2..10] returns: [0,2,4,6,8,10]
A list from 0 to 10 by adding 2.

1.2. Now consider this expression: [x^2 | x <- [0..10]]
This is called a list comprehension. What does it compute, and why? What is happening in general?

[DONE]
It computes a list of the squares of 0 to 10: [0,1,4,9,16,25,36,49,64,81,100]
It computes this because that's the purpose of a list comprehension.
A list is created.

1.3. Think of some situations where list comprehensions and enumerations would be useful. How would they make programming easier?

[DONE]
When a list of a certain pattern is needed.
It's a convenient way to create lists that follow a certain pattern.

----------------------------------------------------------------

These questions deal with anonymous functions.

2.1. Consider this anonymous function: (\x y -> x+y) 
What is the type of this expression? What does it do? Try applying it to several inputs, and show the results.

[DONE]
\x y -> x + y :: Num a => a -> a -> a
It takes two Nums and returns the sum.

Hugs> (\x y -> x+y) (-5) 10
5
Hugs> (\x y -> x+y) 5 10
15
Hugs> (\x y -> x+y) 40 0
40

2.2. Now do the same with this anonymous function: (\x -> (x+))
Answer the same questions.

[DONE]
\x -> (x +) :: Num a => a -> a -> a
It takes two Nums and returns the sum.

Hugs> (\x -> (x+)) (-5) 10
5
Hugs> (\x -> (x+)) 5 10
15
Hugs> (\x -> (x+)) 40 0
40

2.3. Now repeat the process with this anonymous function: (\(x,y) -> x+y)

[DONE]
\(x,y) -> x + y :: Num a => (a,a) -> a
It takes a tuple of two Nums and returns the sum.

Hugs> (\(x,y) -> x+y) ((-5), 10)
5
Hugs> (\(x,y) -> x+y) (5, 10)
15
Hugs> (\(x,y) -> x+y) (40, 0)
40

2.4. How are these three functions different/same?

[DONE]
They all perform the same basic function, returning the sum of two Nums.
The first just expects x and y and adds them.
The second only expects an x, and returns a function that expects a y.
The third just expects a tuple with two Nums.

2.5. Why might anonymous functions be useful?

[DONE]
They are quick to define and don't require a name. Useful for a function
that will probably only be used once.

----------------------------------------------------------------

Now you will learn about several of Haskell's built-in higher order functions.

3.1. Consider these example applications of Haskell's "map" function:
map even [0..10]
map odd [0..10]
What are the results? Based on these results, what does "map" do? What is the type of "map"? Explain it.

[TODO]

3.2. Consider Haskell's "zip" and "zipWith" functions:
zip [0,2..10] [1,3..11]
zipWith (+) [0,1..10] [0,(-1)..(-10)]
What are the results of these expressions, and why? What are these functions doing? What are their types? Explain.

[TODO]

3.3. What happens when the input lists to zip and zipWith have different lengths?

[TODO]

3.4. How would you define zip in terms of zipWith? Call your function "myZip" and define it below:

[TODO: Haskell Code Here, add >]
myZip

3.5. Now you will learn about some of Haskell's folding functions. Consider the following expressions:
foldl1 (+) [1..10]
foldr1 (+) [1..10]
foldl1 (-) [1..10]
foldr1 (-) [1..10]
What are the outputs of each of these expressions? Compare and contrast the results to figure out what is happening with foldl1 and foldr1, and explain the difference between them.

[TODO]

3.6. Try to figure out what the output of the following expression will be before running it:
foldl (\(x,y) z -> (x+y,z)) (0,0) [1..10]
After checking your answer, explain what this expression does. How is foldl different from foldl1? Compare the types of the two functions to gain insight.

[TODO]

----------------------------------------------------------------

Argmin and argmax are mathematical operations that return the function input that results in the min/max output. You may search the internet for more information on these operations, so long as you do not look up any code.

4.1. Define argmin and argmax. Recall that you cannot make any recursive definitions. Remember to use literate style.

[DONE: Haskell Code Here, add >]
For argmax, all results of f(x) which are positive will dedicate to the max sum.
For argmin, all results of f(x) which are negative will dedicate to the min sum.

>argmax f xs = filter (\x -> f(x) > 0) xs
>argmin f xs = filter (\x -> f(x) < 0) xs

4.2. Design a testing procedure for these functions that will convince me they are correct. You may share test cases with other students in the class, but at least half of your test cases must be your own. Indicate which ones you came up with yourself. How many are enough?

[DONE: Haskell Code]

>testArgmax xs = and (map (\x -> x > 0) (argmax (\x -> x) xs))
>testArgmin xs = and (map (\x -> x < 0) (argmin (\x -> x) xs))

Main> testArgmax [(-100)..100]
True
Main> testArgmax [0]
True
Main> testArgmax []
True
Main> testArgmin [(-100)..100]
True
Main> testArgmin [0]
True
Main> testArgmin []
True

Enough is enough.

------------------------------

This next function is fairly difficult to define, especially because you cannot use recursion. You may find it useful to organize your code into intermediate results using Haskell's "where" keyword.

5.1. Define a function that takes as input a String that represents a VALID Roman numeral representation of a number, and returns the Integer value. For example, "MCMLXXXIV" is the representation of 1984, and "MMXIV" is 2014. The six letters that can appear in your Strings are I, V, X, L, C, and M. You may look up any information you want regarding Roman numerals and their translation into decimal. Note any sources of help that you use, and use literate programming to describe your algorithm. Lastly, remember that you cannot use recursion (though built-in Haskell functions that happen to be recursively defined are ok). However, you can define some helper functions.

[TODO: Haskell Code]

5.2. Design a testing procedure for this function that will convince me it is correct. Remember that your code only has to work for validly formatted Roman numerals. You may share test cases with other students in the class, but at least half of your test cases must be your own. Indicate which ones you came up with yourself. How many are enough?

[TODO: Haskell Code]

----------------------------------------------------------------

6.1 Final assessment: Below this point you should write a short report (about 2-4 paragraphs) explaining what you learned from this assignment. At a minimum, your report should touch on the following topics: 
1. Do you understand list comprehensions? Were they useful?
2. Do you understand anonymous functions? Were they useful?
3. Do you understand Haskell's built-in higher-order functions? Are they useful?
4. What errors/bugs did you have to deal with, and how did you fix them? 
5. Did your test cases help you find/fix bugs?
6. If there are still bugs, then describe them.

[TODO]

Lastly, please rate this assignment on the following 1 to 10 scales:

Difficulty (1 is easy, 10 hard): [TODO]
Interesting (1 boring, 10 interesting): [TODO]
Worth (1 worthless, 10 worth doing): [TODO]

If you have any more comments about this assignment, put them below:

[TODO]

Finally, type out the honor code below, followed by your name. Also, describe any help you received from any source, including me:

[TODO]