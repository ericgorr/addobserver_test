//
//  ADDViewController.swift
//  addobserver_test
//
//  Created by Eric Gorr on 8/23/15.
//  Copyright (c) 2015 Eric Gorr. All rights reserved.
//

import Cocoa

class ADDViewController: NSViewController
{
    @IBOutlet weak var fieldText:   NSTextField!

    
    
    func fieldTextChanged( notification: NSNotification )
    {
        println( "fieldTextChanged" )
    }

    
    
    override var nibName: String?
    {
        return "ADDViewController"
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver( self, selector: "fieldTextChanged:" as Selector, name: NSControlTextDidChangeNotification, object: fieldText )
    }
}
