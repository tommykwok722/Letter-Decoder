# Letter Decoder
A MATLAB program related to letter decryption and inspired by Zodiac Killer’s Cipher.

## Background
In the late 1960s, a serial killer (later named the Zodiac Killer) murdered at least five people in California.
He then sent taunting messages to the press in San Francisco containing a 340-character secret message but went unsolved for more than 50 years. <br>

After 51 years, a team of 3 researchers including David Oranchak, a software developer, Sam Blake, a mathematician, and Jarl Van Eycke, an Australian mathematician,
announced that they decoded the message on December 5, 2020.

## Specification
### Situation
Suppose the encrypted word is expressed as the pattern **XYZZ** (X, Y, Z are to be substituted by other letters), then one of the possible substitutions will be
***X*** $\rightarrow$ ***k***, ***Y*** $\rightarrow$ ***i***, ***Z*** $\rightarrow$ ***l***, the decrypted word is ***kill***.

### Objective
Given a list of words `wordlist.txt`, write a function `decrypt()` to find all possible matches of words from the word list based on a given pattern.
Define the function in the form of `function matches = decrypt(pattern)`.

### Examples
1. ***gamma*** is a match for the pattern **XYZZY**.
2. ***apply*** is a match for the pattern ***a*****XXY*****y***. <br>
(lower case letters should remain the same, upper case letters are to be substituted by other lower case letters)

### Rules
1. `pattern` consists of upper case letters and lower case letters.
   - Lower case letters are fixed. No need to be substituted by other letters.
   - Upper case letters are encrypted letters. Need to find the correct substitution.
   - Different letters in the pattern represent different letters in the decrypted word.
     - Example: in ***a*****XXY*****y***, the substitution for **X** and **Y** should be different from ***a*** and ***y***.

2. The function returns a matrix, with each row corresponding to a string matches of the pattern. The answers should be in the dictionary order.
3. Matches consists of at most 100 matches. If there are more than 100 matches, ignore the rest.
