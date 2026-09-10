//
//  MapViewController.swift
//  LXN
//
//  Created by Macbook on 7/9/26.
//

import UIKit
import MapKit
class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            // This is coordinate of Eiffel Tower of Pari city.
            let eiffelTowerLocation = CLLocation(latitude: 48.858042, longitude:  2.294793)
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: eiffelTowerLocation.coordinate, span: span)
            
            mapView.region = region
        }
  
    func center(location: CLLocation) {
            //center
            mapView.setCenter(location.coordinate, animated: true)
            mapView.showsUserLocation = true
            //zoom
            let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
