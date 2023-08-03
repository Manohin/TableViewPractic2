//
//  Person.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        let store = DataStore.shared
        let names = store.names.shuffled()
        let surnames = store.surnames.shuffled()
        let phones = store.phoneNumbers.shuffled()
        let emails = store.emails.shuffled()
        
        var persons = [Person]()
        
        let literalCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<literalCount {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phoneNumber: phones[index],
                    email: emails[index]
                )
            )
        }
        return persons
    }
}
