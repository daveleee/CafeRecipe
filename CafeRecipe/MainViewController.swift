//
//  MainViewController.swift
//  CafeRecipe
//
//  Created by 이대희 on 2016. 3. 31..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import UIKit

class Search {
    var searchImageName: String
    var searchName: String
    
    init(searchImageName: String, searchName: String) {
        self.searchImageName=searchImageName
        self.searchName=searchName
    }
}

class Cafe {
    var cafeImageName: String
    var cafeName: String
    
    init(cafeImageName: String, cafeName: String) {
        self.cafeImageName = cafeImageName
        self.cafeName = cafeName
    }
}


class MainViewController: UIViewController {
    
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var isSearching=false           //검색중인지 여부
    var data: [String]=["아메리카노", "카페라떼", "레몬에이드"]     //테이블뷰의 샘플 데이터
    var filtered: [String]=[]       //검색으로 필터된 데이터
    
    
    let cafes = [Cafe(cafeImageName: "main_0.png", cafeName: "전체보기"),
                 Cafe(cafeImageName: "main_1.png", cafeName: "커피"),
                 Cafe(cafeImageName: "main_2.png", cafeName: "라떼"),
                 Cafe(cafeImageName: "main_3.png", cafeName: "생과일"),
                 Cafe(cafeImageName: "main_4.png", cafeName: "스무디"),
                 Cafe(cafeImageName: "main_5.png", cafeName: "빙수"),
                 Cafe(cafeImageName: "main_6.png", cafeName: "티"),
                 Cafe(cafeImageName: "main_7.png", cafeName: "프라페"),
                 Cafe(cafeImageName: "main_8.png", cafeName: "에이드"),
                 Cafe(cafeImageName: "main_9.png", cafeName: "스페셜")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        searchTableView.dataSource = self
        //numberLabel.text = "\(i)"
        //해당 뷰컨트롤러가 실행될때 가장 먼저 실행되는 생성자 같은 함수
        
        searchTableView.hidden=true
        mainCollectionView.keyboardDismissMode = .OnDrag    //드래그 했을때 키보드 지우는 코드
        searchTableView.keyboardDismissMode = .OnDrag
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtered.isEmpty ? data.count : filtered.count
//        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=searchTableView.dequeueReusableCellWithIdentifier("searchCell", forIndexPath: indexPath) as! SearchTableViewCell
        
        filtered.isEmpty ? (cell.searchLabel.text = data[indexPath.row]) : (cell.searchLabel.text = filtered[indexPath.row])
        
        return cell
    }
    
}
extension MainViewController: UISearchBarDelegate {
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        isSearching=true
//        searchTableView.hidden=false
        return true
    }
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        isSearching=false
    }
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        searchText.isEmpty ? (searchTableView.hidden = true) : (searchTableView.hidden = false)
    
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cafes.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCellWithReuseIdentifier("mainCell", forIndexPath: indexPath)
            as! MainCollectionViewCell
        let cafe = cafes[indexPath.row]
        
        cell.cafeLabel.text = cafe.cafeName
        cell.cafeImageView.image = UIImage(named: cafe.cafeImageName)
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegate {
    
}
