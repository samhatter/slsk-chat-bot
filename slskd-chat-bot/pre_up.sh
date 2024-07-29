#!/bin/bash
regions=(
  'mongolia' 'mk' 'us-baltimore' 'us_massachusetts-pf' 'greenland' 'philippines' 'us_minnesota-pf' 'us_tennessee-pf' 'ua' 'ca_toronto' 'us_washington_dc' 'sg' 'aus_perth' 'swiss' 'us_seattle' 'us_california' 'us_rhode_island-pf' 'us_oregon-pf' 'us_iowa-pf' 'pe_peru-pf' 'belgium' 'us_north_dakota-pf' 'us_wyoming-pf' 'macau' 'uy_uruguay-pf' 'au_adelaide-pf' 'italy' 'uk_manchester' 'cyprus' 'vietnam' 'us_new_hampshire-pf' 'denmark_2' 'us_ohio-pf' 'ec_ecuador-pf' 'us3' 'egypt' 'nl_netherlands-so' 'in' 'sanjose' 'lv' 'slovenia' 'sk' 'us_kansas-pf' 'ca_vancouver' 'sweden' 'us_las_vegas' 'panama' 'us_houston' 'sofia' 'austria' 'china' 'us-streaming-2' 'us_south_west' 'kualalumpur' 'us_vermont-pf' 'za' 'japan_2' 'us_montana-pf' 'us_florida' 'us_nebraska-pf' 'gr' 'us-honolulu' 'us_denver' 'czech' 'uk_2' 'ireland' 'lt' 'md' 'bangladesh' 'ar' 'us_wisconsin-pf' 'us-wilmington' 'santiago' 'fi' 'morocco' 'poland' 'np_nepal-pf' 'us_south_carolina-pf' 'italy_2' 'us-saltlakecity' 'spain' 'saudiarabia' 'hk' 'us_pennsylvania-pf' 'kazakhstan' 'cambodia' 'ee' 'nz' 'us_arkansas-pf' 'taiwan' 'bogota' 'us_idaho-pf' 'nl_amsterdam' 'liechtenstein' 'bo_bolivia-pf' 'srilanka' 'ca_ontario' 'us_silicon_valley' 'ca' 'denmark' 'us_new_york_city' 'montenegro' 'us_north_carolina-pf' 'mexico' 'us_connecticut-pf' 'us_maine-pf' 'uk' 'au_australia-so' 'us_new_mexico-pf' 'venezuela' 'israel' 'us_alabama-pf' 'japan' 'us_indiana-pf' 'tr' 'aus_melbourne' 'br' 'us_south_dakota-pf' 'bahamas' 'us_atlanta' 'hungary' 'us_virginia-pf' 'man' 'us_louisiana-pf' 'de_berlin' 'lu' 'us-newjersey' 'malta' 'zagreb' 'us_oklahoma-pf' 'us_michigan-pf' 'is' 'us-streaming' 'al' 'dz' 'rs' 'es-valencia' 'jakarta' 'de_germany-so' 'ae' 'kr_south_korea-pf' 'sweden_2' 'yerevan' 'aus' 'au_brisbane-pf' 'ba' 'ro' 'nigeria' 'us_west_virginia-pf' 'uk_southampton' 'ad' 'us_alaska-pf' 'monaco' 'pt' 'us_chicago' 'georgia' 'us_kentucky-pf' 'us_missouri-pf' 'us_mississippi-pf' 'ca_ontario-so' 'de-frankfurt' 'fi_2' 'gt_guatemala-pf' 'france' 'qatar' 'no'
)
index=$(( RANDOM % ${#regions[@]} ))
export LOC=${regions[$index]}

echo "Random Region is $LOC"

export SLSKD_SLSK_USERNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 12 | head -n 1)
export SLSKD_SLSK_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 12 | head -n 1)
export SLSKD_SLSK_LISTEN_PORT=$((1024 + RANDOM % 64511))
echo "ON PORT $SLSKD_SLSK_LISTEN_PORT"

mkdir /shares
num_iterations=$((100 + RANDOM % 1901))
counter=0
for (( i=1; i<=num_iterations; i++ ))
do
    counter=$((counter + 1))
    touch /shares/$counter
done
