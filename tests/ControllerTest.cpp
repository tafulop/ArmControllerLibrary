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
    
    control.startSimulation();
    
    // sleep for 10 sec
    std::this_thread::sleep_for(std::chrono::milliseconds(10 * 1000));
    
    // stop server
    control.stopSimulation();
    
    CPPUNIT_ASSERT(true);
}


