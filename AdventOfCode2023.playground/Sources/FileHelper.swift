import Foundation

public struct FileHelper {
    public static func readFile(_ fileName: String) -> String {
        do {
            let fileURL = Bundle.main.url(forResource: fileName, withExtension: "txt")
            
            let fileHandle = try FileHandle(forReadingFrom: fileURL!)
            let data = fileHandle.readDataToEndOfFile()
            guard let content = String(data: data, encoding: .utf8) else {
                return ""
            }
            return content
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
