//
//  FriendsTableViewController.swift
//  HomeWork1
//
//  Created by Саша Сенюта on 05.05.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    
    let friends = [
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up"), nameFriend: "Name 1"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.fill"), nameFriend: "Name 2"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.circle"), nameFriend: "Name 3"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.circle.fill"), nameFriend: "Name 4"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.trianglebadge.exclamationmark"), nameFriend: "Name 5"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.down"), nameFriend: "Name 6"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.down.fill"), nameFriend: "Name 7"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.on.square"), nameFriend: "Name 8"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.up.on.square.fill"), nameFriend: "Name 9"),
        Friend(imageFriend: UIImage.init(systemName: "square.and.arrow.down.on.square"), nameFriend: "Name 10"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

                performSegue(withIdentifier: "fromFriendsToImages", sender: nil)
            }
        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning с
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else {
            preconditionFailure("Error")
        }
        
        cell.friendNameLabel.text = friends[indexPath.row].name
        cell.friendImageView.image = friends[indexPath.row].image

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFriendsToImages",
           let destinationVC = segue.destination as? ImagesCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.title = friends[indexPath.row].name
            destinationVC.chosenFriendImage = friends[indexPath.row].image
            }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*    // Override to support editing the table view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
