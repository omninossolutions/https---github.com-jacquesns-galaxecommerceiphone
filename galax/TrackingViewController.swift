//
//  TrackingViewController.swift
//  galax
//
//  Created by Jarvics on 04/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class TrackingViewController: UIViewController {

    @IBOutlet weak var BlackView: UIButton!
    @IBOutlet weak var CnclBackView: UIView!
    @IBOutlet weak var CnclView: UIView!
    @IBOutlet weak var BlackBTn: UIButton!
    @IBOutlet var MasterView: UIView!
    @IBOutlet weak var BackView1: UIView!
    @IBOutlet weak var PayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    BlackBTn.isHidden = true
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
    @IBAction func ViewReceipt(_ sender: Any) {
           BlackBTn.isHidden = false
        UIView.animate(withDuration: 0.4, animations: {
            self.PayView.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
    }
    @IBAction func `return`(_ sender: Any) {
        BlackBTn.isHidden = false
        UIView.animate(withDuration: 0.4, animations: {
            self.CnclView.frame.origin.y = self.CnclBackView.frame.origin.y + self.CnclBackView.frame.size.height  })
        
            }

    @IBAction func Help(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as! ContactViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)

    }
    @IBAction func BackBtn(_ sender: Any) {
           BlackBTn.isHidden = true
        UIView.animate(withDuration: 0.4, animations:{self.PayView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
    }
    @IBAction func BackHideBTn(_ sender: Any) {
           BlackBTn.isHidden = true
          UIView.animate(withDuration: 0.4, animations:{self.PayView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height
          })
        
    }
    @IBAction func CnlOkBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func BackVCBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
  
}
