#include "Joueur.h"
#include <fstream>
#include <iostream>
#include <stdlib.h>

// Constructeur
Joueur::Joueur (string nom,string prenom,int age,string teamName,string teamPays):equipe(Equipe(teamName,teamPays)) {
    // Joueur information
    this->nom = nom;
    this->prenom = prenom;
    this->age = age;
    // Equipe information
}

// Setters
void Joueur::setNom(string nom) {
    this->nom = nom;
}
void Joueur::setPrenom(string prenom) {
    this->prenom = prenom;
}
void Joueur::setAge(int age) {
    this->age = age;
}
// Associer équipe au joueur
void Joueur::associerEquipe (string teamName, string teamPays) {
    this->equipe.setNomEquipe(teamName) ;
   this->equipe.setPaysEquipe(teamPays)  ;
}

// Getters
string Joueur::getNom() {
    return this->nom;
}
string Joueur::getPrenom() {
    return this->prenom;
}

int Joueur::getAge() {
    return this->age;
}

string Joueur::getNomEquipe() {
    return this->equipe.getNomEquipe();
}

string Joueur::getPaysEquipe() {
    return this->equipe.getPaysEquipe();
}

// Enregistrer l'Joueur dans un fichier
void Joueur::saveJoueur (string fileName) {
    ofstream outfile (fileName.c_str(), std::ofstream::binary | std::fstream::app);
    // write to outfile
    outfile<<this->nom <<","
		   <<this->prenom <<","
		   <<this->age <<","
		   <<this->equipe.getNomEquipe() << ","
		   <<this->equipe.getPaysEquipe() <<"\n";
    outfile.close();
}
void recupereInformation(string information,string ligne,int j)
{
    for (int i = j ; i < ligne.length() ; i++) {
        if (ligne[i] != ',') {
            information += ligne[i];
        } else {
            break;
        }
}
}
// Trouver un Joueur avec son nom dans la base de données DB
Joueur* Joueur::trouverJoueur (string DB, string nom,string prenom) {
    
    ifstream fichier(DB.c_str(), ios::in); // Ouvrir le fichier "DB.txt"
    Joueur*tmp=NULL;
	
    if(fichier)
    {
        string line;
        // Lire les Joueurs, un Joueur par ligne dans la base de données (DB)
        while (getline(fichier, line)) {
            string nomJoueurDB;
            // Récupérer le nom de joueur
            recupereInformation(nomJoueurDB,line,0);
            
            // Si le Joueur qu'on lit actuellement est celui qu'on cherche
            if (nomJoueurDB == nom) {
                
                // Récupérer le prenom du joueur
                string prenomJoueurDB;
               recupereInformation(prenomJoueurDB,line,nomJoueurDB.size()+2);
                
                if (prenomJoueurDB == prenom) {
				 
			//  Récupérer le nom de l'age
			string ageJoueurDB;
			recupereInformation(ageJoueurDB,line,prenomJoueurDB.size()+2);
				
			
			// Récupérer le nom de l'équipe
			string teamNameDB;
			recupereInformation(teamNameDB,line,ageJoueurDB.size()+2);
		
			// Récupérer le pays de l'équipe
			string teamPaysDB;
			recupereInformation(teamPaysDB,line,teamNameDB.size()+2);
			
			// Créer un objet de type Joueur avec les informations récupérées
			Joueur *a = new Joueur(nomJoueurDB, prenomJoueurDB,atoi(ageJoueurDB.c_str()), teamNameDB, teamPaysDB);
			// Fermer la base de données
			fichier.close();
			// Retourner l'Joueur sélectionné
			return a;
		} // end if (prenomJoueurDB == prenom) 	
	    } //end if (nomJoueurDB == nom) 
         }// end while
        fichier.close();
    }// end  if(fichier)
    return NULL;
}

// Afficher l'Joueur
void Joueur::afficher() {
    std::cout << "Nom : " << this->nom << std::endl;
    std::cout << "Prenom : " << this->prenom << std::endl;
    std::cout << "Age : " << this->age << std::endl;
    std::cout << "Nom equipe : " << this->equipe.getNomEquipe() << std::endl;
    std::cout << "Pays equipe: " << this->equipe.getPaysEquipe() << std::endl;
}



