//
//  Friend.swift
//  HomeWork1
//
//  Created by Саша Сенюта on 20.05.2022.
//

import Foundation
import UIKit

class Friend {
    
    let image: UIImage?
    let name: String
    
    init(imageFriend: UIImage? = nil, nameFriend: String){
        self.image = imageFriend
        self.name = nameFriend
    }
}
