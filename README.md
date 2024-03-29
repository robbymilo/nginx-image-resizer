[![Build Status](https://ci.rmilo.dev/api/badges/robbymilo/nginx-image-resizer/status.svg)](https://ci.rmilo.dev/robbymilo/nginx-image-resizer)

# nginx image resizer

On-the-fly cached image resizing with nginx.

To run locally, run `docker run -p 3000:80 -v ./html:/var/www/html robbymilo/nginx-image-resizer` in your terminal to run the docker image.

Change the volume to a directory of images on your machine or server.

Then navigte to:

`http://localhost:3000/images/test.jpg?w=1500&s=75&q=50`

* `.jpg` - working
* `.gif` - working (no amination on resize)
* `.svg` - not working
* `.png` - working
* `.mp4` - not working

Supports `.jpg`, `.gif` (without animation), and `.png`.

### Options via query params

* `w=` width
* `h=` height
* `s=` sharpening
* `q=` quality
