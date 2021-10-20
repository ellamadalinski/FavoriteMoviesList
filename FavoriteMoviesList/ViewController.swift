//
//  ViewController.swift
//  FavoriteMoviesList
//
//  Created by ELLA MADALINSKI on 10/19/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    var movie1 = Movie(n : "Interstellar", y : 0, r : 0.0, i : "", d : "")
    var movie2 = Movie(n : "Titanic", y : 0, r : 0.0, i : "", d : "")
    var movie3 = Movie(n : "Gifted", y : 0, r : 0.0, i : "", d : "")
    var movie4 = Movie(n : "Harry Potter", y : 0, r : 0.0, i : "", d : "")
    var movie5 = Movie(n : "Teen Beach Movie", y : 0, r : 0.0, i : "", d : "")
    var movie6 = Movie(n : "High School Musical", y : 0, r : 0.0, i : "", d : "")
    var movie7 = Movie(n : "How the Grinch Stole Christmas", y : 0, r : 0.0, i : "", d : "")
    var movie8 = Movie(n : "Heaven is for Real", y : 0, r : 0.0, i : "", d : "")
    var movie9 = Movie(n : "Midnight Sun", y : 0, r : 0.0, i : "", d : "")
    var movie10 = Movie(n : "Elf", y : 0, r : 0.0, i : "", d : "")
    var movie11 = Movie(n : "11", y : 0, r : 0.0, i : "", d : "")
    var movie12 = Movie(n : "12", y : 0, r : 0.0, i : "", d : "")
    
    var favs : [Movie] = []
    
    var selectedMovie = Movie(n : "", y : 0, r : 0.0, i : "", d : "")
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        favs.append(movie1)
        favs.append(movie2)
        favs.append(movie3)
        favs.append(movie4)
        favs.append(movie5)
        favs.append(movie6)
        favs.append(movie7)
        favs.append(movie8)
        favs.append(movie9)
        favs.append(movie10)
        favs.append(movie11)
        favs.append(movie12)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "\(favs[indexPath.row].name)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = favs[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondVC
        nvc.incoming = selectedMovie
    }
}

