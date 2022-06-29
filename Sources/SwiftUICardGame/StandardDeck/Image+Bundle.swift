import SwiftUI

extension Image {
    init(fromBundleName name: String) {
        #if os(macOS)
        let url = Bundle.module.url(forResource: name, withExtension: "png")!
        let nsImage = NSImage(byReferencing: url)
        self.init(nsImage: nsImage)
        #else
        let path = Bundle.module.path(forResource: name, ofType: "png")!
        let uiImage = UIImage(contentsOfFile: path)!
        self.init(uiImage: uiImage)
        #endif
    }
}
