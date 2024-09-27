# download kml
curl "https://www.google.com/maps/d/kml?mid=1apjIf_aUSOhV-ONHZAHASx-TJxvuRyM&forcekml=1" --output ./files/data.kml

# convert to geojson
ogr2ogr ./files/data.geojson ./files/data.kml

# convert to csv
# ogr2ogr -dim XY -f CSV -lco GEOMETRY=AS_WKT -lco GEOMETRY_NAME=boundary -nlt MULTIPOLYGON -sql "SELECT Name AS name,description AS description FROM \"Closures\" WHERE OGR_GEOMETRY='MultiLine' or OGR_GEOMETRY='Line'" -skipfailures ./files/data.csv ./files/data.kml
