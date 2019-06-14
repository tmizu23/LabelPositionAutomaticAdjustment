<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.4.8-Madeira">
  <renderer-v2 enableorderby="0" type="singleSymbol" symbollevels="0" forceraster="0">
    <symbols>
      <symbol type="marker" clip_to_extent="1" alpha="1" force_rhr="0" name="0">
        <layer enabled="1" class="GeometryGenerator" locked="1" pass="0">
          <prop v="Line" k="SymbolType"/>
          <prop v="make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;   )  )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="line" clip_to_extent="1" alpha="1" force_rhr="0" name="@0@0">
            <layer enabled="1" class="SimpleLine" locked="0" pass="0">
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
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="255,0,0,255" k="color"/>
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
          <prop v="2" k="size"/>
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
      <text-style textOpacity="1" isExpression="1" fontSize="7" useSubstitutions="0" namedStyle="Normal" fontFamily="ＭＳ ゴシック" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" blendMode="0" fontStrikeout="0" fontWordSpacing="0" fontWeight="50" textColor="0,0,0,255" previewBkgrdColor="#ffffff" fontLetterSpacing="0" fontCapitals="0" fontItalic="0" fontUnderline="0" fieldName=" &quot;種名&quot;+':'+&quot;個体数&quot;" fontSizeUnit="Point">
        <text-buffer bufferOpacity="1" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferDraw="0" bufferColor="255,255,255,255"/>
        <background shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSizeUnit="MM" shapeRadiiX="0" shapeBlendMode="0" shapeOpacity="1" shapeRadiiUnit="MM" shapeBorderWidth="0.5" shapeJoinStyle="64" shapeSizeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeRotation="0" shapeSizeX="0.3" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOffsetY="0" shapeBorderColor="0,0,0,255" shapeType="0" shapeDraw="1" shapeSizeY="0.3" shapeBorderWidthUnit="Point" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0"/>
        <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowRadius="1.5" shadowOpacity="0.7" shadowBlendMode="6" shadowUnder="0" shadowOffsetDist="1" shadowDraw="0" shadowOffsetAngle="135" shadowColor="0,0,0,255" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
        <substitutions/>
      </text-style>
      <text-format rightDirectionSymbol=">" decimals="3" plussign="0" formatNumbers="0" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" placeDirectionSymbol="0" multilineAlign="3" leftDirectionSymbol="&lt;"/>
      <placement fitInPolygonOnly="0" offsetType="0" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidWhole="0" offsetUnits="MM" maxCurvedCharAngleIn="25" rotationAngle="0" repeatDistance="0" placementFlags="10" quadOffset="4" placement="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" distUnits="MM" priority="5" centroidInside="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" dist="0"/>
      <rendering obstacleFactor="1" zIndex="0" scaleMin="0" upsidedownLabels="0" minFeatureSize="0" fontMaxPixelSize="10000" labelPerPart="0" obstacleType="0" limitNumLabels="0" obstacle="1" drawLabels="1" scaleMax="0" fontLimitPixelSize="0" mergeLines="0" scaleVisibility="0" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option type="Map" name="properties">
            <Option type="Map" name="Hali">
              <Option type="bool" value="true" name="active"/>
              <Option type="QString" value="case &#xa;when &quot;auxiliary_storage_labeling_positionx&quot; &lt; $x  THEN 'right'&#xa;ELSE 'left'  &#xa;END" name="expression"/>
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
              <Option type="QString" value="case &#xa;when &quot;auxiliary_storage_labeling_positiony&quot; &lt; $y  THEN 'Top'&#xa;ELSE 'Bottom'  &#xa;END&#xa;" name="expression"/>
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
