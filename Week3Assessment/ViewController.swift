//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
            as! CustomTableViewCell
        
        let person = people[indexPath.row]
        
        cell.nameLabel.text = person.name
        cell.favoriteItemLabel.text = person.favoriteThing
        cell.backgroundColor = person.favoriteColor
        return cell
        
    }
    
    
    
    

    @IBOutlet weak var personTableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       people.append(Person(name: "Zach", favoriteThing: "Books", favoriteColor: .blue))
        
        people.append(Person(name: "Caleb", favoriteThing: "Fortnite", favoriteColor: .purple))
        people.append(Person(name: "Ambrose Burnside", favoriteThing: "Side Burns", favoriteColor: .cyan))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



