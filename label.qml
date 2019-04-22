<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.5-Madeira" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 type="singleSymbol" symbollevels="0" forceraster="0" enableorderby="0">
    <symbols>
      <symbol alpha="1" force_rhr="0" type="marker" clip_to_extent="1" name="0">
        <layer class="GeometryGenerator" enabled="1" locked="0" pass="0">
          <prop v="Line" k="SymbolType"/>
          <prop v=" make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;))&#xd;&#xa;" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" force_rhr="0" type="line" clip_to_extent="1" name="@0@0">
            <layer class="SimpleLine" enabled="1" locked="0" pass="0">
              <prop v="square" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0,0,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0" k="line_width"/>
              <prop v="MM" k="line_width_unit"/>
              <prop v="0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0" k="ring_filter"/>
              <prop v="0" k="use_custom_dash"/>
              <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="209,0,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="1.8" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
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
      <text-style fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" blendMode="0" namedStyle="Normal" textOpacity="1" fieldName="種名" fontSize="10" textColor="0,0,0,255" multilineHeight="1" fontUnderline="0" fontSizeUnit="Point" fontItalic="0" previewBkgrdColor="#ffffff" fontLetterSpacing="0" fontFamily="MS UI Gothic" fontWeight="50" useSubstitutions="0" fontStrikeout="0" fontCapitals="0" isExpression="0">
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferDraw="0" bufferNoFill="1" bufferOpacity="1" bufferBlendMode="0" bufferJoinStyle="128" bufferSizeUnits="Point" bufferSize="1"/>
        <background shapeOffsetUnit="Point" shapeSizeType="0" shapeBlendMode="0" shapeOffsetX="0" shapeSizeUnit="Point" shapeJoinStyle="64" shapeRotation="0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRotationType="0" shapeOpacity="1" shapeSVGFile="" shapeSizeX="1" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="1" shapeSizeY="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="Point" shapeBorderColor="0,0,0,255" shapeType="0" shapeRadiiY="0" shapeBorderWidth="0.5" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <shadow shadowOffsetGlobal="1" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowDraw="0" shadowRadius="1.5" shadowScale="100" shadowColor="0,0,0,255" shadowOffsetUnit="MM" shadowUnder="0" shadowOpacity="0.7"/>
        <substitutions/>
      </text-style>
      <text-format useMaxLineLengthForAutoWrap="1" decimals="3" multilineAlign="3" addDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" formatNumbers="0" autoWrapLength="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" plussign="0" placeDirectionSymbol="0"/>
      <placement offsetUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" placementFlags="10" placement="0" priority="5" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" yOffset="0" fitInPolygonOnly="0" distUnits="MM" dist="0" offsetType="0" repeatDistance="0" rotationAngle="0" preserveRotation="1" maxCurvedCharAngleIn="25" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" xOffset="0" centroidWhole="0"/>
      <rendering maxNumLabels="2000" limitNumLabels="0" scaleVisibility="0" minFeatureSize="0" displayAll="1" scaleMax="0" zIndex="0" fontLimitPixelSize="0" obstacleType="0" fontMaxPixelSize="10000" obstacleFactor="1" fontMinPixelSize="3" mergeLines="0" upsidedownLabels="0" obstacle="1" labelPerPart="0" drawLabels="1" scaleMin="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option type="Map" name="properties">
            <Option type="Map" name="Hali">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="'center'" name="expression"/>
              <Option type="int" value="3" name="type"/>
            </Option>
            <Option type="Map" name="PositionX">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="auxiliary_storage_labeling_positionx" name="field"/>
              <Option type="int" value="2" name="type"/>
            </Option>
            <Option type="Map" name="PositionY">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="auxiliary_storage_labeling_positiony" name="field"/>
              <Option type="int" value="2" name="type"/>
            </Option>
            <Option type="Map" name="Vali">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="'Half'" name="expression"/>
              <Option type="int" value="3" name="type"/>
            </Option>
          </Option>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
