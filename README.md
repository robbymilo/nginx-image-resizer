# nginx image resizer

`make build` to build the image

`make run` to run the container

Then navigte to:

`http://localhost:3008/images/test.jpg?w=1500&s=75&q=50`

`.jpg` - working
`.gif` - working (no amination on resize)
`.svg` - not working
`.png` - working
`.mp4` - not working