
# CJ (CommmandLine JSON)

Parse values out of JSON from the commandline. Useful for automation.

## Usage
```
cj key < some.json
```

# Installation

Since Swift is still moving so quick it can be difficult to distribute your scripts.
To keep the tool pointing to the correct version of the stdlib I recommend statically linking it.
This can be done by building as follows.

```
swift build -c release -Xswiftc -static-stdlib
```

The built executable is then available @ `.build/release/cj` this can be moved to your path for convenient use.

