on:
  push:
    branches:
      - master

name: "Trigger: Push action"
permissions: {}

jobs:
  shellcheck:
    name: Shellcheck
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run ShellCheck
        uses: ludeeus/action-shellcheck@master
