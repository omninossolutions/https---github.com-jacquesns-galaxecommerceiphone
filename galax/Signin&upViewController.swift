//
//  ViewController.swift
//  galax
//
//  Created by Jarvics on 01/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var global = Bool()
 
    @IBOutlet weak var BackView2: UIView!
    @IBOutlet var MasterView: UIView!
    @IBOutlet weak var Backview: UIView!
    @IBOutlet weak var JoinGalaxBtn: UIButton!
    @IBOutlet weak var BlackView: UIButton!
    @IBOutlet weak var SignupView: UIView!
    @IBOutlet weak var UpPassBtn: UITextField!
    @IBOutlet weak var UnSltimg: UIImageView!
    @IBOutlet weak var Sltimg: UIImageView!
    @IBOutlet weak var UpAdresBtn: UITextField!
    @IBOutlet weak var UpNameTxt: UITextField!
    @IBOutlet weak var InPassTxt: UITextField!
    @IBOutlet weak var InEmailtxt: UITextField!
    @IBOutlet weak var SigninView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BlackView.isHidden = true
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK:- Main In View
    @IBAction func SignupBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.SignupView.frame.origin.y = self.BackView2.frame.origin.y + self.BackView2.frame.size.height  })
        
        BlackView.isHidden = false
    }

    @IBAction func SigninBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.SigninView.frame.origin.y = self.Backview.frame.origin.y + self.Backview.frame.size.height  })

        BlackView.isHidden = false
    }

    @IBAction func facebookBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    
    //MARK:- Sign In View
    
    @IBAction func Cnclbtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.SigninView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        
        BlackView.isHidden = true

    }
    @IBAction func GetStarted(_ sender: Any) {
        let providedEmailAddress = InEmailtxt.text
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        let chkpassword = isPasswordValid(InPassTxt.text!)
        if InEmailtxt.text==""{  InEmailtxt.attributedPlaceholder = NSAttributedString(string:"Please Enter Your Email",
                                                                               attributes:[NSForegroundColorAttributeName: UIColor.red])
        }
        else if InPassTxt.text==""{  InPassTxt.attributedPlaceholder = NSAttributedString(string:"enter Your Password",
                                                                                            attributes:[NSForegroundColorAttributeName: UIColor.red])
        }
        else if isEmailAddressValid == false
        {
            print("Email address is not valid")
            let alert = UIAlertController(title: "Alert", message: "Enter valid email address", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }

        else if (!chkpassword) {
            let alert = UIAlertController(title: "Invalid", message: "Your Password is Too Short", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
              else{
            
//            if userprvder == 1{
                let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                self.navigationController?.pushViewController(nxtvc, animated: true)
//
//            }
//            else if userprvder == 2{
//                let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//                self.navigationController?.pushViewController(nxtvc, animated: true)
//
//            }
        }

        }
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3,}"
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        return  returnValue
    }
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^([A-Za-z\\d$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,}")
        return passwordTest.evaluate(with: password)
    }
    //MARK:- Sign Up View
    @IBAction func Joingalaxbtn(_ sender: Any) {
        let providedEmailAddress = UpAdresBtn.text
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        let chkpassword = isPasswordValid(UpPassBtn.text!)
        if UpNameTxt.text==""{  UpNameTxt.attributedPlaceholder = NSAttributedString(string:"Please Enter Your Name",
                                                                                       attributes:[NSForegroundColorAttributeName: UIColor.red])
        }
        else if UpAdresBtn.text==""{  UpAdresBtn.attributedPlaceholder = NSAttributedString(string:"Enter Your Email",
                                                                                          attributes:[NSForegroundColorAttributeName: UIColor.red])
        }
        else if UpPassBtn.text==""{  UpPassBtn.attributedPlaceholder = NSAttributedString(string:"Enter Your Password",
                                                                                          attributes:[NSForegroundColorAttributeName: UIColor.red])
        }
        else if isEmailAddressValid == false
        {
            print("Email address is not valid")
            let alert = UIAlertController(title: "Alert", message: "Enter valid email address", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
            
        else if (!chkpassword) {
            let alert = UIAlertController(title: "Invalid", message: "Your Password is Too Short", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
        else{
            
            //            if userprvder == 1{
            let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(nxtvc, animated: true)
            //
            //            }
            //            else if userprvder == 2{
            //                let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            //                self.navigationController?.pushViewController(nxtvc, animated: true)
            //
            //            }
        }

    }
    @IBAction func CanclBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.SignupView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        
        BlackView.isHidden = true
        


    }
    @IBAction func CustomerBtn(_ sender: Any) {
        Sltimg.image = UIImage(named:"Select")
        UnSltimg.image = UIImage(named:"unSelect")
  
    }
    @IBAction func SellerBtn(_ sender: Any) {
        Sltimg.image = UIImage(named:"unSelect")
        UnSltimg.image = UIImage(named:"Select")
    }
    
}
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

extension UITextField
{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
        }
    }
}
extension UIButton {
    func roundedButton(){
        let maskPAth1 = UIBezierPath(roundedRect: self.bounds,
                                     byRoundingCorners: [.topLeft , .topRight],
                                     cornerRadii:CGSize(width:8.0, height:8.0))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = self.bounds
        maskLayer1.path = maskPAth1.cgPath
        self.layer.mask = maskLayer1
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

