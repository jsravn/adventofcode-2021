import std/deques
import std/parseutils
import std/streams

var strm = newFileStream("input", fmRead)
var windowSum = 0
var window = initDeque[int]()
var increases = 0

if not isNil(strm):
  var line: string
  while strm.readLine(line):
    var depth: int
    doAssert parseInt(line, depth) > 0

    window.addFirst(depth)
    let priorSum = windowSum
    windowSum += depth

    if len(window) < 4:
      continue

    let last = window.popLast()
    windowSum -= last

    if windowSum > priorSum: increases += 1

  strm.close()

echo increases
