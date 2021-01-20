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
public class UploadFilesTest {

    public UploadFilesTest() {
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
     * Test of getUserId method, of class UploadFiles.
     */
    @Test
    public void testGetUserId() throws Exception
    {
        System.out.println("getUserId");
        String username = "";
        UploadFiles instance = new UploadFiles();
        String expResult = "";
        String result = instance.getUserId(username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class UploadFiles.
     */
    @Test
    public void testMain()
    {
        System.out.println("main");
        String[] args = null;
        UploadFiles.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}