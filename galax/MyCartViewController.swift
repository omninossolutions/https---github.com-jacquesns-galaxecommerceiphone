//
//  MyCartViewController.swift
//  galax
//
//  Created by Jarvics on 05/08/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class MyCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    var i = Int()
    var Namearr = NSMutableArray()
    var imagearr = NSMutableArray()
    var Moneyarr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
      Namearr = ["Blue Jeans","Round Neck","Jackets"]
        imagearr = ["jeans","Women","jackets"]
         Moneyarr = ["$2765","$4367","$6765"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return Namearr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell") as! CartTableViewCell
        cell.PlusBtn.tag = indexPath.row
        cell.MinusBtn.tag = indexPath.row
        cell.ImageViw.image = UIImage(named: imagearr[indexPath.row] as! String)
        cell.NameLbl.text = self.Namearr[indexPath.row] as! String
        cell.MoneyLbl.text = self.Moneyarr[indexPath.row] as! String
        cell.PlusBtn.addTarget(self, action: #selector(self.Plusbtn), for: .touchUpInside)
        cell.MinusBtn.addTarget(self, action: #selector(self.Minusbtn), for: .touchUpInside)
       
        cell.CountLbl.text! = i.description
   
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let editAction = UITableViewRowAction(style: .normal, title: "Edit") { (rowAction, indexPath) in
            //TODO: edit the row at indexPath here
        }
        editAction.backgroundColor = UIColor(red: 27.0/255.0, green: 154.0/255.0, blue: 232.0/255.0, alpha: 1)

        let deleteAction = UITableViewRowAction(style: .normal, title: "Delete") { (rowAction, indexPath) in
            //TODO: Delete the row at indexPath here
            self.imagearr.remove(at: indexPath.row)
                self.Namearr.remove(at: indexPath.row)
            self.Moneyarr.remove(at: indexPath.row)
        }
        deleteAction.backgroundColor = .red
        return [editAction,deleteAction]
    }
    func Plusbtn(_ sender: UIButton) {
     //    TableView.reloadData()
//         let btnClick : Int = sender.tag
        
         let cell = TableView.dequeueReusableCell(withIdentifier: "CartTableViewCell") as! CartTableViewCell
        
        let s = cell.CountLbl.text
        
        if let x = Int(s!) {
            if (x < 100) {
                i = x + 1
                print(i)
                cell.CountLbl.text! = i.description
         //       TableView.reloadData()
                print(cell.CountLbl.text!)
            }
           }
         
        
     }
    
    func Minusbtn(_ sender: UIButton){
      //   TableView.reloadData()
        let cell = TableView.dequeueReusableCell(withIdentifier: "CartTableViewCell") as! CartTableViewCell
        let s = cell.CountLbl.text

        if let x = Int(s!) {
            if (x > 0) {
                i = x - 1
               cell.CountLbl.text = i.description
            //     TableView.reloadData()
            }
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
    @IBAction func PlaceDisOrdr(_ sender: Any) {
        
    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
