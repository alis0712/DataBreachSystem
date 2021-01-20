/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.forms;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author syeda
 */
public class MainFormTest {

    public MainFormTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception
    {
    }

    @AfterClass
    public static void tearDownClass() throws Exception
    {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of logout method, of class MainForm.
     */
    @Test
    public void testLogout()
    {
        System.out.println("logout");
        MainForm instance = new MainForm();
        instance.logout();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setStatus method, of class MainForm.
     */
    @Test
    public void testSetStatus()
    {
        System.out.println("setStatus");
        String message = "";
        MainForm instance = new MainForm();
        instance.setStatus(message);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of startProgressBar method, of class MainForm.
     */
    @Test
    public void testStartProgressBar()
    {
        System.out.println("startProgressBar");
        MainForm instance = new MainForm();
        instance.startProgressBar();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of stopProgressBar method, of class MainForm.
     */
    @Test
    public void testStopProgressBar()
    {
        System.out.println("stopProgressBar");
        MainForm instance = new MainForm();
        instance.stopProgressBar();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class MainForm.
     */
    @Test
    public void testMain()
    {
        System.out.println("main");
        String[] args = null;
        MainForm.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of uploadFiles method, of class MainForm.
     */
    @Test
    public void testUploadFiles() throws Exception
    {
        System.out.println("uploadFiles");
        MainForm instance = new MainForm();
        instance.uploadFiles();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}