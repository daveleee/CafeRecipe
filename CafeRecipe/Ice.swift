//
//  Ice.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

class Ice: Beverage, Iceable {
    dynamic let image: String = ""
    dynamic let name: String = ""
    dynamic let categoryName: String = ""
    dynamic var isLike: Bool = false
    dynamic var isHot: Bool = false
    dynamic var canMix: Bool = false
    dynamic let liquid: Double = 400.0
    dynamic var preparation: String {
        return  "시원한 우유:\(liquid)ml, 토핑:\(topping), 얼음량:\(amountOfIce)g"
    }
    dynamic let recipe: String = ""
    dynamic let level: Int = 0
    dynamic let youtubeURL: String = ""
    dynamic let recipeImage: String = ""
    dynamic let calorie: Int = 0
    var color: Color =  Color.Red
    
    var topping: String = ""        //토핑
}