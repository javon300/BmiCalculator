/*
 file name: BMI Calculator main view controller
 
 Author: Matthew Maxwell
Student ID: 301200258
Date: dec 17 2021
Changes made: this file hasnt been changed since first push
 **/

import UIKit
//defines tableView set up and is connected to a view controller in main
class SubViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var taskString = String()//seg
    
    //array of tasks
    private let taskList = ["head", "shoulder", "knees", "toes"]
    
    // String table identifier
    let tasksTableIdentifier = "tasksTable"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    
    //overide function for table length via item count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskList.count
    }
    
    
    //function renders array on app start up
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //instantiaate reusable cell
        var cell = tableView.dequeueReusableCell(withIdentifier: tasksTableIdentifier)
        if(cell == nil)
        {
            //actual instance creation
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: tasksTableIdentifier)
        }
     
        //adds task title to be displayed
        cell?.textLabel?.text = taskList[indexPath.row]
        
        //adds date as sudtext
        cell?.detailTextLabel?.text = "24/04/2002"
        
        
        return cell!
    }
    
    //what happens when row is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        ////animates a deselction of selected item then navigates to second page
        //tableView.deselectRow(at: indexPath, animated: true)
        //performSegue(withIdentifier: "navigate", sender: taskList[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
//        let detailsView = segue.destination as! DetailViewController
//        detailsView.taskString = sender as! String
    }

}
