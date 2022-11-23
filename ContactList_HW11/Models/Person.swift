//
//  ContactList.swift
//  ContactList_HW11
//
//  Created by Алишер Маликов on 23.11.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        var names = DataStore.shared.names
        var surnames = DataStore.shared.surnames
        var phones = DataStore.shared.phones
        var emails = DataStore.shared.emails
        
        var persons: [Person] = []
        for _ in 1...names.count {
            var nameValue = ""
            var surnameValue = ""
            var phoneValue = ""
            var emailValue = ""
            
            if let nameIndex = names.indices.randomElement() {
                nameValue = names.remove(at: nameIndex)
            }
            
            if let surnameIndex = surnames.indices.randomElement() {
                surnameValue = surnames.remove(at: surnameIndex)
            }
            
            if let phoneIndex = phones.indices.randomElement() {
                phoneValue = phones.remove(at: phoneIndex)
            }
            
            if let emailIndex = emails.indices.randomElement() {
                emailValue = emails.remove(at: emailIndex)
            }
            
            persons.append(Person(name: nameValue,
                                  surname: surnameValue,
                                  phone: phoneValue,
                                  email: emailValue))
            
        }
        return persons
    }
}


//[
//    Person(name: "\(String(describing: names.randomElement()))",
//           surname: "\(String(describing: surnames.randomElement()))",
//           phone: "\(String(describing: phones.randomElement()))",
//           email: "\(String(describing: emails.randomElement()))")
//]


//persons.append(Person(name: "\(String(describing: names.randomElement()))",
//                      surname: "\(String(describing: surnames.randomElement()))",
//                      phone: "\(String(describing: phones.randomElement()))",
//                      email: "\(String(describing: emails.randomElement()))"))

//persons.append(Person(name: "\(names.randomElement())",
//                      surname: "\(surnames.randomElement())",
//                      phone: "\(phones.randomElement())",
//                      email: "\(emails.randomElement())"))
