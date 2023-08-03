public struct Request<Model: Codable> {
    let path: String
    let method: HTTPSMethod
    
    init(path: String, method: HTTPSMethod) {
        self.path = path
        self.method = method
    }
}
