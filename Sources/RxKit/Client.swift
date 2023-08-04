import Foundation

public struct Client {
    let baseURL: String
    let session: URLSession
    
    public init(baseURL: String = "https://rxnav.nlm.nih.gov", session: URLSession = .shared) {
        self.baseURL = baseURL
        self.session = session
    }
    
    public func run<Model>(_ request: Request<Model>) async throws -> Model {
        guard let requestComponents = URLComponents(baseURL: baseURL, request: request),
              let url = requestComponents.url else {
            throw ClientError.invalidBaseURL
        }
        
        let urlRequest = URLRequest(url: url, request: request)
        let task: (Data, URLResponse) = try await session.data(for: urlRequest)

        guard let response = task.1 as? HTTPURLResponse else {
            debugPrint("URL does task is not a valid type")
            throw ClientError.invalidURLResponse
        }
        guard response.statusCode == 200 else {
            debugPrint("Invalid URL Response code: \(response.statusCode)")
            throw ClientError.invalidURLResponse
        }
        let taskData: Data = task.0
        
        do {
            return try Model.decode(data: taskData)
        } catch {
            throw ClientError.invalidModel(error: error)
        }
    }
}
