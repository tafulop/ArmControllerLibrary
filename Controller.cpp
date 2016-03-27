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

Controller::Controller& getInstance(){
    static Controller instance;
    return instance;
}