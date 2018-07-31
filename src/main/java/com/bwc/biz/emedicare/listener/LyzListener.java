package com.bwc.biz.emedicare.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.bwc.biz.emedicare.common.TimerManager;

/**
 * Application Lifecycle Listener implementation class LyzListener
 *
 */
public class LyzListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public LyzListener() {
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
    	new TimerManager();
    }
	
}
