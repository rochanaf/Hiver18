#include <fstream>
#include <iostream>
#include <stdlib.h>
#include "Equipe.h"

Equipe::Equipe(string nomEquipe, string nomPays,Joueur* joueurs)
{
    teamName=nomEquipe;
    teamPays=nomPays;
    joueurs=new Joueur();
}

~Equipe::Equipe()
{
    delete joueurs;
}

string Equipe:: getNomEquipe()
{
    return teamName;
}

string Equipe::getPaysEquipe()
{
    return teamPays;
}

void Equipe::associerEquipe(string, string)
{
    this->teamName = teamName;
    this->teamPays = teamPays;
}
