#ifndef Joueur_H
#define Joueur_H

#include <string>
#include "Equipe.h"
using namespace std;
        
// Cette classe represente un Joueur
class Joueur {
public:
    // Constructeurs
    Joueur () {}
    Joueur(string,string,int,string,string);
    
    // Setters
    void setNom(string);
    void setPrenom(string);
    void setAge(int);
    
    // Getters
    string getNom();
    string getPrenom();
    int getAge();
    string getNomEquipe();
    string getPaysEquipe();
   
    // Associer une equipe à un joeur 
    void associerEquipe(string,string);
    // Enregistrer le Joueur
    void saveJoueur(string);
    // Afficher le Joueur
    void afficher();
    // Chercher un Joueur dans une base de donnees par titre
    Joueur* trouverJoueur(string, string,string);
    
private:
    // Informations sur le joueur
    string nom;
    string prenom;
    int age;
    // Informations sur l'équipe
    Equipe equipe;
    
};

#endif 
