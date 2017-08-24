//
//  HomeViewController.swift
//  galax
//
//  Created by Jarvics on 01/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UIScrollViewDelegate {
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var BlackBtn: UIButton!
    @IBOutlet weak var pagecontroler: UIPageControl!
   
    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var ACollectionView: UICollectionView!
 
    @IBOutlet weak var BCollectionView: UICollectionView!
    var a = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        BlackBtn.isHidden = true
        MenuView.isHidden = true
        
        ScrollView.isScrollEnabled = true
        ScrollView.contentSize = CGSize(width: 0, height: self.FirstView.frame.size.height)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pagecontroler.currentPage) * ACollectionView.frame.size.width
        ACollectionView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(ACollectionView.contentOffset.x / ACollectionView.frame.size.width)
        
        a = Int(pageNumber)
    pagecontroler.currentPage = Int(pageNumber)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if collectionView == ACollectionView{
        return 3
        }else{
        return 6
        }
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == ACollectionView{
    let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "ACollectionViewCell", for: indexPath)as! ACollectionViewCell
        
        return cellA
        }else{
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "BCollectionViewCell", for: indexPath)as! BCollectionViewCell
            
            return cellB

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == ACollectionView{
            let cellSize: CGSize = CGSize(width: (self.ACollectionView.frame.width) , height: self.ACollectionView.frame.height)
            return cellSize
        }else{
            var size = CGSize()
            let width = self.BCollectionView.frame.size.width
            if indexPath.item % 2 == 0
            {
                size = CGSize(width: (width / 2) - 8, height: (width / 2) - 4)
                return size
            }
                
            else if indexPath.item % 2 != 0 {
                
                size = CGSize(width: (width / 2) - 8, height: (width / 2) - 4)
                return size
                
            }
                
            else{
                return CGSize(width:self.view.frame.size.width , height: self.view.frame.size.height)
                
            }
        }
    }
    
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if collectionView == BCollectionView{
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ShippingViewController") as! ShippingViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
        }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func MenuBtn(_ sender: Any) {
        BlackBtn.isHidden = false
        MenuView.isHidden = false
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = 0 })
    }
    @IBAction func BlackBtn(_ sender: Any) {
        BlackBtn.isHidden = true
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = -self.MenuView.frame.size.width })
    }
    @IBAction func CartBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func CnclBtn(_ sender: Any) {
        BlackBtn.isHidden = true
        UIView.animate(withDuration: 0.4, animations:{ self.MenuView.frame.origin.x = -self.MenuView.frame.size.width })
    }
    @IBAction func MensBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func WomenBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func BabyBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TShirtViewController") as! TShirtViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
// MARK :- MENU BTN
    @IBAction func HomeBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func MyAccount(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyAccountViewController") as! MyAccountViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func AddtoCarts(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyCartViewController") as! MyCartViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func Cards(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "TrackingViewController") as! TrackingViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
      @IBAction func Settings(_ sender: Any) {
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
