/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Controller.h
 * Author: fulop
 *
 * Created on March 26, 2016, 3:57 PM
 */

#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "../RoboticArmPartLibrary/AllParts.h"
#include "../PartContainerLibrary/PartContainerManager.h"


class Controller {
public:
    
    /**
     * Singleton 
     * @return 
     */
    static Controller& getInstance();
    
    /**
     * Destructor.
     */
    virtual ~Controller();
    
private:
    
    PartContainerManager pcManager = PartContainerManager::getInstance();
    
    /**
     * Default constructor.
     */
    Controller();

};

#endif /* CONTROLLER_H */

