//
//  ModelData.swift
//  Landmarks
//
//  Created by Ольга Цуприк on 28.03.23.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("not Have file")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("could not download \(fileName) file")
    }

    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("can not decode")
    }

}
