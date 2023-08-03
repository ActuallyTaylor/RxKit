import Foundation

enum HTTPSMethod {
    case get(_ payload: HTTPSPayload)
    case post(_ payload: HTTPSPayload)
    case put(_ payload: HTTPSPayload)
    case patch(_ payload: HTTPSPayload)
    case delete(_ payload: HTTPSPayload)
    
    var payload: HTTPSPayload {
        switch self {
        case .get(let payload):
            return payload
        case .post(let payload):
            return payload
        case .put(let payload):
            return payload
        case .patch(let payload):
            return payload
        case .delete(let payload):
            return payload
        }
    }
}

extension HTTPSMethod {
    var httpMethod: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .patch:
            return "PATCH"
        case .delete:
            return "DELETE"
        }
    }
}

public struct HTTPSPayload: Equatable {
    public struct QueryItem: Equatable {
        var name: String
        var value: String?
        
        init(name: String, value: String?) {
            self.name = name
            self.value = value
        }
        
        var queryItem: URLQueryItem? {
            guard let value else { return nil }
            return URLQueryItem(name: name, value: value)
        }
    }
    
    var queryItems: [QueryItem]?
    var urlQueryItems: [URLQueryItem]? {
        self.queryItems?.compactMap({$0.queryItem})
    }
    
    init(queryItems: [QueryItem]? = nil) {
        self.queryItems = queryItems
    }
}

extension HTTPSPayload {
    static let empty: HTTPSPayload = HTTPSPayload()
}
