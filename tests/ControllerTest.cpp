/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   ControllerTest.cpp
 * Author: fulop
 *
 * Created on Mar 27, 2016, 3:42:55 PM
 */

#include "ControllerTest.h"


CPPUNIT_TEST_SUITE_REGISTRATION(ControllerTest);

ControllerTest::ControllerTest() {
}

ControllerTest::~ControllerTest() {
}

void ControllerTest::setUp() {
}

void ControllerTest::tearDown() {
}

void ControllerTest::simulationTest() {
    
    Controller& control = Controller::getInstance();
    
    // create parts
    control.initialize();
    
    // start server
    control.startSimulation();
    
    // sleep for 10 sec
    std::this_thread::sleep_for(std::chrono::milliseconds(10 * 1000));
    
    // stop server
    control.stopSimulation();
    
    CPPUNIT_ASSERT(true);
}

 void ControllerTest::homePositionTest(){
     
    bool success = true; 
    float test_ang = 123423;
    Controller& control = Controller::getInstance();
    PartContainerManager parts = PartContainerManager::getInstance();
    
    
    control.initialize();
     
    // set not null angle values
    try{
        parts.joints.get("J1")->setAngle(test_ang);
        parts.joints.get("J2")->setAngle(test_ang);
        parts.joints.get("J3")->setAngle(test_ang);
        parts.joints.get("J4")->setAngle(test_ang);
        parts.joints.get("J5")->setAngle(test_ang);
    
        // validate if joint angles has been set
        if(parts.joints.get("J1")->getAngle() != test_ang)success = false;
        if(parts.joints.get("J2")->getAngle() != test_ang)success = false;
        if(parts.joints.get("J3")->getAngle() != test_ang)success = false;
        if(parts.joints.get("J4")->getAngle() != test_ang)success = false;
        if(parts.joints.get("J5")->getAngle() != test_ang)success = false;
        
        control.moveToHomePosition();
        
        // validate if joint angles has been set
        if(parts.joints.get("J1")->getAngle() != 0)success = false;
        if(parts.joints.get("J2")->getAngle() != 0)success = false;
        if(parts.joints.get("J3")->getAngle() != 0)success = false;
        if(parts.joints.get("J4")->getAngle() != 0)success = false;
        if(parts.joints.get("J5")->getAngle() != 0)success = false;
        
    }catch(std::out_of_range oor){
        std::cout << oor.what() << std::endl;
        success = false;
    }
    
    CPPUNIT_ASSERT(success);

 }
