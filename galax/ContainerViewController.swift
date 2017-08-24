//
//  ContainerViewController.swift
//  galax
//
//  Created by Jarvics on 02/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var Tshirtbtn: UIButton!
    @IBOutlet weak var BlackBtn: UIButton!
    @IBOutlet weak var containerview: UIView!
    @IBOutlet weak var SweaterBtn: UIButton!
    @IBOutlet weak var jacktBtn: UIButton!
    @IBOutlet weak var ShoeBtn: UIButton!
    @IBOutlet weak var JeanBtn: UIButton!
    @IBOutlet weak var SecView: UIView!
    @IBOutlet weak var FivView: UIView!
    @IBOutlet weak var ForthView: UIView!
    @IBOutlet weak var ThrdView: UIView!
    @IBOutlet weak var FrstView: UIView!
  weak var currentViewController: UIViewController?
    var storyboardId = String()
    override func viewDidLoad() {
        super.viewDidLoad()
         BlackBtn.isHidden = true
         MenuView.isHidden = true
         FrstView.isHidden = true
         SecView.isHidden = true
         ThrdView.isHidden = true
         ForthView.isHidden = true
         FivView.isHidden = true
        storyboardId = "TShirtViewController"
        if storyboardId == "TShirtViewController" {
         FrstView.isHidden = false
        Tshirtbtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
        self.currentViewController = self.storyboard?.instantiateViewController(withIdentifier: storyboardId)
        self.currentViewController!.view.translatesAutoresizingMaskIntoConstraints = false
        self.addChildViewController(self.currentViewController!)
        self.addSubview(subView: self.currentViewController!.view, toView: containerview)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func addSubview(subView:UIView, toView parentView:UIView) {
        parentView.addSubview(subView)
        var viewBindingsDict = [String: AnyObject]()
        viewBindingsDict["subView"] = subView
        parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[subView]|",
                                                                 options: [], metrics: nil, views: viewBindingsDict))
        parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[subView]|",
                                                                 options: [], metrics: nil, views: viewBindingsDict))
    }
    
    func cycleFromViewController(oldViewController: UIViewController, toViewController newViewController: UIViewController) {
        oldViewController.willMove(toParentViewController: nil)
        self.addChildViewController(newViewController)
        if !(containerview.subviews).contains(newViewController.view){
            self.addSubview(subView: newViewController.view, toView:containerview)
        }
        newViewController.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.5, animations: {
            newViewController.view.layoutIfNeeded()
        },
                       completion: { finished in
                        oldViewController.view.removeFromSuperview()
                        oldViewController.removeFromParentViewController()
                        newViewController.didMove(toParentViewController: self)
        })
    }
    
    func loadViewController_withIdentifier(identifier : String) {
        let newViewController = self.storyboard?.instantiateViewController(withIdentifier: identifier)
        newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
        self.cycleFromViewController(oldViewController: self.currentViewController!, toViewController: newViewController!)
        self.currentViewController = newViewController
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func SwitchTabs(_ sender: UIButton) {
        storyboardId = ""
      
        switch sender.tag {
        case 0:
            if storyboardId != "TShirtViewController"{
                storyboardId = "TShirtViewController"
                
            }
            FrstView.isHidden = false
            SecView.isHidden = true
            ThrdView.isHidden = true
            ForthView.isHidden = true
            FivView.isHidden = true
            Tshirtbtn.setTitleColor(UIColor.red, for: UIControlState.normal)
            JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            jacktBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            break
        case 1:
            if storyboardId != "JeansViewController"{
                storyboardId = "JeansViewController"
                
            }
            FrstView.isHidden = true
            SecView.isHidden = false
            ThrdView.isHidden = true
            ForthView.isHidden = true
            FivView.isHidden = true
            Tshirtbtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            JeanBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
            jacktBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            break
        case 2:
            if storyboardId != "JacketViewController"{
                storyboardId = "JacketViewController"
                
            }
            FrstView.isHidden = true
            SecView.isHidden = true
            ThrdView.isHidden = false
            ForthView.isHidden = true
            FivView.isHidden = true
            Tshirtbtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            jacktBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
            ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            break

        case 3:
            if storyboardId != "ShoesViewController"{
                storyboardId = "ShoesViewController"
                
            }
            FrstView.isHidden = true
            SecView.isHidden = true
            ThrdView.isHidden = true
            ForthView.isHidden = false
            FivView.isHidden = true
            Tshirtbtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            jacktBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            ShoeBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
            SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            break
            
        case 4:
            if storyboardId != "SweaterViewController"{
                storyboardId = "SweaterViewController"
                
            }
            FrstView.isHidden = true
            SecView.isHidden = true
            ThrdView.isHidden = true
            ForthView.isHidden = true
            FivView.isHidden = false
            Tshirtbtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            jacktBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
            SweaterBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        default:
            break
        }
        if storyboardId != ""{
            loadViewController_withIdentifier(identifier: storyboardId)
        }
        
    }
    @IBAction func Cncl(_ sender: Any) {
        BlackBtn.isHidden = true
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = -self.MenuView.frame.size.width })

    }
    @IBAction func BlackBtn(_ sender: Any) {
        BlackBtn.isHidden = true
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = -self.MenuView.frame.size.width })
    }

    @IBAction func MenuBtn(_ sender: Any) {
        BlackBtn.isHidden = false
        MenuView.isHidden = false
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = 0 })
        

    }
    @IBAction func HomeBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        
    }
    @IBAction func MyAccBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyAccountViewController") as! MyAccountViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    
    @IBAction func WishList(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyCartViewController") as! MyCartViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func Tracking(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TrackingViewController") as! TrackingViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    
    @IBAction func Setting(_ sender: Any) {
         let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func About(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func Logout(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)

        
    }
  
    }


