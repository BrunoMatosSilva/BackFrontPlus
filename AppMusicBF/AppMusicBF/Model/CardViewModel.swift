//
//  ViewController.swift
//  AppMusicBF
//
//  Created by Caio on 06/10/21.
//

import Foundation

struct CardViewModel {
    var categoryImage: String?
    var categoryName: String?
    var categoryDate: String?
    var cardTitle: String?
    var likeCount: String?
    var duration: String?
    var cardDescription:String?
    var cardImage: String?
    var cardList:[CardListModel]?
}

struct CardListModel {
    var listImage: String?
    var listTitle: String?
    var listSubtitle: String?
}


var CardData = [
    
    CardViewModel(
        categoryImage: "cat1",
        categoryName: "RELAX ALL THE TIME",
        categoryDate: "June 2018",
        cardTitle: "Cinematic Piano",
        likeCount: "9,543",
        duration: "5h 35m",
        cardDescription: "Beautiful, dreamy and dramatic instrumental neo classical piano scores from movies and tv series.",
        cardImage: "card1",
        cardList: [
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            ),
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            ),
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            )
        ]
    ),
    
    CardViewModel(
        categoryImage: "cat2",
        categoryName: "PERFECT OLDIES",
        categoryDate: "July 2018",
        cardTitle: "80s Smash Hits",
        likeCount: "9,543",
        duration: "5h 35m",
        cardDescription: "The music of 1980's remains a tribute to glorious excess and left us with some huge tunes. Celebrate them here.",
        cardImage: "card2",
        cardList: [
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            ),
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            ),
            CardListModel(
                listImage: "list1",
                listTitle: "Rosemary's Baby",
                listSubtitle: "Krzysztof Komeda"
            ),
            CardListModel(
                listImage: "list2",
                listTitle: "Janus",
                listSubtitle: ""
            ),
            CardListModel(
                listImage: "list3",
                listTitle: "By the Sea",
                listSubtitle: "Eleni Karaindrou"
            ),
            CardListModel(
                listImage: "list4",
                listTitle: "Rsalee Theme",
                listSubtitle: "Max Richter - Hostiles"
            )
        ]
    )
]
