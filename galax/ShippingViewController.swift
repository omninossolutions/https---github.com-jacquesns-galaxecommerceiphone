//
//  ShippingViewController.swift
//  galax
//
//  Created by Jarvics on 02/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ShippingViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
var Sizearr = NSArray()
    @IBOutlet weak var Ship2PopView: UIView!
    @IBOutlet weak var ShipView2: UIView!
    @IBOutlet weak var ShipRecView2: UIView!
    @IBOutlet weak var SHipRecThankView: UIView!
    @IBOutlet weak var ShipRecptView: UIView!
    @IBOutlet weak var ShipPayView2: UIView!
    @IBOutlet weak var ShipPayView: UIView!
    @IBOutlet weak var ShipView3: UIView!
    @IBOutlet weak var Countlbl: UILabel!
    @IBOutlet weak var ShipView: UIView!
    @IBOutlet var MasterView: UIView!
    @IBOutlet weak var BackView1: UIView!
    @IBOutlet weak var BackView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SHipRecThankView.isHidden = true
        ShipView.isHidden = false
        
 Sizearr = ["38'","40'","42'","44'","46'","48'"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return Sizearr.count
        
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShipCollectionViewCell", for: indexPath)as! ShipCollectionViewCell
        cell.Sizelbl.text = Sizearr[indexPath.row] as! String
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
//         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShipCollectionViewCell", for: indexPath)as! ShipCollectionViewCell
//        if indexPath.item == indexPath.item{
//        print(indexPath.item)
////        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShipCollectionViewCell", for: indexPath)as! ShipCollectionViewCell
//            cell.ImageVieW.image = UIImage(named: "42_Inch")
//            
//        }else{
//        cell.ImageVieW.image = UIImage(named: "40_Inch")
//        
//        }
        if indexPath.item == indexPath.item{
        let selectedCell = collectionView.cellForItem(at: indexPath) as! ShipCollectionViewCell
        selectedCell.ImageVieW.image = UIImage(named: "42_Inch")
            selectedCell.Sizelbl.textColor = .white
        }
        else {
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if indexPath.item == indexPath.item{
            let selectedCell = collectionView.cellForItem(at: indexPath) as! ShipCollectionViewCell
            selectedCell.ImageVieW.image = UIImage(named: "40_Inch")
            selectedCell.Sizelbl.textColor = .red
        }
        else {
            
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
    
    // MARK :- SHIP VIEW
    @IBAction func FreeShipBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
//        ShipView.isHidden = true
    }
    @IBAction func ShipCnclBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    // MARK :- SHIP VIEW 2
    @IBAction func minusbtn(_ sender: Any) {
        let s = self.Countlbl.text
        let i : Int!
        
        if let x = Int(s!) {
            if (x > 0) {
                i = x - 1
                self.Countlbl.text = i.description
            }
        }
       
    }
    @IBAction func addbtn(_ sender: Any) {
        let i : Int!
        
        let s = self.Countlbl.text
        if let x = Int(s!) {
            if (x < 100) {
                i = x + 1
                self.Countlbl.text = i.description
            }
        }
    }

    @IBAction func Addtocart(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.Ship2PopView.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
     
    }
    @IBAction func Checkout(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipView3.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
          UIView.animate(withDuration: 0.4, animations:{self.ShipView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
            }
    @IBAction func Cnclbtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        
                 }
    // SHIP VIEW 2 POPVIEW
    @IBAction func OKBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.Ship2PopView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })

    }
    @IBAction func MyCart(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyCartViewController") as! MyCartViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    

    // SHIP VIEW 3
    @IBAction func DoneBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipPayView.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        UIView.animate(withDuration: 0.4, animations:{self.ShipView3.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })

       
    }
    @IBAction func CnclBtn(_ sender: Any) {
         UIView.animate(withDuration: 0.4, animations:{self.ShipView3.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
       
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
    }
    // SHIP VIEW PAY
    @IBAction func SwipetoPay(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipPayView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        UIView.animate(withDuration: 0.4, animations:{self.ShipPayView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
    }
    @IBAction func Cnclpay(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipPayView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
      
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipView3.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })

    }
    // SHIP VIEW PAY 2
    
    @IBAction func XCanclBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipPayView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipPayView.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        ShipView.isHidden = false
    }
    @IBAction func CanclBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipPayView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipPayView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        ShipView.isHidden = false
    }
  
    @IBAction func PayDone(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipRecptView.frame.origin.y = self.BackView2.frame.origin.y + self.BackView2.frame.size.height  })
         UIView.animate(withDuration: 0.4, animations:{self.ShipPayView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
    SHipRecThankView.isHidden = false
    }
    // SHIP VIEW RECEIPT
    @IBAction func SeeRecpeit(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipRecView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        UIView.animate(withDuration: 0.4, animations:{self.ShipRecptView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
      SHipRecThankView.isHidden = true
    }
    @IBAction func CnclRec(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipRecptView.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipPayView2.frame.origin.y = self.BackView1.frame.origin.y + self.BackView1.frame.size.height  })
        SHipRecThankView.isHidden = true
    }
    // ShipRecView2
    @IBAction func ContinueBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)
    }
    @IBAction func CanclRecBtn2(_ sender: Any) {
        UIView.animate(withDuration: 0.4, animations:{self.ShipRecView2.frame.origin.y = self.MasterView.frame.origin.y + self.MasterView.frame.size.height })
        UIView.animate(withDuration: 0.4, animations: {
            self.ShipRecptView.frame.origin.y = self.BackView2.frame.origin.y + self.BackView2.frame.size.height  })
        ShipView.isHidden = false
    }
    
}

