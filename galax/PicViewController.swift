//
//  PicViewController.swift
//  galax
//
//  Created by Jarvics on 02/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class PicViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UIScrollViewDelegate {

   
    @IBOutlet weak var pagecontroller: UIPageControl!
    @IBOutlet weak var PicCollectionView: UICollectionView!
    var a = Int()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pagecontroller.currentPage) * PicCollectionView.frame.size.width
        PicCollectionView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(PicCollectionView.contentOffset.x / PicCollectionView.frame.size.width)
        
        a = Int(pageNumber)
        pagecontroller.currentPage = Int(pageNumber)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 3
        
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PicCollectionViewCell", for: indexPath)as! PicCollectionViewCell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
            let cellSize: CGSize = CGSize(width: (self.PicCollectionView.frame.width) , height: self.PicCollectionView.frame.height)
            return cellSize
          }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func GoBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func CartBtn(_ sender: Any) {
        let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "MyCartViewController") as! MyCartViewController
        self.navigationController?.pushViewController(nxtvc, animated: true)

    }
    @IBAction func ContinueBtn(_ sender: Any) {
        
            let nxtvc = self.storyboard?.instantiateViewController(withIdentifier: "ShippingViewController") as! ShippingViewController
            self.navigationController?.pushViewController(nxtvc, animated: true)
            
     
    }

}
