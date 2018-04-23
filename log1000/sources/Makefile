
article: Joueur.o main.o
	g++ -o FIFA main.o Joueur.o 

Joueur.o: Joueur.cpp Joueur.h
	g++ -o Joueur.o -c Joueur.cpp

main.o: main.cpp Joueur.h
	g++ -o main.o -c main.cpp
 
clean: 
	rm *.o
	rm Joueur
