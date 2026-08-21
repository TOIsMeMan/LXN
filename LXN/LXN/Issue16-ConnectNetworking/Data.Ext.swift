import Foundation

typealias JSON = [String: Any]

extension Data {

    func toJSON() -> JSON? {

        do {
            if let json = try JSONSerialization.jsonObject(
                with: self,
                options: .mutableContainers
            ) as? JSON {

                return json
            }

        } catch {
            print("JSON casting error: \(error)")
        }

        return nil
    }
}
