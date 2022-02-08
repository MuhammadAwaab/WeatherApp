/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Feels_like {
	public var day : Double?
	public var night : Double?
	public var eve : Double?
	public var morn : Double?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let feels_like_list = Feels_like.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Feels_like Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Feels_like]
    {
        var models:[Feels_like] = []
        for item in array
        {
            models.append(Feels_like(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let feels_like = Feels_like(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Feels_like Instance.
*/
	required public init?(dictionary: NSDictionary) {

		day = dictionary["day"] as? Double
		night = dictionary["night"] as? Double
		eve = dictionary["eve"] as? Double
		morn = dictionary["morn"] as? Double
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.day, forKey: "day")
		dictionary.setValue(self.night, forKey: "night")
		dictionary.setValue(self.eve, forKey: "eve")
		dictionary.setValue(self.morn, forKey: "morn")

		return dictionary
	}

}