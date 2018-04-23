
article: Equipe.o Joueur.o main.o
	g++ -o FIFA main.o Joueur.o Equipe.o 

Joueur.o: Joueur.cpp Joueur.h
	g++ -o Joueur.o -c Joueur.cpp

Equipe.o: Equipe.cpp Equipe.h
	g++ -o Equipe.o -c Equipe.cpp

main.o: main.cpp Joueur.h
	g++ -o main.o -c main.cpp
 
clean: 
	rm *.o
	rm Joueur
	rm Equipe
