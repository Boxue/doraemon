//
//  ViewController.swift
//  ssss
//
//  Created by Mars on 6/17/16.
//  Copyright © 2016 Boxue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController {
   
    private func getMultiLanguageText(ofNation: String, forKey: String, inTable: String) -> String? {
        let projBundlePath = NSBundle.mainBundle().pathForResource(ofNation, ofType: "lproj")!
        let value = NSBundle(path: projBundlePath)?.localizedStringForKey(forKey, value: nil, table: inTable)
        
        return value
    }
    
    @IBAction func toChinese(sender: AnyObject) {
        self.welcomeLabel.text = self.getMultiLanguageText("Base", forKey: "welcomeLabel", inTable: "Language")
    }
    
    @IBAction func toEnglish(sender: AnyObject) {
        self.welcomeLabel.text = self.getMultiLanguageText("en", forKey: "welcomeLabel", inTable: "Language")
    }
    @IBAction func toJapanese(sender: AnyObject) {
        self.welcomeLabel.text = self.getMultiLanguageText("ja", forKey: "welcomeLabel", inTable: "Language")
    }
}