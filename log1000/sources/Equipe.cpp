#include "Equipe.h"

#include <fstream>
#include <iostream>
#include <stdlib.h>

// Constructeur
Equipe::Equipe (string teamName,string teamPays) {
    this->teamName = teamName;
    this->teamPays = teamPays;
}

// Setters
string Equipe::setNomEquipe(string nom) {
    this->teamName=nom;
}

string Equipe::setPaysEquipe(string pays) {
     this->teamPays=pays;
}

// Getters

string Equipe::getNomEquipe() {
   return  this->teamName;
}

string Equipe::getPaysEquipe() {
    return this->teamPays;
}




