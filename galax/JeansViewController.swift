//
//  JeansViewController.swift
//  galax
//
//  Created by Jarvics on 02/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class JeansViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var SweaterBtn: UIButton!
    @IBOutlet weak var ShoeBtn: UIButton!
    @IBOutlet weak var jacketBtn: UIButton!
    @IBOutlet weak var JeanBtn: UIButton!
    @IBOutlet weak var TshirtBtn: UIButton!
    @IBOutlet weak var BlackBtn: UIButton!
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var SecView: UIView!
    @IBOutlet weak var FivView: UIView!
    @IBOutlet weak var ForthView: UIView!
    @IBOutlet weak var ThrdView: UIView!
    @IBOutlet weak var FrstView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
      BlackBtn.isHidden = true
        MenuView.isHidden = true
        FrstView.isHidden = true
        SecView.isHidden = false
        ThrdView.isHidden = true
        ForthView.isHidden = true
        FivView.isHidden = true
       JeanBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        // Do any additional setup after loading the view.
    }
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
//                let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
//                self.navigationController?.pushViewController(nxtvc, animated: true)
                 self.navigationController?.popViewController(animated: true)
                print("Swiped right")
                
            case UISwipeGestureRecognizerDirection.left:
                let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "JacketViewController") as! JacketViewController
                self.navigationController?.pushViewController(nxtvc, animated: true)
                print("Swiped left")
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 8
        
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "JeansCollectionViewCell", for: indexPath)as! JeansCollectionViewCell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "PicViewController") as! PicViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func TShirtBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        FrstView.isHidden = false
        SecView.isHidden = true
        ThrdView.isHidden = true
        ForthView.isHidden = true
        FivView.isHidden = true
        TshirtBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        jacketBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)

    }
    @IBAction func JeansBtn(_ sender: Any) {
//        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "JeansViewController") as! JeansViewController
//        self.navigationController?.pushViewController(nxtvc, animated: true)
//        FrstView.isHidden = true
//        SecView.isHidden = false
//        ThrdView.isHidden = true
//        ForthView.isHidden = true
//        FivView.isHidden = true
//        TshirtBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
//        JeanBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
//        jacketBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
//        ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
//        SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
//
    }
    @IBAction func JacketBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "JacketViewController") as! JacketViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        FrstView.isHidden = true
        SecView.isHidden = true
        ThrdView.isHidden = false
        ForthView.isHidden = true
        FivView.isHidden = true
        TshirtBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        jacketBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)

    }
    @IBAction func ShoeBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ShoesViewController") as! ShoesViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        FrstView.isHidden = true
        SecView.isHidden = true
        ThrdView.isHidden = true
        ForthView.isHidden = false
        FivView.isHidden = true
        TshirtBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        jacketBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        ShoeBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        SweaterBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)

    }
    @IBAction func SweaterBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "SweaterViewController") as! SweaterViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        FrstView.isHidden = true
        SecView.isHidden = true
        ThrdView.isHidden = true
        ForthView.isHidden = true
        FivView.isHidden = false
        TshirtBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        JeanBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        jacketBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        ShoeBtn.setTitleColor(UIColor(red: 111.0/255.0, green: 111.0/255.0, blue: 111.0/255.0, alpha: 1), for: UIControlState.normal)
        SweaterBtn.setTitleColor(UIColor.red, for: UIControlState.normal)

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
