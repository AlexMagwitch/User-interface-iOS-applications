//
//  CommunitiesTableViewController.swift
//  HomeWork1
//
//  Created by Саша Сенюта on 05.05.2022.
//

import UIKit

class CommunitiesTableViewController: UITableViewController {
    
    @IBAction func addChosenCommunity(segue: UIStoryboardSegue){
        if let sourceVC = segue.source as? GlobalCommunitiesTableViewController,
           let indexPath = sourceVC.tableView.indexPathForSelectedRow {
            let community = sourceVC.globalCommunities[indexPath.row]
            
            if !communities.contains(where: {$0.name == community.name}){
                communities.append(community)
                tableView.reloadData()
            }
        }
    }
    
    var communities = [
        Community(imageCommunity: UIImage.init(systemName: "heart.text.square"), nameCommunity: "Community Name 1"),
        Community(imageCommunity: UIImage.init(systemName: "heart.text.square.fill"), nameCommunity: "Community Name 2"),
        Community(imageCommunity: UIImage.init(systemName: "heart"), nameCommunity: "Community Name 3"),
        Community(imageCommunity: UIImage.init(systemName: "heart.fill"), nameCommunity: "Community Name 4"),
        Community(imageCommunity: UIImage.init(systemName: "heart.circle"), nameCommunity: "Community Name 5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning с
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return communities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CommunityCell", for: indexPath) as? CommunityCell else {
            preconditionFailure("Error")
        }
        
        cell.communityNameLabel.text = communities[indexPath.row].name
        cell.communityImageView.image = communities[indexPath.row].image

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

        // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            communities.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
     
    }
    

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
