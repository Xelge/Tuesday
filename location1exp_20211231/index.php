<?php
$map=1;
$ratio4wals=10; // масштаб - (сколько px в одном метре)
$mapmax_x_meters=120;  // ширина карты в метрах
$mapmax_y_metes=60;  // высота карты в метрах

$mapmax_x=$mapmax_x_meters*$ratio4wals;  // ширина карты  
$mapmax_y=$mapmax_y_metes*$ratio4wals;  // высота карты

require 'rb-mysql.php';
//SET UP USER USER ACESS NAME AND PASS FOR DATABASE
R::setup( 'mysql:host=localhost;dbname=power',
    'root', 'Ltymdfhtymz28223' ); //for both mysql or mariaDB
R::freeze(true); //set true on production

function heatValue($value){
    $h= (1.0 - $value) * 240;
  return "hsla(" . $h . ", 100%, 50%, 0.5)";
}
const WALL_COLOR = '000000';
const SENSOR_RADIUS = 10;
const SENSOR_COLOR = '000000';
const DEVPOINT_RADIUS = 10;
const DEVPOINT_COLOR = '0000FF';
const DEVPOINT_NAME = 'NULL';

$walls = R::find('walls','mapid = ?',[$map]);
$sensors = R::find('sensors','mapid = ?',[$map]);
$devpoints = R::find('devpoints','mapid = ?',[$map]);
$heat = R::find('heat','mapid = ? and from_x is null and from_y is null',[$map]);

$heat_min = R::findOne('heat','mapid = ? and from_x is null and from_y is null order by temp asc',[$map]);
$heat_max = R::findOne('heat','mapid = ? and from_x is null and from_y is null order by temp desc',[$map]);

$heat_delta = $heat_max->temp - $heat_min->temp;
var_dump($heat_delta);
?>
<html>
    <head>
        <style>
            .container {
                width: 1005px;
                margin: 0 auto;
                background-color: #EEEEEE;
            }
            .sensorName { font: bold 18px sans-serif; }
            .sensorMac { font: bold 18px sans-serif; display: none}
            g:hover>.sensorMac{display: block}
            #heatmap{display: none};
        </style>
        <script>
            function toggleHeatmap()
            {
                if (document.getElementById('checkbox_heatmap').checked)
                {
                    document.getElementById('heatmap').style.display = 'block';
                } else {
                    document.getElementById('heatmap').style.display = 'none';
                }
            }
        </script>
    </head>
    <body>

	
        <div class="container">
            <p>
            Включить тепловую карту:
            <input type="checkbox" id="checkbox_heatmap" autocomplete="off" onclick="toggleHeatmap();"/>
            </p>
																															
																															
																															
																																		  <!-- 2462 1211 -->
            <svg fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="-0.5 -0.5 <?=$mapmax_x?> <?=$mapmax_y?> ">
                <defs>
                    <filter x="0" y="0" width="1" height="1" id="bg-text">
                        <feFlood flood-color="white"/>
                        <feComposite in="SourceGraphic" operator="xor" />
                    </filter>
                </defs>
                <g>
                    <?php foreach ($walls as $wall):?>
                        <line
                                x1="<?=$ratio4wals*$wall->x1?>"
                                y1="<?=$ratio4wals*$wall->y1?>"
                                x2="<?=$ratio4wals*$wall->x2?>"
                                y2="<?=$ratio4wals*$wall->y2?>"
                                stroke="#<?=$wall->color ?: WALL_COLOR?>"
                                stroke-width="<?=$wall->thickness?>" />
                    <?php endforeach;?>
                    <g id="heatmap">
                        <?php foreach ($heat as $h):?>
                            <rect
                                    x="<?=$h->x?>"
                                    y="<?=$h->y?>"
                                    width="20"
                                    height="20"
                                    fill="<?=heatValue($h->temp/$heat_delta)?>"
                            />
                        <?php endforeach;?>
                    </g>
                    <?php foreach ($sensors as $sensor):?>
                        <g>
                            <text filter="url(#bg-text)" class="sensorMac" x="<?=$ratio4wals*$sensor->x-10?>" y="<?=$ratio4wals*$sensor->y-20?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>">
                                <?=$sensor->sensor_name?>
                            </text>
                            <text class="sensorName" x="<?=$ratio4wals*$sensor->x-10?>" y="<?=$ratio4wals*$sensor->y-20?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>">
                                <?=$sensor->sensor_name?>
                            </text>
                            <circle cx="<?=$ratio4wals*$sensor->x?>" cy="<?=$ratio4wals*$sensor->y?>" r="<?=SENSOR_RADIUS?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>"/>
                            <text filter="url(#bg-text)" class="sensorMac" x="<?=$ratio4wals*$sensor->x+10?>" y="<?=$ratio4wals*$sensor->y?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>">
                                <?=$sensor->mac?>
                            </text>
                            <text class="sensorMac" x="<?=$ratio4wals*$sensor->x+10?>" y="<?=$ratio4wals*$sensor->y?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>">
                                <?=$sensor->mac?>
                            </text>
                        </g>
                    <?php endforeach;  /**/  ?>
                    <?php foreach ($devpoints as $devpoint):?>
                        <g id="devpoint_<?=$ratio4wals*$devpoint->id?>">
                            <circle cx="<?=$ratio4wals*$devpoint->x?>" cy="<?=$ratio4wals*$devpoint->y?>" r="<?=DEVPOINT_RADIUS?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>"/>
                            <text filter="url(#bg-text)" class="sensorMac" x="<?=$ratio4wals*$devpoint->x-10?>" y="<?=$ratio4wals*$devpoint->y-20?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>">
                                <?=$devpoint->name?:DEVPOINT_NAME?>
                            </text>
                            <text class="sensorMac" x="<?=$ratio4wals*$devpoint->x-10?>" y="<?=$ratio4wals*$devpoint->y-20?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>">
                                <?=$devpoint->name?:DEVPOINT_NAME?>
                            </text>
                            <text filter="url(#bg-text)" class="sensorMac" x="<?=$ratio4wals*$devpoint->x+10?>" y="<?=$ratio4wals*$devpoint->y?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>">
                                <?=$devpoint->mac?:''?>
                            </text>
                            <text class="sensorMac" x="<?=$ratio4wals*$devpoint->x+10?>" y="<?=$ratio4wals*$devpoint->y?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>">
                                <?=$devpoint->mac?:''?>
                            </text>
                        </g>
                    <?php endforeach;?>

                </g>
            </svg>
        </div>
		
		
 
		
 Карта номер <?=$map?> Масштаб <?=$ratio4wals?> (сколько px в одном метре)      <br>Ширина= <?=$mapmax_x_meters?>  м.  Высота= <?=$mapmax_y_metes?> м.  <br>
 Ширина(X)=   <?=$mapmax_x?>  px.  Высота(Y)=  <?=$mapmax_y?> px. 
<br>
 
		
		Сенсоры<br>:
			   <?php 	foreach ($sensors as $sensor):?>
                       <?=$devpoint->id?>  <?=$sensor->sensor_name?>  X= <?=$ratio4wals*$sensor->x?> Y= <?=$ratio4wals*$sensor->y?> COLOR = <?=$sensor->color ?: SENSOR_COLOR?>   ( cx="<?=$ratio4wals*$sensor->x?>" cy="<?=$ratio4wals*$sensor->y?>" r="<?=SENSOR_RADIUS?>" fill="#<?=$sensor->color ?: SENSOR_COLOR?>")      <br>
                    <?php endforeach;  /**/ ?>
					
		Местоположения
                  <?php foreach ($devpoints as $devpoint):?>
	circle cx="<?=$ratio4wals*$devpoint->x?>" cy="<?=$ratio4wals*$devpoint->y?>" r="<?=DEVPOINT_RADIUS?>" fill="#<?=$devpoint->color ?: DEVPOINT_COLOR?>"			  
 <br>
                       <?php endforeach;?>
				
					
					
					
					
	
    </body>
</html>

