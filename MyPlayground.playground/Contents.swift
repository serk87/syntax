import UIKit

var str = "Hello, playground"

func sum(a: Int, b: Int) {
    print(a+b)
}

sum(a: 1, b: 1)

func sumOptional(a: Int? = nil) {
    if let aNotOptional = a {
        print(aNotOptional)
    }
    // a != nil ? true : false
}

sumOptional(a: 345)

struct User {
    var name, address: String
    var age: Int
}
// var arayUsers : [User]

var arrayUsers = [User]()

arrayUsers.append(User(name: "Sergey", address: "Moscow", age: 20))

arrayUsers.append(User(name: "Vasya", address: "Tver", age: 16))

print(arrayUsers.count)

for user in arrayUsers {
    print(user.name)
}


class UserClass {
    var arrayUsers = [User]()
    init() {
        setUsers()
    }
    private func setUsers() {
        self.arrayUsers.append(User(name: "Sergey", address: "Moscow", age: 20))
        self.arrayUsers.append(User(name: "Vasya", address: "Tver", age: 16))
    }
    func getAddresses() {
        for user in self.arrayUsers {
            print(user.address)
        }
    }
}
let users = UserClass()
users.getAddresses()
