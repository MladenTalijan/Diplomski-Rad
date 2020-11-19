/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pst.szdp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author IMT
 */
@WebServlet(name = "AddDiplController", urlPatterns = {"/AddDiplController"})
public class AddDiplController extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{ // get data from ui
        String name = request.getParameter("name");
        String nameLastname = request.getParameter("nameLastname");
        String brojIndeksa = request.getParameter("brojIndeksa");
        String smer = request.getParameter("smer");
        String nameLastnameM = request.getParameter("nameLastnameM");
        
        System.out.println("data--"+name+" "+nameLastname+" "+brojIndeksa+" "+smer+" "+nameLastnameM);
    }
}
