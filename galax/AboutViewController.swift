//
//  AboutViewController.swift
//  galax
//
//  Created by Jarvics on 04/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func AboutBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "AboutAppViewController") as! AboutAppViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        
    }
    @IBAction func PrivacyBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "PrivacyViewController") as! PrivacyViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func ContactBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as! ContactViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func TermsBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TermsofServicsViewController") as! TermsofServicsViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func BackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
