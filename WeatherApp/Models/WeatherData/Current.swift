/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Current {
	public var dt : Int?
	public var sunrise : Int?
	public var sunset : Int?
	public var temp : Double?
	public var feels_like : Double?
	public var pressure : Int?
	public var humidity : Int?
	public var dew_point : Double?
	public var uvi : Int?
	public var clouds : Int?
	public var visibility : Int?
	public var wind_speed : Int?
	public var wind_deg : Int?
	public var weather : Array<Weather>?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let current_list = Current.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Current Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Current]
    {
        var models:[Current] = []
        for item in array
        {
            models.append(Current(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let current = Current(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Current Instance.
*/
	required public init?(dictionary: NSDictionary) {

		dt = dictionary["dt"] as? Int
		sunrise = dictionary["sunrise"] as? Int
		sunset = dictionary["sunset"] as? Int
		temp = dictionary["temp"] as? Double
		feels_like = dictionary["feels_like"] as? Double
		pressure = dictionary["pressure"] as? Int
		humidity = dictionary["humidity"] as? Int
		dew_point = dictionary["dew_point"] as? Double
		uvi = dictionary["uvi"] as? Int
		clouds = dictionary["clouds"] as? Int
		visibility = dictionary["visibility"] as? Int
		wind_speed = dictionary["wind_speed"] as? Int
		wind_deg = dictionary["wind_deg"] as? Int
        if (dictionary["weather"] != nil) { weather = Weather.modelsFromDictionaryArray(array: dictionary["weather"] as! NSArray) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.dt, forKey: "dt")
		dictionary.setValue(self.sunrise, forKey: "sunrise")
		dictionary.setValue(self.sunset, forKey: "sunset")
		dictionary.setValue(self.temp, forKey: "temp")
		dictionary.setValue(self.feels_like, forKey: "feels_like")
		dictionary.setValue(self.pressure, forKey: "pressure")
		dictionary.setValue(self.humidity, forKey: "humidity")
		dictionary.setValue(self.dew_point, forKey: "dew_point")
		dictionary.setValue(self.uvi, forKey: "uvi")
		dictionary.setValue(self.clouds, forKey: "clouds")
		dictionary.setValue(self.visibility, forKey: "visibility")
		dictionary.setValue(self.wind_speed, forKey: "wind_speed")
		dictionary.setValue(self.wind_deg, forKey: "wind_deg")

		return dictionary
	}

}
