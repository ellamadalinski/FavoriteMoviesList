//
//  ViewController.swift
//  FavoriteMoviesList
//
//  Created by ELLA MADALINSKI on 10/19/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    var favs : [String] = ["Interstellar", "Titanic", "Gifted", "Harry Potter", "Teen Beach Movie", "High School Musical", "How the Grinch Stole Christmas", "8", "9", "10", "11", "12"]
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "\(favs[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

