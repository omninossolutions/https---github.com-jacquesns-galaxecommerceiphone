//
//  MyAccountViewController.swift
//  galax
//
//  Created by Jarvics on 05/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate {
    @IBOutlet weak var ScrollVieW: UIScrollView!
    @IBOutlet weak var OrderBtn: UIButton!
    @IBOutlet weak var ProfileBtn: UIButton!
    @IBOutlet weak var ScrollOrderView: UIView!
    @IBOutlet weak var ScrollProfileView: UIView!
    @IBOutlet weak var MyOrderView: UIView!
    @IBOutlet weak var ProfileView: UIView!
    @IBOutlet weak var OrderTableView: UITableView!
    var Namearr = NSMutableArray()
    var currentPage = 0
    var previousPage = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       Namearr = ["Dispatched","On Way","Delivered"]
    ProfileView.isHidden = false
    MyOrderView.isHidden = true
    ProfileBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        ScrollVieW.isScrollEnabled = true
        // Do any additional setup after loading the view.
   

    }
    override func viewDidLayoutSubviews() {
        ScrollVieW.contentSize = CGSize(width: view.frame.size.width * 2, height: 0)
            }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func resetTabs() {
        ProfileView.backgroundColor = UIColor.red
        MyOrderView.backgroundColor = UIColor.red
       
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        resetTabs()
        if ScrollVieW.contentOffset.x == 0 {
            ScrollProfileView.backgroundColor = UIColor.gray
        }
        else if ScrollVieW.contentOffset.x > 0 && ScrollVieW.contentOffset.x <= view.frame.size.width {
            ScrollOrderView.backgroundColor = UIColor.gray
        }
       
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if scrollView.contentOffset.x == 0 {
//            ProfileView.isHidden = false
//            MyOrderView.isHidden = true
//        }
//        else if scrollView.contentOffset.x > 0 && scrollView.contentOffset.x <= view.frame.size.width {
//            ProfileView.isHidden = false
//            MyOrderView.isHidden = true
//        }
//        
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Namearr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = OrderTableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell") as! OrderTableViewCell
       
        cell.OrderPlaceLbl.text = self.Namearr[indexPath.row] as? String
        
    return cell
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ProfileBtn(_ sender: Any) {
          self.ScrollVieW.contentOffset.x = self.ScrollVieW.frame.width * 0
        ProfileView.isHidden = false
        MyOrderView.isHidden = true
         ProfileBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
          OrderBtn.setTitleColor(UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1), for: UIControlState.normal)
    }
    
    @IBAction func MyOrder(_ sender: Any) {
        self.ScrollVieW.contentOffset.x = self.ScrollVieW.frame.width * 1
        ProfileView.isHidden = true
        MyOrderView.isHidden = false
        OrderBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        ProfileBtn.setTitleColor(UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1), for: UIControlState.normal)
    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
