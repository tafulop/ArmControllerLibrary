/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   ControllerTest.h
 * Author: fulop
 *
 * Created on Mar 27, 2016, 3:42:55 PM
 */

#ifndef CONTROLLERTEST_H
#define CONTROLLERTEST_H

#include "../Controller.h"
#include <cppunit/extensions/HelperMacros.h>
#include <chrono>
#include <thread>

class ControllerTest : public CPPUNIT_NS::TestFixture {
    
    CPPUNIT_TEST_SUITE(ControllerTest);

   // CPPUNIT_TEST(simulationTest);
    CPPUNIT_TEST(homePositionTest);

    CPPUNIT_TEST_SUITE_END();

public:
    ControllerTest();
    virtual ~ControllerTest();
    void setUp();
    void tearDown();

private:
    
    void simulationTest();
    
    void homePositionTest();
};

#endif /* CONTROLLERTEST_H */

