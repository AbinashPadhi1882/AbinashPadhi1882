//
//  ListVC.swift
//  Assignment
//
//  Created by Abinash Padhi on 18/09/21.
//

import UIKit

struct Headline {
    
    var name : String
    var text : String
    var image : String
}

class ListVC: UITableViewController {
    
    var headlines = [
        Headline(name: "Proin suscipit maximus", text: "Quisque ultrices odio in neque eleifend eleifend. Praesent tincidunt euismod sem, et rhoncus lorem facilisis eget.", image: "Blueberry"),
        Headline(name: "In ac ante sapien", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc in ipsum vehicula accumsan quis sit amet quam. Sed vel feugiat eros.", image: "Cantaloupe"),
        Headline(name: "Lorem Ipsum", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id ornare tortor, quis dictum enim. Morbi convallis tincidunt quam eget bibendum. Suspendisse malesuada maximus ante, at molestie massa fringilla id.", image: "Apple"),
        Headline(name: "Aenean condimentum", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non, finibus et diam. Morbi et felis a lacus pharetra blandit.", image: "Banana"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //tableView.invalidateIntrinsicContentSize()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.headlines.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: ListCell = tableView.dequeueReusableCell(withIdentifier: "List", for: indexPath as IndexPath) as? ListCell else {
            fatalError("AddressCell cell is not found")
        }

        let headline = self.headlines[indexPath.row]
        cell.lblName?.text = headline.name
        cell.lblTital?.text = headline.text
        cell.userImageView?.image = UIImage(named: headline.image)

        return cell
    }
    
}
