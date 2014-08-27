Functional Programming

Fall 2014, Schrum

Assignment 1: Math



This assignment will introduce you to the basic workings of Haskell, and help you develop some simple functions. 
Defining these functions is straight-forward for the most part, but you will encounter some quirks and pitfalls 
of the Haskell language while completing this assignment. This assignment will give you a bit more guidance than 
future assignments, but there are still some tricky issues that you will need to deal with in this assignment. 
Here is a list of the learning objectives for this assignment:



1. Get experience defining basic math functions in Haskell.

2. See how Haskell automatically assigns types to functions.

3. See how Haskell's type system can sometimes cause problems for a programmer.

4. Learn how to look up information in the book.

5. Get practice explaining your code while writing in the literate programming style.



This is an individual assignment. Each student must complete it on their own and turn in their own code. The 
file you turn in will be this file, renamed as follows: Your last name followed by the assignment number and the 
"lhs" extension. For example, if I were turning in this assignment, I would turn in one file named 
"Schrum#1.lhs" via Moodle. You should also fill out the following entries to make sure I have all appropriate 
information:



Name: [TODO]

E-Mail: [TODO]

Phone: [TODO]



All instances of TODO in the file need to be filled in by you. You may only share your code with me and 
departmental tutors. However, you may talk about your code, and the answers to the questions with anyone in the 
class, with me, and with departmental tutors. You may not discuss any part of this assignment with students 
outside of this class, and you may not look up any information online, unless otherwise stated below. You can 
use the textbook as a reference tool.



CODE WARNING: All code must be written in the literate programming style. Here is a blurb from Wikipedia 
explaining what literate programming is:



"Literate programming is an approach to programming introduced by Donald Knuth in which a program is given as an 
explanation of the program logic in a natural language, such as English, interspersed with snippets of macros 
and traditional source code, from which a compilable source code can be generated."



In one sense, this approach simply means providing extensive comments using complete sentences. You are probably 
not used to writing comments in this style, but doing so will assure that I can easily understand your code. 
Fully explain your code in complete sentences before presenting it, so I can appreciate the thought process 
behind your code. Haskell has built-in support for literate programming. By using the file extension "lhs" 
(Literate Haskell Script), the Hugs system interprets plain text as comments, and only treats lines that start 
with a '>' as code. This convention is the reason that this file can be executed by Hugs. Moving on: If your 
code doesn't work at all or has bugs, then talk about them in the literate comments preceding your code so that 
I know. Note that I won't be able to load and run your assignment if there is incomplete or broken code, so 
remove the starting '>' symbols from broken code and explain these omissions in the literate comments.



----------------------------------------------------------------



Start off by defining some basic functions to compute the volumes and areas of particular shapes. These 
functions can be created using basic math operators. Some of them will require the mathematical constant pi, 
which is also a built-in Haskell constant. You may look up these formulas online.



1.1. Define a function to compute the volume of a cube, given the length x of each side:



[TODO: Complete Haskell code, add >]

> volumeOfCube x = x^3



1.2. Define a function to compute the area of a circle, given the radius r:



[TODO: Complete Haskell code, add >]

> areaOfCircle r = pi * (r^2)



1.2. Define a function to compute the area of a triangle, given the width of the base w, and the height h 
perpendicular to the base:



[TODO: Complete Haskell code, add >]

> areaOfTriangle h w = (h*w) / 2



1.3. Define a function to compute the volume of a cylinder, given the radius r and the height h:



[TODO: Complete Haskell code, add >]

> volumeOfCylinder h r = areaOfCircle(r) * h



1.4. Use ":t " followed by the function names above to get the type for each function you have defined. Do these 
make sense to you? What do they mean? Do you have any questions?



[TODO]

volumeOfCube :: Num a => a -> a
areaOfCircle :: Floating a => a -> a
areaOfTriangle :: Fractional a => a -> a -> a
volumeOfCylinder :: Floating a => a -> a -> a


----------------------------------------------------------------



These next two functions convert between degree measurements in Celsius and Fahrenheit. Once again, you may 
check online for the exact formulas to do this.



2.1. Define a function to convert from Celsius to Fahrenheit:



[TODO: Complete Haskell code, add >]

cToF c = 



2.2. Define a function to convert from Fahrenheit to Celsius:



[TODO: Complete Haskell code, add >]

fToC f = 



2.3. After completing the above definitions, use Hugs to compute the result of "cToF (fToC 1)". Explain this 
result.



[TODO]



2.4. Now use Hugs to compute the result of "fToC (cToF 1)". Explain this result.



[TODO]



2.5. Use ":t " followed by the function names above to get the type for each function you have defined. Do these 
make sense to you? What do they mean? Do you have any questions?



[TODO]



----------------------------------------------------------------



Consider the classic algebra problem of finding the roots of a second-degree polynomial. In other words, 
consider the following equation:

a*x^2 + b*x + c = 0

This is a quadratic equation. Given that a, b, and c are constants, values of x that satisfy this equation can 
be found using the quadratic formula. In general, up to two different solutions are possible. Define a function 
that takes the values of a, b, and c in the above equation, and returns both values of x that satisfy it. Look 
up the quadratic formula online if you have forgotten it. In order to return two values as a single result, you 
need to return a tuple. Look this up in the index at the back of the book in order to learn how.



3.1. Define the function "roots" as described above. Be sure to use literate style comments to explain your 
function.



[TODO: Complete Haskell code, add >]

roots a b c = 



3.2. What result does your function give for a = 1, b = 4, and c = 4?



[TODO]



3.3. What result does your function give for a = 1, b = -4, and c = 4? Did any problems arise when trying to 
make Hugs compute this result? How did you enter this command?



[TODO]



3.4. What happens when you call the function with a = 5, b = 0, and c = 5? Why does this result happen? Is this 
result acceptable, or is there something you can do about it?



[TODO]



3.5. Use ":t " to get the type for the function you have defined. Does the type make sense to you? What does it 
mean? Do you have any questions?



[TODO]



----------------------------------------------------------------



The next function will require the use of conditional statements. Look them up in the book to learn how to use 
them. You will be defining a function that takes in three numbers, and indicates whether or not it is possible 
to interpret these values as the side lengths of a triangle. Your solution should make use of the Pythagorean 
Theorem, which you can look up online. First answer the following questions:



4.1. How should your function treat negative values? What about 0? Why?



[TODO]  



4.2. Your function should work regardless of the order in which parameters are sent to the function. For 
example, "triangle a b c" should return the same result as "triangle b a c" no matter what the values of a, b, 
and c are. Describe in words how you can achieve this result.



[TODO]



4.3. Now define your function. Be sure to use literate style comments to explain your function.



[TODO: Complete Haskell code, add >]

triangle a b c



4.4. Use ":t " to determine the type of your function. Does the type make sense to you? What does it mean? Do 
you have any questions?



[TODO]



4.5. Try running "triangle 5 3 4" and explain what happens. Do you get the result you expect? Why/why not?



[TODO]



4.6. Try running "triangle 2 3 (sqrt 13)" and explain what happens. Do you get the result you expect? Why/why 
not?



[TODO]



4.7. Depending on the result you get for the previous questions, you may need to go back and modify your 
definition of triangle so that it returns the correct result for these inputs. If you make changes, explain what 
those changes were and why you needed them. Otherwise, explain why you think no changes were necessary.



[TODO]



4.8. If you changed your function, then use ":t " to compare the old type to the new type. Has anything changed? 
Why?



[TODO]



----------------------------------------------------------------



5.1 Final assessment: Below this point you should write a short report (about 2-4 paragraphs) explaining what 
you learned from this assignment. At a minimum, your report should touch on the following topics: 

1. Did using Haskell make sense? What features of Haskell struck you as very different from what you were 
previously used to?

2. What did you learn about the type system in Haskell? What do you like/dislike about it?

3. What errors/bugs did you have to deal with, and how did you fix them? 

4. Did your test cases help you find/fix bugs?

5. If there are still bugs, then describe them.



[TODO]



Lastly, please rate this assignment on the following 1 to 10 scales:



Difficulty (1 is easy, 10 hard): [TODO]

Interesting (1 boring, 10 interesting): [TODO]

Worth (1 worthless, 10 worth doing): [TODO]



If you have any more comments about this assignment, put them below:



[TODO]



Finally, type out the honor code below, followed by your name. Also, describe any help you received from any 
source, including me:



[TODO]
