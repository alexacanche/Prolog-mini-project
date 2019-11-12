/* This program generates change adding up to a dollar consisting of half-dollars, quarters, dimes, nickles and pennnies */

/* First we create a function named change that receives a list of the respective units of the dollar */
change([H,Q,D,N,P]) :-
    /* We generate choices for values of some variable in order to satisfy some constraint */
    member(H,[0,1,2]),                      /* Half-dollars */
    member(Q,[0,1,2,3,4]),                  /* quarters     */
    member(D,[0,1,2,3,4,5,6,7,8,9,10]) ,    /* dimes        */
    member(N,[0,1,2,3,4,5,6,7,8,9,10,       /* nickels      */
               11,12,13,14,15,16,17,18,19,20]),
    /* 'is' doesn't represent represents unification and can do arithmetic */
    /* Multiply the variable with theri respective unit */
    S is 50*H + 25*Q +10*D + 5*N,
    /* checks that is equal or less than 100 meaning a dollar */
    S =< 100,
    /* Assigns P to the dollar minus the money which is the change */
    P is 100-S.
