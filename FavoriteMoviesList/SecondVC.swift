//
//  SecondVC.swift
//  FavoriteMoviesList
//
//  Created by ELLA MADALINSKI on 10/19/21.
//

import UIKit

class SecondVC: UIViewController {
    
    var incoming : Movie!
    
    @IBOutlet weak var nameLabelOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var yearLabelOutlet: UILabel!
    @IBOutlet weak var ratingLabelOutlet: UILabel!
    @IBOutlet weak var descriptionLabelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabelOutlet.text = incoming.name
        yearLabelOutlet.text = "Year Released: \(String(incoming.yearReleased))"
        ratingLabelOutlet.text = "Rating: \(String(incoming.rating))"
        descriptionLabelOutlet.text = "Description: \(String(incoming.description))"
        imageOutlet.image = UIImage(named: "\(incoming.image)")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
