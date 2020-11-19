/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pst.szdp.controller;

import com.pst.szdp.servis.DiplServis;
import com.pst.szdp.vo.DiplVo;
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
    DiplVo diplVo = null;
    DiplServis diplServis = null;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{ // get data from ui
        String name = request.getParameter("name");
        String nameLastname = request.getParameter("nameLastname");
        String brojIndeksa = request.getParameter("brojIndeksa");
        String smer = request.getParameter("smer");
        String nameLastnameM = request.getParameter("nameLastnameM");
        
        diplVo = new DiplVo();
        diplVo.setName(name);
        diplVo.setNameLastname(nameLastname);
        diplVo.setBrojIndeksa(brojIndeksa);
        diplVo.setSmer(smer);
        diplVo.setNameLastnameM(nameLastnameM);
        
        diplServis = new DiplServis();
        diplServis.saveDipl(diplVo);
    }
}
