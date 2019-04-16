<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.5-Madeira" styleCategories="Symbology|Labeling" labelsEnabled="1">
  <renderer-v2 type="singleSymbol" forceraster="0" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol type="marker" alpha="1" clip_to_extent="1" force_rhr="0" name="0">
        <layer pass="0" class="GeometryGenerator" locked="0" enabled="1">
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v="make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;   )  )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="line" alpha="1" clip_to_extent="1" force_rhr="0" name="@0@0">
            <layer pass="0" class="SimpleLine" locked="0" enabled="1">
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="0,0,0,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0"/>
              <prop k="line_width_unit" v="MM"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="use_custom_dash" v="0"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="209,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.8"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fontWordSpacing="0" fontSizeUnit="Point" fontStrikeout="0" textColor="0,0,0,255" previewBkgrdColor="#ffffff" fontSize="10" fontFamily="MS UI Gothic" useSubstitutions="0" fontUnderline="0" fontWeight="50" textOpacity="1" namedStyle="Normal" isExpression="1" fontCapitals="0" fontLetterSpacing="0" fieldName="種名" multilineHeight="1" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontItalic="0">
        <text-buffer bufferNoFill="1" bufferSizeUnits="Point" bufferJoinStyle="128" bufferSize="1" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
        <background shapeBorderWidthUnit="Point" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOffsetX="0" shapeBlendMode="0" shapeSizeType="0" shapeSizeY="1" shapeOpacity="1" shapeSizeX="1" shapeDraw="1" shapeType="0" shapeOffsetUnit="Point" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="0,0,0,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0.5" shapeSizeUnit="Point" shapeRadiiUnit="MM"/>
        <shadow shadowUnder="0" shadowOffsetUnit="MM" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetAngle="135" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowRadiusAlphaOnly="0"/>
        <substitutions/>
      </text-style>
      <text-format multilineAlign="3" plussign="0" placeDirectionSymbol="0" formatNumbers="0" decimals="3" useMaxLineLengthForAutoWrap="1" autoWrapLength="0" rightDirectionSymbol=">" wrapChar="" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
      <placement dist="0" maxCurvedCharAngleOut="-25" preserveRotation="1" priority="5" centroidWhole="0" repeatDistance="0" placementFlags="10" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" offsetUnits="MM" maxCurvedCharAngleIn="25" quadOffset="4" placement="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" offsetType="0" yOffset="0" distUnits="MM" xOffset="0" rotationAngle="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
      <rendering upsidedownLabels="0" drawLabels="1" zIndex="0" minFeatureSize="0" scaleMin="0" mergeLines="0" scaleVisibility="0" maxNumLabels="2000" fontLimitPixelSize="0" obstacleFactor="1" displayAll="1" fontMinPixelSize="3" labelPerPart="0" fontMaxPixelSize="10000" obstacleType="0" scaleMax="0" limitNumLabels="0" obstacle="1"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" type="QString" name="name"/>
          <Option type="Map" name="properties">
            <Option type="Map" name="Hali">
              <Option value="true" type="bool" name="active"/>
              <Option value="case when &quot;auxiliary_storage_labeling_positionx&quot; &lt; $x THEN 'right' ELSE 'left' END" type="QString" name="expression"/>
              <Option value="3" type="int" name="type"/>
            </Option>
            <Option type="Map" name="PositionX">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_positionx" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="PositionY">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_positiony" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Vali">
              <Option value="true" type="bool" name="active"/>
              <Option value="case when &quot;auxiliary_storage_labeling_positiony&quot; &lt; $y THEN 'Top' ELSE 'Bottom' END" type="QString" name="expression"/>
              <Option value="3" type="int" name="type"/>
            </Option>
          </Option>
          <Option value="collection" type="QString" name="type"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
