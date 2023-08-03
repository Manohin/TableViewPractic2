//
//  DataStore.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Alexey",
        "Alexandr",
        "Sergey",
        "Andrey",
        "Nikolay",
        "Leonid",
        "Ivan",
        "Dmitriy",
        "Vladimir"
    ]
    
    let surnames = [
        "Ivanov",
        "Petrov",
        "Sidorov",
        "Manohin",
        "Kazantsev",
        "Moskovin",
        "Belgorodov",
        "Vasiliev",
        "Solonin"
    ]
    
    let emails = [
        "glfsh@fds.ru",
        "hgdfg@gfsd.ru",
        "gdfgwereq@sdf.com",
        "fsgfgferr3r@fds.ru",
        "rfdsfsbvbbb@fdlfkds.ru",
        "fdsfdv@agfsd.com",
        "fsgfg@fdf.ru",
        "gdfgfd@fdsgfds.ru",
        "dsfdgf@df.ri"
    ]
    let phoneNumbers = [
        "+743589343", 
        "+84736584365", 
        "+7439543075", 
        "+4983659843", 
        "+543543543", 
        "+5435435", 
        "+5436534", 
        "+584543", 
        "+58943659843"
    ]
    
    
    private init() {}
}
