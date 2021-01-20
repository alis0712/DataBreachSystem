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
public class ChangePasswordTest {

    public ChangePasswordTest() {
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
     * Test of performLogin method, of class ChangePassword.
     */
    @Test
    public void testPerformLogin()
    {
        System.out.println("performLogin");
        ChangePassword instance = new ChangePassword();
        boolean expResult = false;
        boolean result = instance.performLogin();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class ChangePassword.
     */
    @Test
    public void testMain()
    {
        System.out.println("main");
        String[] args = null;
        ChangePassword.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}