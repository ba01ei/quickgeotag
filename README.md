quickgeotag
===========

This tool is based on exiftool and makes geotagging slightly easier.

Instead of calling 'exiftool -GPSLatitude=123 -GPSLatitudeRef=N -GPSLongitude=456 -GPSLongitudeRef=W img1 img2 img3', you can just call

quickgeotag "Latitude: 123 Longitude: -456" img1 img2 img3

Dependency
==========

Need exiftool. Can be install by:

brew install exiftool


My workflow
===========

1. Find the place with iPhone app: Coordinates - Calculate and Convert a Position
2. Send the coordinates to Mac via DeskConnect, or email, or iMessage
3. in Terminal, type quickgeotag "{pasted coordinates}" (with a space at the end)
4. select the image files and drag them to Terminal, hit enter
