//
//  Tea.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

class Tea: Beverage, Hotable, Teable {
    dynamic let image: String = ""
    dynamic let name: String = ""
    dynamic let categoryName: String = ""
    dynamic var isLike: Bool = false
    dynamic let canMix: Bool = false
    dynamic var preparation: String {
        return ""
    }
    dynamic let recipe: String = ""
    dynamic let level: Int = 0
    dynamic let youtubeURL: String = ""
    dynamic let recipeImage: String = ""
    let color: Color = Color.Blue
    dynamic let liquid: Double = 0.0
    dynamic let calorie: Int = 0
    
    dynamic let teaBagName: String = ""
}