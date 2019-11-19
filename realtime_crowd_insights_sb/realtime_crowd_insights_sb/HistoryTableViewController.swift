//
//  HistoryTableViewController.swift
//  realtime_crowd_insights_sb
//
//  Created by Mickey Rocha on 11/13/19.
//  Copyright © 2019 Lorraine Bichara Assad. All rights reserved.
//

import UIKit
import CoreData

class HistoryTableViewController: UITableViewController {
    
    var list_user = [User]()
    
    override func viewDidLoad() {

//        createData()
        retrieveData()
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list_user.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = list_user[indexPath.row].name
        cell.detailTextLabel?.text = String(list_user[indexPath.row].age)
        

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let historyController = segue.destination as! HistoryViewController
        let selectedIndex = tableView.indexPathForSelectedRow!

        historyController.name = list_user[selectedIndex.row].name ?? "Uknown"
        historyController.age = String(list_user[selectedIndex.row].age)
        historyController.gender = list_user[selectedIndex.row].gender ?? "Uknown"
        historyController.visit = String(list_user[selectedIndex.row].visits)
        historyController.race = list_user[selectedIndex.row].race ?? "Uknown"
        historyController.emotion = list_user[selectedIndex.row].emotion ?? "Uknown"
        historyController.faceId = list_user[selectedIndex.row].faceId ?? "Uknown"
        
    }
    
    // MARK: - Retrieving Data (Core Data)
    func createData(){
        print("Creating")
        //Inside the AppDelegate we have the container we want to refer to
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        //Now we create a context from the container
        let context = appDelegate.persistentContainer.viewContext
        
        //Creating new entity for new records
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)!
        
        //Adding new information (Test)
        let user = NSManagedObject(entity: entity, insertInto: context)
        user.setValue(22, forKey: "age")
        user.setValue("Happy", forKey: "emotion")
        user.setValue("dIecaF", forKey: "faceId")
        user.setValue("Male", forKey: "gender")
        user.setValue("Miguel Rocha", forKey: "name")
        user.setValue("Latin", forKey: "race")
        user.setValue(1, forKey: "visits")
        
        //Trying to save it inside Core Data
        do{
            try context.save()
        }catch{
            fatalError("Error while creating data - func createData() 'HistoryTableViewController'")
        }
    }
    
    func retrieveData(){
        print("Retrieving")
        //Inside the AppDelegate we have the container we want to refer to
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        //Now we create a context from the container
        let context = appDelegate.persistentContainer.viewContext
        
        //We prepare the fetch request
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        //Trying to fetch data
        do{
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]{
                list_user.append(data as! User)
//                print(data)
            }
            
        } catch{
            fatalError("Error while retriving data - func retrieveData() 'HistoryTableViewController'")
        }
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

}
