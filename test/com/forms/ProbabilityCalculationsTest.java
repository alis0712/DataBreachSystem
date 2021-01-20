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
public class ProbabilityCalculationsTest {

    public ProbabilityCalculationsTest() {
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
     * Test of refreshData method, of class ProbabilityCalculations.
     */
    @Test
    public void testRefreshData() throws Exception
    {
        System.out.println("refreshData");
        ProbabilityCalculations instance = new ProbabilityCalculations();
        instance.refreshData();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class ProbabilityCalculations.
     */
    @Test
    public void testMain()
    {
        System.out.println("main");
        String[] args = null;
        ProbabilityCalculations.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}