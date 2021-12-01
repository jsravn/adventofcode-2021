import std/parseutils
import std/streams

var strm = newFileStream("input", fmRead)
var prior: int = 999999999
var increases: int = 0

if not isNil(strm):
  var line: string
  while strm.readLine(line):
    var depth: int
    doAssert parseInt(line, depth) > 0
    if depth > prior: increases += 1
    prior = depth
  strm.close()

echo increases
