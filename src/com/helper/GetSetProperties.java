package com.helper;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Properties;
import java.util.ResourceBundle;

/**
 *
 * @author syeda
 */
public class GetSetProperties 
{

    public static Properties properties = new Properties();
    public static String baseName = "com.helper.Application";
    
    public static ResourceBundle rb = null;
    public static boolean read = false;
    public static long lastModified = 0;

    static {
        System.out.println("GetSetProperties.enclosing_method()");
        loadBundle();
    }

    public static void loadBundle() {
        rb = ResourceBundle.getBundle(baseName);
    }

    public static String getProperty(String key) {
        //	System.out.println("GetSetProperties.p() "+rb.getKeys());

        String value = rb.getString(key);
        if (value == null) {
            value = "";
        } else {
            value = value.trim();
        }
        return value;
    }

    public static String p(String key) {
        //	System.out.println("GetSetProperties.p() "+rb.getKeys());

        String value = rb.getString(key);
        if (value == null) {
            value = "";
        } else {
            value = value.trim();
        }
        return value;
    }

    public static void main(String[] args) {

        System.out.println("GetSetProperties.main() " + rb.getString("INDEX_DIRECTORY"));
    }
}


