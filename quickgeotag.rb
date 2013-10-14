#!/usr/bin/env ruby

coord = ARGV[0].split(" ")
if coord.length != 4
  exit 1
end
lon = 0.0
lat = 0.0
if coord[0].index("Longitude")
  lon = coord[1].to_f
  lat = coord[3].to_f
else
  lon = coord[3].to_f
  lat = coord[1].to_f
end

lon_ref = lon < 0 ? 'W' : 'E'
lat_ref = lat < 0 ? 'S' : 'N'

params = ["-GPSLongitudeRef=#{lon_ref}", "-GPSLongitude=#{lon.abs.to_s}", "-GPSLatitudeRef=#{lat_ref}", "-GPSLatitude=#{lat.abs.to_s}"]
params += ARGV[1..-1].map{|s| '"' + s + '"'}
cmd = "exiftool #{params.join(' ')}"
puts cmd
system(cmd)

`rm #{File.join(File.dirname(ARGV[1]).gsub(' ', '\ '), '*.*_original')}`

