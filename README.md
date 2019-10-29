# nginx image resizer

On-the-fly image resizing from object storages such as S3.

`make build` to build the image

`make run` to run the container

Then navigte to:

`http://localhost:3008/images/test.jpg?w=1500&s=75&q=50`

* `.jpg` - working
* `.gif` - working (no amination on resize)
* `.svg` - not working
* `.png` - working
* `.mp4` - not working

### Options via query params

* `w=` width
* `h=` height
* `s=` sharpening
* `q=` quality

Use nginx-nocache.conf if you don't want to use caching on the server.