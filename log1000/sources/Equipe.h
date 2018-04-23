#ifndef Equipe_H
#define Equipe_H

#include <string>

using namespace std;
        
// Cette classe represente un Equipe
class Equipe {
public:
    // Constructeurs
    Equipe () {}
    Equipe(string, string);
    
    // Setters
    string setNomEquipe(string);
    string setPaysEquipe(string);    
    // Getters
    string getNomEquipe();
    string getPaysEquipe();
  
    
private:
    string teamName;
    string teamPays;
    
};

#endif 
