start :-
    write("Nom:"),
    read(Student),
    write("A-t-il payé les frais?/y/n"),
    read(Paye),
    write("s'est-il enrolé?/y/n"),
    read(Enrole),
    write("A-t-il payé le labo?/y/n"),
    read(Labo),
    write("Pas de manque de cote?/y/n"),
    read(Manque),
   (Paye == y,Enrole == y,Labo == y,Manque == y),
    go.

go:-
    write("Simulation d'un systeme de deliberation"),nl,
    write("L1 informatique"),nl,
    write('BD :'),read(Bd),
    write('Algorithmique et structure de données :'),read(Algo),
    write('Architecture de systemes tele-info :'),read(Archi),
    write('genie logiciel :'),read(Gl),
    write('conception :'),read(C),
    write('langage pour systeme :'),read(Lps),
    write('calculabilité :'),read(Ca),
    write('langage formel et compilation :'),read(Lfc),
    write('Introduction aux automates :'),read(A),
    write('IA:'),read(Ia),
    write("SOR:"),read(Sor),
    process(Bd,Algo,Archi,Gl,C,Lps,Ca,Lfc,A,Ia,Sor).


process(Bd,Algo,Archi,Gl,C,Lps,Ca,Lfc,A,Ia,Sor):-
    Deno is 6*3*20+4*8*20,
    T is (((6*(Bd+Algo+Archi))+(4*(Gl+C+Lps+Ca+Lfc+A+Ia+Sor))) / Deno)*100,
    write('Vous avez obtenu :'),
    cote(X,T),
    write(T),write("%, avec mention: "),
    write(X).

Table is [(Bd,Algo,Archi,Gl,C,Lps,Ca,Lfc,A,Ia,Sor)].
cote("GRANDE DISTINCTION",P) :- P>=80,P>=70,P>=50.
cote("DISTINCTION",P) :- P<80,P>=70,P>=50.
cote("SATISFACTION",P) :-
    P>=50,P<55,sublist(<(10),Table,L),length(L,Taille),Taille<2;
    P>=55,P<60,sublist(<(10),Table,L),length(L,Taille),Taille<3;
    P>=60,P<70,sublist(<(10),Table,L),length(L,Taille),Taille<4.
cote("AJOURNE",P) :- P<50,P>=40.
cote("NAF",P):- P<50,P<40.




