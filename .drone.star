def main(ctx):
  s = [
      {
        "name": "build & run",
        "image": "golang:1.16",
        "commands": [
          "go build .",
          "strip -s -R .comment hello-world",
          "./hello-world"
        ],
        "environment": {
          "GOOS": "linux",
          "GOARCH": "amd64",
          "GO111MODULE": "on"
        }
      }
    ]
  return [{
    "kind": "pipeline",
    "type": "docker",
    "name": "default",
    "steps": s
  }]
