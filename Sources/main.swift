
import JSON

import func Darwin.C.exit

var input: [String] = []

while let line = readLine() {
  input.append(line)
}

if input.isEmpty || CommandLine.arguments.count == 1 {
  print("usage: cj [<keys>]\n Reads JSON from stdin")
  exit(1)
}

var json: JSON? = try? JSON.Parser.parse(input.joined(), options: .allowFragments)

for argument in CommandLine.arguments.dropFirst() {

  if let index = Int(argument) {

    json = json?[index]
  } else {

    json = json?[argument]
  }

  if json == nil {
    print("error: Key \(argument) not found")
    exit(1)
  }

}

let string = try json!.serialized()

if string.hasPrefix("\"") && string.hasSuffix("\"") {

  let trimmedString = string.characters.dropFirst().dropLast().map({ String($0) }).joined()

  print(trimmedString)
} else {

  print(string)
}

