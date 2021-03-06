Map{
  background-color: @background;
  font-directory: url(./fonts); 
  buffer-size: 512;
}

/* Water */
#ocean, #water-polygons{
  polygon-fill:@water;
  polygon-gamma:0.8;
}

#water-lines-low[zoom>=8][zoom<=12]{
  line-color: @water;
  [zoom>7][zoom<10]{line-width: 0.2;}
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#water-lines-medium[zoom>=13][zoom<=14]{
  line-color: @water;
  [type='river'], 
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] { 
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  } 
} 
  
#water-lines-high[zoom>=15]{
  line-color: @water;
  [type='river'],
  [type='canal']{
    line-cap: round;
    line-join: round;
    [zoom=15]{line-width: 2;}
    [zoom=16]{line-width: 6;}
  }
  [type='stream']{
    [zoom=15]{line-width: 1;}
    [zoom=16]{line-width: 2;}
  }
  [type='ditch'],
  [type='drain']{
    [zoom=15]{line-width: 0.5;}
    [zoom=16]{line-width: 1;}
  }
}

/* Borders */
#county-borders{
  line-color:@county_border; 
  line-cap: round;
  line-dasharray: 2,5;
  [zoom=8]{line-width:0.3;}
  [zoom=9]{line-width:0.4;}
  [zoom=10]{line-width:0.5;}
  [zoom=11]{line-width:0.6;}
  [zoom=12]{line-width:0.7;}
  [zoom=13]{line-width:0.8;}
  [zoom=14]{line-width:0.9;}
  [zoom=15]{line-width:1.0;}
  [zoom=16]{line-width:1.1;}
} 

#california-border{
  line-color:@california_border; 
  line-cap: round;
  [zoom=8]{line-width:0.5;}
  [zoom=9]{line-width:0.6;}
  [zoom=10]{line-width:0.7;}
  [zoom=11]{line-width:0.8;}
  [zoom=12]{line-width:0.9;}
  [zoom=13]{line-width:1.0;}
  [zoom=14]{line-width:1.1;}
  [zoom=15]{line-width:1.2;}
  [zoom=16]{line-width:1.2;}
}

#mexico-border{
  line-color:@mexico_border; 
  line-cap: round;
  [zoom=8]{line-width:0.6;}
  [zoom=9]{line-width:0.7;}
  [zoom=10]{line-width:0.8;}
  [zoom=11]{line-width:0.9;}
  [zoom=12]{line-width:1.0;}
  [zoom=13]{line-width:1.1;}
  [zoom=14]{line-width:1.2;}
  [zoom=15]{line-width:1.3;}
  [zoom=16]{line-width:1.4;}
}

/* Land use fills */
#landuse {
  [type='arena']{ polygon-fill: @stadium; }
  [type='beach']{ polygon-fill: @beach; }
  [type='cemetery']{ polygon-fill: @park; }
  [type='college']{ polygon-fill: @school; }
  [type='commercial']{ polygon-fill: @commercial; }
  [type='dog_park']{ polygon-fill: @park; }
  [type='common']{ polygon-fill: @park; }
  [type='forest']{ polygon-fill: @forest; }
  [type='garden']{ polygon-fill: @park; }
  [type='golf_course']{ polygon-fill: @park; }
  [type='grass']{ polygon-fill: @grass; }
  [type='hospital']{ polygon-fill: @hospital; }
  [type='industrial']{ polygon-fill: @industrial; }
  [type='recreation_ground']{ polygon-fill: @park; }
  [type='kindergarten']{ polygon-fill: @school; }
  [type='military']{ polygon-fill: @military; }
  [type='park']{ polygon-fill: @park; }
  [type='playground']{ polygon-fill: @park; }
  [type='parking']{ polygon-fill: @parking; }
  [type='pedestrian']{ polygon-fill: @parking*0.97; }
  [type='pitch']{ polygon-fill: @park; }
  [type='place_of_worship']{ polygon-fill: @place_of_worship; }
  [type='recreation_ground']{ polygon-fill: @park; }
  [type='residential']{ polygon-fill: @residential; }
  [type='school']{ polygon-fill: @school; }
  [type='sports_center']{ polygon-fill: @stadium; }
  [type='swimming pool']{ polygon-fill: @water; }
  [type='stadium']{ polygon-fill: @stadium; }
  [type='university']{ polygon-fill: @school; }
  [type='village_green']{ polygon-fill: @park; }
}

/* Buildings */
.building[zoom>13][zoom<17]{
  polygon-fill: @building;
  line-color:darken(@building,5);
  line-width:0.2;
  [zoom=14]{ polygon-opacity:0.1; }
  [zoom=15]{ polygon-opacity:0.2; }
  [zoom=16]{ polygon-opacity:0.4; }
}