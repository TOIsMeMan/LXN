import Foundation

typealias Completion = (Bool, String) -> Void

class Issue16ViewModel {

    var names: [String] = []

    func loadAPI(completion: @escaping Completion) {

        let URLString = "https://api.thingspeak.com/channels/9/feeds.json?results=10"

        let URL = URL(string: URLString)
        let request = URLRequest(url: URL!)

        // MARK: - Tạo Session
        let config = URLSessionConfiguration.ephemeral
        config.waitsForConnectivity = true

        let session = URLSession(configuration: config)

        // MARK: - Connect API
        let task = session.dataTask(with: request) { data, response, error in

            DispatchQueue.main.async {

                // MARK: - Check Error
                if let error = error {
                    completion(false, error.localizedDescription)
                    return
                }

                // MARK: - Check Response
                if let response = response as? HTTPURLResponse {
                    print("STATUS CODE:", response.statusCode)
                    print(
                        "CONTENT TYPE:",
                        response.value(forHTTPHeaderField: "Content-Type") ?? "nil"
                    )

                    if !(200...299).contains(response.statusCode) {
                        completion(false, "HTTP Error: \(response.statusCode)")
                        return
                    }
                }
                
                // MARK: - Check Data
                guard let data = data else {
                    completion(false, "Không có dữ liệu")
                    return
                }

                print("DATA:")
                print(
                    String(data: data, encoding: .utf8)
                    ?? "Không đọc được Data"
                )

                // MARK: - Data → JSON
                guard let json = data.toJSON() else {
                    completion(false, "Data không phải JSON")
                    return
                }

                // MARK: - JSON → feeds
                guard let feeds = json["feeds"] as? [JSON] else {
                    completion(false, "Không tìm thấy feeds")
                    return
                }

                // MARK: - Lưu dữ liệu
                self.names.removeAll()

                for item in feeds {

                    if let name = item["field1"] as? String {
                        self.names.append(name)
                    }
                }

                // MARK: - Thành công
                completion(true, "")
            }
        }

        task.resume()
    }
}
