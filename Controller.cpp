/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Controller.cpp
 * Author: fulop
 * 
 * Created on March 26, 2016, 3:57 PM
 */

#include "Controller.h"

Controller::Controller() {
}

Controller::~Controller() {
}

Controller& Controller::getInstance(){
    static Controller instance;
    return instance;
}

void Controller::startSimulation(){
    this->simulationManager.enableSimulation();
}


void Controller::stopSimulation(){  
    this->simulationManager.disableSimulation();
}

void Controller::initialize(){
    
    this->initializer.createRoboticArmModel();
    
}

/* Set all angles to 0 */
void Controller::moveToHomePosition(){
    
    try{
        this->pcManager.joints.get("J1")->setAngle(0);
        this->pcManager.joints.get("J2")->setAngle(0);
        this->pcManager.joints.get("J3")->setAngle(0);
        this->pcManager.joints.get("J4")->setAngle(0);
        this->pcManager.joints.get("J5")->setAngle(0);
    }catch(std::out_of_range oor){
        std::cout << oor.what() << std::endl;
    }

}


void Controller::switchForwardKinCalc(bool enable){
    
    forwardKinematics.setAutorun(enable);

}