% c:/Users/alexa/OneDrive/Desktop/University/3A DATA/Programming Paradigms/Prolog/change.pl compiled 0.00 sec, 1 clauses
?- 
|    change([0,2,3,2,P]). 
P = 10 .

?- change([1,2,3,4,P]).
false.

?- 
|    change([1,0,0,0,P]).
P = 50 .

?- change([0,0,0,0,1]).
false.

?- change([2,0,0,0,P]).
P = 0 .

?- change([0,0,3,4,P]).
P = 50 
