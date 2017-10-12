# https://projecteuler.net/problem=17
# If the numbers 1 to 5 are written out in words: 
# one, two, three, four, five, then there are 
# 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) 
# inclusive were written out in words, how many letters would be used?

one <- 3
two <- 3
three <- 5
four <- 4
five <- 4
six <- 3
seven <- 5
eight <- 5
nine <- 4
ten <- 3
eleven <- 6
twelve <- 6
thirteen <- 8
fourteen <- 8
fifteen <- 7
sixteen <- 7
seventeen <- 9
eighteen <- 8
nineteen <- 8
twenty <- 6
thirty <- 6
forty <- 5
fifty <- 5
sixty <- 5
seventy <- 7
eighty <- 6
ninety <- 6 
hundred <- 7
and <- 3
thousand <- 8

# ones digits
sum(c(one, two, three, four, five,
      six, seven, eight, nine) * 9 * 10) +
# teens
sum(c(ten, eleven, twelve, thirteen,
      fourteen, fifteen, sixteen,
      seventeen, eighteen, nineteen) * 10) +
# tens digits
sum(c(twenty, thirty, forty, fifty,
      sixty, seventy, eighty, ninety) * 10 * 10) +
# hundreds digits
sum(c(one, two, three, four, five,
      six, seven, eight, nine) * 100) +
# additional words
hundred * 100 * 9 + and * 99 * 9 + one + thousand  

# 21124 letters
