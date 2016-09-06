
# CJ (CommmandLine JSON)

Parse values out of JSON from the commandline. Useful for automation.

## Usage
`some.json`
```
{"key":"value","key2":[true, 1, "hello"]}
```
```
$ cj key < some.json
value
$ cj key2 0
true
```

# Installation

Since Swift is still moving so quick it can be difficult to distribute your scripts.
To keep the tool pointing to the correct version of the stdlib I recommend statically linking it.
This can be done by building as follows.

```
swift build -c release -Xswiftc -static-stdlib
```

The built executable is then available @ `.build/release/cj` this can be moved to your PATH for convenient use.

