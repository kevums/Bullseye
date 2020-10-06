//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Kevin Landry on 6/24/20.
//  Copyright © 2020 Kevin Landry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var simpsonNames = [String]()
    var simpsonJobs = [String]()
    var simpsonImage = [UIImage]()
    var chosenSimpsonName = ""
    var chosenSimpsonImage = UIImage()
    var chosenSimpsonJob = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        // Simpson Objects
        // adding this shit 
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        
        // SIMPSON BOOK DATA
        simpsonNames.append("Bart")
        simpsonNames.append("Homer")
        simpsonNames.append("Lisa")
        simpsonNames.append("Marge")
        simpsonNames.append("Moe")
        simpsonNames.append("Apu")
        
        simpsonImage.append(UIImage(named: "bart")!)
        simpsonImage.append(UIImage(named: "homer")!)
        simpsonImage.append(UIImage(named: "lisa")!)
        simpsonImage.append(UIImage(named: "marge")!)
        simpsonImage.append(UIImage(named: "moe")!)
        simpsonImage.append(UIImage(named: "apu")!)
        
        simpsonJobs.append("Student/asshole")
        simpsonJobs.append("Nuclear Engineer or some shit")
        simpsonJobs.append("Student/musician")
        simpsonJobs.append("Mom")
        simpsonJobs.append("Bartender")
        simpsonJobs.append("Quik-e-Mart Man")
        
        navigationItem.title = "dem simpz"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            simpsonNames.remove(at: indexPath.row)
            simpsonImage.remove(at: indexPath.row)
            simpsonJobs.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
            cell.textLabel?.text = simpsonNames[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return simpsonNames.count
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            chosenSimpsonName = simpsonNames[indexPath.row]
            chosenSimpsonImage = simpsonImage[indexPath.row]
            chosenSimpsonJob = simpsonJobs[indexPath.row]
            
            performSegue(withIdentifier: "toDetailsVC", sender: nil)
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender Sender: Any?) {
            if segue.identifier == "toDetailsVC" {
                let destinationVC = segue.destination as! detailsVC
                destinationVC.selectedSimpsonName = chosenSimpsonName
                destinationVC.selectedSimpsonImage = chosenSimpsonImage
                destinationVC.selectedSimpsonJob = chosenSimpsonJob
                
            }
        }
        
        
    }



