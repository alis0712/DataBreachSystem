/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.forms;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 *
 * @author syeda
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({com.forms.AgentDownloadTest.class,com.forms.LoginFormTest.class,com.forms.UserManamgementTest.class,com.forms.RegistrationFormTest.class,com.forms.ChangePasswordTest.class,com.forms.AgentRequestsTest.class,com.forms.resources.ResourcesSuite.class,com.forms.ProbabilityCalculationsTest.class,com.forms.UploadFilesTest.class,com.forms.ViewSharedFilesTest.class,com.forms.MainFormTest.class})
public class FormsSuite {

    @BeforeClass
    public static void setUpClass() throws Exception
    {
    }

    @AfterClass
    public static void tearDownClass() throws Exception
    {
    }

    @Before
    public void setUp() throws Exception
    {
    }

    @After
    public void tearDown() throws Exception
    {
    }

}