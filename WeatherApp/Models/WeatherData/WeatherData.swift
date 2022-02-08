/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class WeatherData {
	public var lat : Double?
	public var lon : Double?
	public var timezone : String?
	public var timezone_offset : Int?
	public var current : Current?
	public var daily : Array<Daily>?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let WeatherData_list = WeatherData.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of WeatherData Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [WeatherData]
    {
        var models:[WeatherData] = []
        for item in array
        {
            models.append(WeatherData(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let WeatherData = WeatherData(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: WeatherData Instance.
*/
	required public init?(dictionary: NSDictionary) {

		lat = dictionary["lat"] as? Double
		lon = dictionary["lon"] as? Double
		timezone = dictionary["timezone"] as? String
		timezone_offset = dictionary["timezone_offset"] as? Int
		if (dictionary["current"] != nil) { current = Current(dictionary: dictionary["current"] as! NSDictionary) }
        if (dictionary["daily"] != nil) { daily = Daily.modelsFromDictionaryArray(array: dictionary["daily"] as! NSArray) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.lat, forKey: "lat")
		dictionary.setValue(self.lon, forKey: "lon")
		dictionary.setValue(self.timezone, forKey: "timezone")
		dictionary.setValue(self.timezone_offset, forKey: "timezone_offset")
		dictionary.setValue(self.current?.dictionaryRepresentation(), forKey: "current")

		return dictionary
	}

}
