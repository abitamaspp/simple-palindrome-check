# simple-palindrome-check
A simple R program to check whether a given string is palindrome or not

This is one problem of the technical test I get when applying a job. We were asked to write a program (in any language) to check whether a given string is palindorme or not.

Let's start from its definition. A palindrome is a word, number, phrase, or other sequence of characters which reads the same backward as forward, such as madam, racecar (https://en.wikipedia.org/wiki/Palindrome). The key point is **reads the same backward as forward**. That being said, such string can't have (says) both a and â. Well technically they are "A"s, but their pronunciation are different. Besides, both are different letters.

With that in mind, I figured these:

#### 1) Use a reverse-string function
Simple. The idea was give a string as input then compare with its original order (compare input with output). If they're same, then it is palindrome. Else, it isn't. And since it was hand write test, this will make me finish faster.

But then I realized... it was **hand write test**. Which means, they weren't interested in our precise, correct-grammar writing, but more of our logic and creativity. So long, solution 1 :(

#### 2) Construct reversed-order string
> _Then I thought, "Since they wanted to know our logic and creativity, why not construct the reserved-order string myself? Use loop, assign it to a variable, then compare it with its initial-order string."_

Well it is logical but not creative enough. I mean, it just solution 1 with extra step(s). It's not wrong, but let us think a more creative solution, me.

#### 3) Loop over the string
Here was the idea: check whether 1st and nth char are same. If true, then continue to check whether 2nd and (n-1)th are also same. Do this for n time. If every checks result "True", then it is palindrome. But if on one check the result is "False", then quit from loop and state it is not palindrome.


```R
a <- the string to check
b <- nchar(a)

for (i in 1:b)){
  if(substr(a,i,i) != substr(a,b,b)){
    break()
  }
  b <- nchar(a)-i
}
```


With this, assigning to a new variable for comparison isn't necessary. The program will compare while looping over the string. Pretty neat! I went with this solution.

#### 3.1) Loop half the string's length
While waiting for my test result, I realized something:
> _If a palindrome string can be read forward and backward similarly, then why bother loop over entire string? Why not just compare its "front" with its "back" sections?_

Oh my, I shoud've thought it earlier :laughing: Here's to make it clearer:


The word (string) "madam" can be written as,
```bash
m - a - d - a - m
1 - 2 - 3 - 4 - 5
```
Then reversed "madam",
```bash
m - a - d - a - m
5 - 4 - 3 - 2 - 1
```


Notice that the third letter (**d**) is still in its place (at the center; third place from left both initialy and reversed). This means, I don't have to compare 1 with 5, 2 with 4, 3 with 3, 4 with 3, and 5 with 1. I only need to compare letters that **move**, or in other words, **change position**. 

But what about even length string? Won't its all letters change position? 
It is, but we still have the advantage. Let's see word "noon"


```bash
Original:
n - o - o - n
1 - 2 - 3 - 4

Reversed:
n - o - o - n
4 - 3 - 2 - 1
```

With that word, instead of comparing 1 with 4, 2 with 3, 3 with 2, 4 with 1, we only need to compare 1 with 4 and 2 with 3. From 4 comparisons down to just 2.

Imagine if we want to check a 100 million length string. Instead of doing 100 million comparisons, we just need to do 50 million comparisons. But still, 50% "discount" is nothing special. ~~I also don't get the job anyway~~ So one day, I'm looking a way to push the efficiency further.
