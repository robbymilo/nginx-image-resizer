# nginx image resizer

On-the-fly cached image resizing with nginx.

To run locally, run `make run` in your terminal to run the docker image.

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
