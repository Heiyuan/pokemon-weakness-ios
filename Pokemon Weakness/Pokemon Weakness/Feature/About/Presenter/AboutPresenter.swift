//
//  AboutPresenter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

class AboutPresenter {
    
    weak var view: AboutView?
    
    private let aboutCollectionDataSource: CollectionDataSource<AboutItemViewModel>
    
    init(aboutCollectionDataSource: CollectionDataSource<AboutItemViewModel>) {
        self.aboutCollectionDataSource = aboutCollectionDataSource
    }
    
    func viewDidLoad() {
        
        let team = [
            AboutItemViewModel(pokeball: "pokeball_green", color: .greenishTeal(), name: "Alex Bailon", job: "Product Designer"),
            AboutItemViewModel(pokeball: "pokeball_red", color: .tomato(), name: "Oscar Duran", job: "iOS Developer"),
            AboutItemViewModel(pokeball: "pokeball_blue", color: .darkSkyBlue(), name: "Rafa Vázquez", job: "Android Developer")
        ]
        
        aboutCollectionDataSource.items = team
        
        view?.setDataSource(
            aboutCollectionDataSource
        )
        
        view?.reload(true)
    }
}