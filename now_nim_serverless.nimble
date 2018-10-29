# Package

version       = "1.0.0"
author        = "Karl O."
description   = "Example serverless function on zeit's now"
license       = "MIT"
srcDir        = "src"
bin           = @["now_nim_serverless"]
skipExt       = @["nim"]


# Dependencies

requires "nim >= 0.19.0"
