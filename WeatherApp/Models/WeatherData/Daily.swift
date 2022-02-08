/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Daily {
	public var dt : Int?
	public var sunrise : Int?
	public var sunset : Int?
	public var moonrise : Int?
	public var moonset : Int?
	public var moon_phase : Double?
	public var temp : Temp?
	public var feels_like : Feels_like?
	public var pressure : Int?
	public var humidity : Int?
	public var dew_point : Double?
	public var wind_speed : Double?
	public var wind_deg : Int?
	public var wind_gust : Double?
	public var weather : Array<Weather>?
	public var clouds : Int?
	public var pop : Int?
	public var uvi : Double?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let daily_list = Daily.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Daily Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Daily]
    {
        var models:[Daily] = []
        for item in array
        {
            models.append(Daily(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let daily = Daily(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Daily Instance.
*/
	required public init?(dictionary: NSDictionary) {

		dt = dictionary["dt"] as? Int
		sunrise = dictionary["sunrise"] as? Int
		sunset = dictionary["sunset"] as? Int
		moonrise = dictionary["moonrise"] as? Int
		moonset = dictionary["moonset"] as? Int
		moon_phase = dictionary["moon_phase"] as? Double
		if (dictionary["temp"] != nil) { temp = Temp(dictionary: dictionary["temp"] as! NSDictionary) }
		if (dictionary["feels_like"] != nil) { feels_like = Feels_like(dictionary: dictionary["feels_like"] as! NSDictionary) }
		pressure = dictionary["pressure"] as? Int
		humidity = dictionary["humidity"] as? Int
		dew_point = dictionary["dew_point"] as? Double
		wind_speed = dictionary["wind_speed"] as? Double
		wind_deg = dictionary["wind_deg"] as? Int
		wind_gust = dictionary["wind_gust"] as? Double
        if (dictionary["weather"] != nil) { weather = Weather.modelsFromDictionaryArray(array: dictionary["weather"] as! NSArray) }
		clouds = dictionary["clouds"] as? Int
		pop = dictionary["pop"] as? Int
		uvi = dictionary["uvi"] as? Double
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
		dictionary.setValue(self.moonrise, forKey: "moonrise")
		dictionary.setValue(self.moonset, forKey: "moonset")
		dictionary.setValue(self.moon_phase, forKey: "moon_phase")
		dictionary.setValue(self.temp?.dictionaryRepresentation(), forKey: "temp")
		dictionary.setValue(self.feels_like?.dictionaryRepresentation(), forKey: "feels_like")
		dictionary.setValue(self.pressure, forKey: "pressure")
		dictionary.setValue(self.humidity, forKey: "humidity")
		dictionary.setValue(self.dew_point, forKey: "dew_point")
		dictionary.setValue(self.wind_speed, forKey: "wind_speed")
		dictionary.setValue(self.wind_deg, forKey: "wind_deg")
		dictionary.setValue(self.wind_gust, forKey: "wind_gust")
		dictionary.setValue(self.clouds, forKey: "clouds")
		dictionary.setValue(self.pop, forKey: "pop")
		dictionary.setValue(self.uvi, forKey: "uvi")

		return dictionary
	}

}
