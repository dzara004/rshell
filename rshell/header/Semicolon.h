/* Type 3: ";" */
#ifndef SEMICOLON_H
#define SEMICOLON_H

#include "Connector.h"

class Semicolon : public Connector {
    public:
       Semicolon(Base* current, int previous) : Connector(current, previous) {};
       int execute();
};

#endif