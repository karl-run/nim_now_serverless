# Package

version       = "1.0.0"
author        = "Karl J. Over\xC3\xA5"
description   = "Example serverless function on zeit's now"
license       = "MIT"
srcDir        = "src"
bin           = @["main"] 
skipExt       = @["nim"]


# Dependencies

requires "nim >= 0.19.0"
