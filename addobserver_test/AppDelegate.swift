//
//  AppDelegate.swift
//  addobserver_test
//
//  Created by Eric Gorr on 8/23/15.
//  Copyright (c) 2015 Eric Gorr. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    @IBOutlet weak var window:              NSWindow!
    @IBOutlet weak var theContentView:      NSView!
    

    
    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        let addViewController  = ADDViewController()
        let addView            = addViewController.view
        
        theContentView?.addSubview( addView )
    }

    
    
    func applicationWillTerminate(aNotification: NSNotification)
    {
        
    }
}

