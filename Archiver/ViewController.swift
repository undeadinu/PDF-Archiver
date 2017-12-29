//
//  ViewController.swift
//  Archiver
//
//  Created by Julian Kahnert on 29.12.17.
//  Copyright © 2017 Julian Kahnert. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var myDatePicker: NSDatePicker!
    @IBOutlet weak var descriptionField: NSTextField!
    @IBOutlet weak var tagField: NSTextField!
    @IBOutlet weak var filenameField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    // button callbacks
    @IBAction func nextButtonClicked(_ sender: Any) {
        let greeting = "NEXT"
        filenameField.stringValue = greeting
    }
    @IBAction func previousButtonClicked(_ sender: Any) {
        let greeting = "PREVIOUS"
        filenameField.stringValue = greeting
    }
    @IBAction func saveButtonClicked(_ sender: Any) {
        // getting & setting the date/time value
        let myDate = myDatePicker.dateValue
        print(myDate)
    }
    
    @IBAction func browseFile(sender: AnyObject) {
    
        let dialog = NSOpenPanel();
        
        dialog.title                   = "Choose a .txt file"
        dialog.showsResizeIndicator    = true
        dialog.showsHiddenFiles        = false
        dialog.canChooseDirectories    = true
        dialog.canCreateDirectories    = true
        dialog.allowsMultipleSelection = false
        dialog.allowedFileTypes        = ["pdf"]
        
        if (dialog.runModal() == NSApplication.ModalResponse.OK) {
            let result = dialog.url // Pathname of the file
            
            if (result != nil) {
                let path = result!.path
                filenameField.stringValue = path
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
    
    
    
}

