#ifndef Equipe_H
#define Equipe_H

#include <string>

using namespace std;

class Equipe {
public:
    Equipe () {}
    Equipe (string,string);
    string getNomEquipe();
    string getPaysEquipe();
    
    
private:
    string teamName;
    string teamPays;
};











#endif
