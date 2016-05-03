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

#include "../PartContainerLibrary/PartContainerManager.h"
#include "../SocketServer/SimulationManager.h"
#include "../InitializerLibrary/InitializationManager.h"
#include "../CalculatorLibrary/ForwardKinematics.h"


class Controller {
public:
    
    /**
     * Initializes the robotic arm.
     */
    void initialize();
    
    /**
     * Start the simulation.
     */
    void startSimulation();
    
    /**
     * Stops the simulation.
     */
    void stopSimulation();
    
    /**
     * Toggles the inverse kinematics calculation
     * @param enable
     */
    void switchForwardKinCalc(bool enable);
    
    
    /**
     * Moves the robotic arm into initial/home position.
     */
    void moveToHomePosition();
    
    /**
     * Use to get the current position of the effector
     * @return 
     */
    arma::fmat getEffectorPosition(){
        return this->forwardKinematics.getEffectorPosition();
    }
    
        
    /* Forward kinematics */
    ForwardKinematics& forwardKinematics = ForwardKinematics::getInstance();
    
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
    
    /* Container of parts*/
    PartContainerManager pcManager = PartContainerManager::getInstance();
    
    /* Simulation */
    SimulationManager& simulationManager = SimulationManager::getInstance();
    
    /* initializer */
    InitializationManager& initializer = InitializationManager::getInstance();

    
    /**
     * Default constructor.
     */
    Controller();

};

#endif /* CONTROLLER_H */

