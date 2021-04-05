//
//  ViewController.swift
//  ParseJSON
//
//  Created by Paco on 05/04/21.
//

import UIKit

struct WebSiteDescription: Decodable {
    let name: String
    let description: String
    let courses: [Course]
}

struct Course: Decodable {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String

//    init(json: [String: Any]) {
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageUrl"] as? String ?? ""
//    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//
//        let myCourse = Course(id: 1, name: "My Course", link: "some link", imageUrl: "some image url")
//        print(myCourse)
        
//        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/website_description"
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            //print("do stuff here")
            
            guard let data = data else { return }
//
//            let dataAsString = String(data: data, encoding: .utf8)
//            print(dataAsString)
            do {
                let websiteDescription = try JSONDecoder().decode(WebSiteDescription.self, from: data)
                print(websiteDescription.name, websiteDescription.description)
//                let courses = try JSONDecoder().decode([Course].self, from: data)
//                print(courses)
                // Swift 2/3/ObjC
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//                        as? [String: Any] else { return }
//                print(json)
//
//                let course = Course(json: json)
//                print(course.name)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            
            
        }.resume()
    }


}

