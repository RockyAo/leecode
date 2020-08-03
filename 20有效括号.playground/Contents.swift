import UIKit

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    
    let mappings: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    
    for character in s {
        if mappings.values.contains(character) {
            stack.append(character)
        } else {
            if stack.isEmpty || stack.popLast() != mappings[character] {
                return false
            }
            
        }
    }
    
    return stack.isEmpty
}


print(isValid("()"))
