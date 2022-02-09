//
//  ViewController.swift
//  WeatherApp
//
//  Created by Muhammad Oneeb on 08/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TodayTemp: UILabel!
    @IBOutlet weak var todayFeelLike: UILabel!
    @IBOutlet weak var todayHumidity: UILabel!
    
    @IBOutlet weak var forecastTableView: UITableView!
    
    
    lazy var viewModel = {
            MainViewModel()
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.fetchDataFromDataProvider()
        bindToViewModel()
    }

    func bindToViewModel() {
        self.viewModel.updateView = { [weak self] in
            self?.updateViewElements()
        }
        
        self.viewModel.showErrorAlert = { [weak self] in
            let alertController = UIAlertController(title: "Error", message: "Please try again later", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .destructive) { _ in
                self?.viewModel.fetchDataFromDataProvider()
            }
            
            alertController.addAction(alertAction)
            self?.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    func updateViewElements() {
        if let modelData = viewModel.modelToPopulate {
            TodayTemp.text = "Temp: \(modelData.current?.temp ?? 0)c"
            todayFeelLike.text = "Feels like: \(modelData.current?.feels_like ?? 0)c"
            todayHumidity.text = "Humididty: \(modelData.current?.humidity ?? 0)%"
            self.forecastTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailView" {
            let nextController = segue.destination as! DetailViewController
            nextController.detailViewModel = DetailViewModel(dailyItem: sender as! Daily)
        }
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.modelToPopulate?.daily?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        if let dataArray = self.viewModel.modelToPopulate?.daily {
            let dailyDataToDisplay = dataArray[indexPath.row]
            cell.dayMinTemp.text = "Min: \(dailyDataToDisplay.temp?.min ?? 0)c"
            cell.dayMaxTemp.text = "Max: \(dailyDataToDisplay.temp?.max ?? 0)c"
            cell.dayHumidity.text = "Humidity\(dailyDataToDisplay.humidity ?? 0)%"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let dataArray = self.viewModel.modelToPopulate?.daily {
            let dailyDataToDisplay = dataArray[indexPath.row]
            self.performSegue(withIdentifier: "showDetailView", sender: dailyDataToDisplay)
        }
    }
    
}


