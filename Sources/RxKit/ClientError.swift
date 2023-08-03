import Foundation

public enum ClientError: LocalizedError {
    case invalidBaseURL
    case invalidURLResponse
    case invalidModel(error: Error)
}

