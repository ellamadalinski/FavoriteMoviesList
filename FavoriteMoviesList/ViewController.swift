//
//  ViewController.swift
//  FavoriteMoviesList
//
//  Created by ELLA MADALINSKI on 10/19/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    var movie1 = Movie(n : "Interstellar", y : 2014, r : 8.6, i : "interstellar", d : "Set in a future where a failing Earth puts humanity on the brink of extinction, it sees an intrepid team of NASA scientists, engineers and pilots attempt to find a new habitable planet, via interstellar travel.")
    var movie2 = Movie(n : "Titanic", y : 1997, r : 7.8, i : "titanic", d : "Titanic is a 1997 American epic romantic disaster movie. The movie is about the 1912 sinking of the RMS Titanic, starring two characters who are of different social classes. They fall in love after meeting aboard the ship, but it was not good for a rich girl to fall in love with a poor boy in 1912.")
    var movie3 = Movie(n : "Gifted", y : 2017, r : 7.6, i : "gifted", d : "The plot follows an intellectually gifted seven-year-old who becomes the subject of a custody battle between her maternal uncle and maternal grandmother.")
    var movie4 = Movie(n : "Harry Potter", y : 2001, r : 7.6, i : "harryPotter", d : "Harry Potter is an orphaned boy brought up by his unkind Muggle (non-magical) aunt and uncle. At the age of eleven, half-giant Rubeus Hagrid informs him that he is actually a wizard and that his parents were murdered by an evil wizard named Lord Voldemort.")
    var movie5 = Movie(n : "Teen Beach Movie", y : 2013, r : 6.0, i : "teenBeachMovie", d : "Life's a beach for surfers Brady and McKenzie -- until a rogue wave magically transports them inside the classic '60s beach party flick, Wet Side Story, where a full-blown rivalry between bikers and surfers threatens to erupt.")
    var movie6 = Movie(n : "High School Musical", y : 2006, r : 5.5, i : "highSchoolMusical", d : "A popular high-school athlete and an academically-gifted girl get roles in the school musical and develop a friendship that threatens East High's social order. Troy Bolton and Gabriella Montez are two totally different teenagers who meet at a party while singing karaoke on New Year's Eve.")
    var movie7 = Movie(n : "How the Grinch Stole Christmas", y : 2000, r : 6.2, i : "howTheGrinchStoleChristmas", d : "Based on the Christmas classic by Dr. Seuss, HOW THE GRINCH STOLE CHRISTMAS is the story of a Christmas-hating Grinch who tries to steal Christmas from the Christmas-loving Whos by taking all of their presents and decorations.")
    var movie8 = Movie(n : "Heaven is for Real", y : 2014, r : 5.8, i : "heavenIsForReal", d : "Based on a bestselling book by Todd Burpo and Lynn Vincent, 'Heaven is for Real' tells the story of how Burpo's 4-year old son, Colton (Connor Corum) visited Heaven and lived to tell of its pleasures.")
    var movie9 = Movie(n : "Midnight Sun", y : 2018, r : 6.6, i : "midnightSun", d : "Based on the Japanese film, Midnight Sun centers on Katie, a 17-year-old sheltered since childhood and confined to her house during the day by a rare disease that makes even the smallest amount of sunlight deadly. Fate intervenes when she meets Charlie and they embark on a summer romance.")
    var movie10 = Movie(n : "Elf", y : 2003, r : 7.0, i : "elf", d : "The film centers on Buddy, a human who was adopted and raised by Santa's elves. He learns about this and heads to New York City to meet his biological father while also spreading Christmas cheer in a world of cynics in the process.")
    var movie11 = Movie(n : "Instant Family", y : 2018, r : 7.3, i : "instantFamily", d : "Pete and Ellie must learn the ropes of instant parenthood when they bring in three foster children.")
    var movie12 = Movie(n : "San Andreas", y : 2015, r : 6.1, i : "sanAndreas", d : "In the aftermath of a massive earthquake in California, a rescue-chopper pilot makes a dangerous journey with his ex-wife across the state in order to rescue his daughter.")
    
    var favs : [Movie] = []
    
    var selectedMovie = Movie(n : "", y : 0, r : 0.0, i : "", d : "")
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    @IBOutlet weak var movieNameTextFieldOutlet: UITextField!
    @IBOutlet weak var yearReleasedTextFieldOutlet: UITextField!
    @IBOutlet weak var ratingtextFieldOutlet: UITextField!
    
    
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            favs.remove(at: indexPath.row)
            tableViewOutlet.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondVC
        nvc.incoming = selectedMovie
    }
    
    @IBAction func addMovieButtonAction(_ sender: UIBarButtonItem) {
        if let name = movieNameTextFieldOutlet.text{
            if let y = yearReleasedTextFieldOutlet.text{
                if let year = Int(y){
                    if let r = ratingtextFieldOutlet.text{
                        if let rating = Double(r){
                            var new = Movie(n: name, y: year, r: rating, i: "", d: "")
                            favs.append(new)
                            tableViewOutlet.reloadData()
                        }
                    }
                }
            }
        }
    }
    
    
}

