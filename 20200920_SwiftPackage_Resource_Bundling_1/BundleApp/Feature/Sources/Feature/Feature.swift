import Foundation

struct Feature {
    var text = "Hello, World!"
    init() {
        Bundle.module.path(forResource: "image", ofType: "png")
    }
}
