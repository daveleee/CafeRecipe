//
//  Protocol.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

protocol Beverage {
    var image: String { get }           //음료 이미지
    var name: String { get }            //음료 이름
    var categoryName: String { get }    //카테고리 이름
    var isLike: Bool { get }            //즐겨찾기 여부
    var isHot: Bool { get }             //아이스 여부
    var canMix: Bool { get }            //믹스 가능 여부 (당도 조절)
    var preparation: String { get }     //준비물
    var recipe: String { get }          //레시피 조리법
    var level: Int { get }              //난이도
    var youtubeURL: String { get }      //유투브 url
    var recipeImage: String { get }     //레시피 이미지
    var color: Color { get }            //색깔
    var liquid: Double { get }          //용액 량
    var calorie: Int { get }
}

protocol Coffeeable {
    var shot: Int { get }               //샷 횟수
}

protocol Mixable {
    var sugar: Double { get }           //성탕 량
    var sugarContents: Double { get }   //당도
}

protocol Hotable {
    
}

protocol Fruitable {
    var fruitName: String { get }       //과일 이름
    var amountOfFruit: Int { get }      //과일 양
}

protocol Iceable {
    var amountOfIce: Double { get }     //얼음양
}

protocol Teable {
    var teaBagName: String { get }
}