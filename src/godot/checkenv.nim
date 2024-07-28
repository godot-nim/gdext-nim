when appType != "lib":
  {.error: """
This project must be compiled as a dynamic library.
Instead, run `nimble build --app:lib` or append `--app: lib` to the config.nims file.
""".}