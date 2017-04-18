#!/bin/sh

# Download the first 50 runners listed (by citizenship) for every country in the 2017 Boston Marathon lists

mkdir -p data

for i in {1..212}
  do 
    wget -O data/country${i}.html "http://registration.baa.org/2017/cf/Public/iframe_EntryLists.cfm?mode=results&criteria=&StoredProcParamsOn=yes&&VarAgeLow=0&VarAgeHigh=0&VarGenderID=0&VarBibNumber=&VarLastName=&VarFirstName=&VarStateList=0&VarCountryOfResList=0&VarCountryOfCtzList="${i}"&VarCityList=&VarZipList=&records=50&headerexists=Yes&bordersize=0&bordercolor=%23ffffff&rowcolorone=%23FFCC33&rowcolortwo=%23FFFFFF&headercolor=%23ffffff&headerfontface=Verdana%2CArial%2CHelvetica%2Csans-serif&headerfontcolor=%23004080&headerfontsize=12px&fontface=Verdana%2CArial%2CHelvetica%2Csans-serif&fontcolor=%23000099&fontsize=10px&linkfield=FormattedSortName&linkurl=OpenDetailsWindow&linkparams=RaceAppID&queryname=SearchResults&tablefields=FullBibNumber%2CWaveAndCorral%2CFormattedSortName%2CAgeOnRaceDay%2CGenderCode%2CCity%2CStateAbbrev%2CCountryOfResAbbrev%2CCountryOfCtzAbbrev%2CDisabilityGroup"
    sleep 10
  done
