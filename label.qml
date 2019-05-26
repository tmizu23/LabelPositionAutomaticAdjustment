<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.4.6-Madeira" styleCategories="Symbology|Labeling">
  <renderer-v2 forceraster="0" type="singleSymbol" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol force_rhr="0" type="marker" name="0" alpha="1" clip_to_extent="1">
        <layer locked="0" enabled="1" class="GeometryGenerator" pass="0">
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v="make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;   )  )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="line" name="@0@0" alpha="1" clip_to_extent="1">
            <layer locked="0" enabled="1" class="SimpleLine" pass="0">
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="Point"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="0,0,0,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0.5"/>
              <prop k="line_width_unit" v="Point"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="Point"/>
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
        <layer locked="0" enabled="1" class="SimpleMarker" pass="0">
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
          <prop k="size" v="2"/>
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
      <text-style namedStyle="Normal" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontCapitals="0" fontWeight="50" previewBkgrdColor="#ffffff" fontSize="8" useSubstitutions="0" blendMode="0" fontWordSpacing="0" textColor="0,0,0,255" fontItalic="0" isExpression="1" fieldName=" &quot;種名&quot;  + ':' +  &quot;個体数&quot;  + '個体'" fontStrikeout="0" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" multilineHeight="1" textOpacity="1" fontFamily="ＭＳ ゴシック">
        <text-buffer bufferColor="255,255,255,255" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="0" bufferJoinStyle="128" bufferOpacity="1" bufferSizeUnits="Point" bufferNoFill="1" bufferSize="1"/>
        <background shapeOffsetUnit="Point" shapeBorderWidth="0.5" shapeBorderColor="0,0,0,255" shapeBorderWidthUnit="Point" shapeJoinStyle="64" shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeFillColor="255,255,255,255" shapeType="0" shapeOffsetX="0" shapeRadiiX="0" shapeSizeType="0" shapeSizeX="0.3" shapeOpacity="1" shapeRotationType="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="1" shapeSizeY="0.3" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0"/>
        <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowOffsetDist="1" shadowScale="100" shadowColor="0,0,0,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowBlendMode="6" shadowRadius="1.5" shadowOpacity="0.7" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0"/>
        <substitutions/>
      </text-style>
      <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" reverseDirectionSymbol="0" multilineAlign="3" formatNumbers="0" addDirectionSymbol="0" plussign="0" wrapChar="" autoWrapLength="0" rightDirectionSymbol=">" useMaxLineLengthForAutoWrap="1" decimals="3"/>
      <placement predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" placement="0" quadOffset="4" maxCurvedCharAngleIn="25" placementFlags="10" fitInPolygonOnly="0" rotationAngle="0" dist="0" centroidWhole="0" repeatDistanceUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" xOffset="0" repeatDistance="0" offsetType="0" maxCurvedCharAngleOut="-25" preserveRotation="0" distUnits="MM" yOffset="0" priority="5" offsetUnits="MM"/>
      <rendering drawLabels="1" obstacleFactor="1" obstacleType="0" zIndex="0" scaleVisibility="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" scaleMin="0" obstacle="1" scaleMax="0" fontMinPixelSize="3" mergeLines="0" limitNumLabels="0" labelPerPart="0" upsidedownLabels="0" displayAll="1" minFeatureSize="0" maxNumLabels="2000"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" type="QString" name="name"/>
          <Option type="Map" name="properties">
            <Option type="Map" name="AlwaysShow">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_alwaysshow" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Bold">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_bold" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="BufferColor">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_buffercolor" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="BufferSize">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_buffersize" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Color">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_color" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Family">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_family" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="FontStyle">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_fontstyle" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Hali">
              <Option value="true" type="bool" name="active"/>
              <Option value="case &#xd;&#xa;when &quot;auxiliary_storage_labeling_positionx&quot; &lt; $x  THEN 'right'&#xd;&#xa;ELSE 'left'  &#xd;&#xa;END" type="QString" name="expression"/>
              <Option value="3" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Italic">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_italic" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="LabelDistance">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_labeldistance" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="LabelRotation">
              <Option value="false" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_labelrotation" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="MaximumScale">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_minscale" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="MinimumScale">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_maxscale" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
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
            <Option type="Map" name="ScaleVisibility">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_scalevisibility" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Show">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_show" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Size">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_size" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Strikeout">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_strikeout" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Underline">
              <Option value="true" type="bool" name="active"/>
              <Option value="auxiliary_storage_labeling_underline" type="QString" name="field"/>
              <Option value="2" type="int" name="type"/>
            </Option>
            <Option type="Map" name="Vali">
              <Option value="true" type="bool" name="active"/>
              <Option value="case &#xd;&#xa;when &quot;auxiliary_storage_labeling_positiony&quot; &lt; $y  THEN 'Top'&#xd;&#xa;ELSE 'Bottom'  &#xd;&#xa;END" type="QString" name="expression"/>
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
