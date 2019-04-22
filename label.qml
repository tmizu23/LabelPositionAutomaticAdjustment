<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.6-Madeira" labelsEnabled="1" styleCategories="Symbology|Labeling">
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0">
    <symbols>
      <symbol type="marker" name="0" alpha="1" force_rhr="0" clip_to_extent="1">
        <layer class="GeometryGenerator" pass="0" locked="0" enabled="1">
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v="make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;   )  )"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol type="line" name="@0@0" alpha="1" force_rhr="0" clip_to_extent="1">
            <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
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
      <text-style namedStyle="Normal" blendMode="0" previewBkgrdColor="#ffffff" fontSize="8" textOpacity="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" fontCapitals="0" multilineHeight="1" useSubstitutions="0" fontItalic="0" fontWeight="50" fontStrikeout="0" fontLetterSpacing="0" fontWordSpacing="0" fontFamily="ＭＳ ゴシック" textColor="0,0,0,255" isExpression="1" fieldName=" &quot;種名&quot;  + ':' +  &quot;個体数&quot;  + '個体'" fontSizeUnit="Point">
        <text-buffer bufferOpacity="1" bufferDraw="0" bufferSizeUnits="Point" bufferJoinStyle="128" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferColor="255,255,255,255"/>
        <background shapeOffsetUnit="Point" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthUnit="Point" shapeRotation="0" shapeRotationType="0" shapeBorderWidth="0.5" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeY="0.3" shapeSVGFile="" shapeJoinStyle="64" shapeSizeX="0.3" shapeSizeType="0" shapeBlendMode="0" shapeRadiiX="0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeDraw="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeBorderColor="0,0,0,255"/>
        <shadow shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowDraw="0" shadowUnder="0" shadowRadius="1.5" shadowOpacity="0.7" shadowRadiusUnit="MM"/>
        <substitutions/>
      </text-style>
      <text-format rightDirectionSymbol=">" decimals="3" reverseDirectionSymbol="0" placeDirectionSymbol="0" plussign="0" multilineAlign="3" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;"/>
      <placement dist="0" quadOffset="4" maxCurvedCharAngleIn="25" offsetUnits="MM" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" placement="0" centroidWhole="0" repeatDistanceUnits="MM" placementFlags="10" maxCurvedCharAngleOut="-25" priority="5" distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationAngle="0" offsetType="0" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" preserveRotation="0" centroidInside="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
      <rendering obstacle="1" fontMaxPixelSize="10000" drawLabels="1" scaleMin="0" obstacleFactor="1" scaleMax="0" displayAll="1" fontLimitPixelSize="0" labelPerPart="0" zIndex="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" minFeatureSize="0" mergeLines="0" scaleVisibility="1" obstacleType="0" maxNumLabels="2000"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option type="Map" name="properties">
            <Option type="Map" name="AlwaysShow">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_alwaysshow"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Bold">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_bold"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="BufferColor">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_buffercolor"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="BufferSize">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_buffersize"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Color">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_color"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Family">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_family"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="FontStyle">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_fontstyle"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Hali">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="expression" value="case &#xd;&#xa;when &quot;auxiliary_storage_labeling_positionx&quot; &lt; $x  THEN 'right'&#xd;&#xa;ELSE 'left'  &#xd;&#xa;END"/>
              <Option type="int" name="type" value="3"/>
            </Option>
            <Option type="Map" name="Italic">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_italic"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="LabelDistance">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_labeldistance"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="LabelRotation">
              <Option type="bool" name="active" value="false"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_labelrotation"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="MaxScale">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_maxscale"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="MinScale">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_minscale"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="PositionX">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_positionx"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="PositionY">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_positiony"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="ScaleVisibility">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_scalevisibility"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Show">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_show"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Size">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_size"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Strikeout">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_strikeout"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Underline">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="field" value="auxiliary_storage_labeling_underline"/>
              <Option type="int" name="type" value="2"/>
            </Option>
            <Option type="Map" name="Vali">
              <Option type="bool" name="active" value="true"/>
              <Option type="QString" name="expression" value="case &#xd;&#xa;when &quot;auxiliary_storage_labeling_positiony&quot; &lt; $y  THEN 'Top'&#xd;&#xa;ELSE 'Bottom'  &#xd;&#xa;END"/>
              <Option type="int" name="type" value="3"/>
            </Option>
          </Option>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
