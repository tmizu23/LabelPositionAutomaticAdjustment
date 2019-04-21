<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.4.5-Madeira">
  <renderer-v2 forceraster="0" symbollevels="0" enableorderby="0" type="singleSymbol">
    <symbols>
      <symbol alpha="1" force_rhr="0" name="0" clip_to_extent="1" type="marker">
        <layer pass="0" enabled="1" locked="0" class="GeometryGenerator">
          <prop v="Line" k="SymbolType"/>
          <prop v="case&#xd;&#xa;when&#xd;&#xa;&quot;auxiliary_storage_labeling_positionx&quot; &lt; $x and &#x9;&#x9;&quot;auxiliary_storage_labeling_positiony&quot; &lt; $y &#xd;&#xa;THEN&#xd;&#xa; make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot;+ label_size( 'width')/2.0 ,  &quot;auxiliary_storage_labeling_positiony&quot;+ label_size( 'height')/2.0 ) )&#xd;&#xa;when&#xd;&#xa;&quot;auxiliary_storage_labeling_positionx&quot; > $x and &#x9;&#x9;&quot;auxiliary_storage_labeling_positiony&quot; &lt; $y &#xd;&#xa;THEN&#xd;&#xa; make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot;- label_size( 'width')/2.0 ,  &quot;auxiliary_storage_labeling_positiony&quot;+ label_size( 'height')/2.0 ) )&#xd;&#xa; when &#xd;&#xa;&quot;auxiliary_storage_labeling_positionx&quot; > $x and &#x9;&#x9;&quot;auxiliary_storage_labeling_positiony&quot; > $y &#xd;&#xa;THEN&#xd;&#xa; make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot;- label_size( 'width')/2.0 ,  &quot;auxiliary_storage_labeling_positiony&quot;- label_size( 'height')/2.0 ) )&#xd;&#xa; when &#xd;&#xa;&quot;auxiliary_storage_labeling_positionx&quot; &lt; $x and &#x9;&#x9;&quot;auxiliary_storage_labeling_positiony&quot; > $y &#xd;&#xa;THEN&#xd;&#xa; make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot;+ label_size( 'width')/2.0 ,  &quot;auxiliary_storage_labeling_positiony&quot;- label_size( 'height')/2.0 ) )&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" force_rhr="0" name="@0@0" clip_to_extent="1" type="line">
            <layer pass="0" enabled="1" locked="0" class="SimpleLine">
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" locked="0" class="SimpleMarker">
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
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
      <text-style fontCapitals="0" textColor="0,0,0,255" useSubstitutions="0" fontFamily="MS UI Gothic" fontWeight="50" fontLetterSpacing="0" fontUnderline="0" fontSizeUnit="Point" previewBkgrdColor="#ffffff" isExpression="0" fontStrikeout="0" textOpacity="1" blendMode="0" fontItalic="0" fontSize="10" fontSizeMapUnitScale="3x:0,0,0,0,0,0" namedStyle="Normal" fontWordSpacing="0" fieldName="種名" multilineHeight="1">
        <text-buffer bufferColor="255,255,255,255" bufferDraw="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferBlendMode="0" bufferNoFill="1" bufferJoinStyle="128" bufferSizeUnits="Point"/>
        <background shapeRadiiY="0" shapeBorderWidth="0.5" shapeOffsetY="0" shapeSizeUnit="Point" shapeSizeX="1" shapeRotation="0" shapeRotationType="0" shapeOffsetUnit="Point" shapeSizeY="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeType="0" shapeOpacity="1" shapeDraw="1" shapeRadiiUnit="MM" shapeOffsetX="0" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="Point" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeRadiiX="0" shapeBorderColor="0,0,0,255"/>
        <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowDraw="0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowUnder="0" shadowScale="100"/>
        <substitutions/>
      </text-style>
      <text-format leftDirectionSymbol="&lt;" plussign="0" formatNumbers="0" placeDirectionSymbol="0" wrapChar="" rightDirectionSymbol=">" decimals="3" autoWrapLength="0" multilineAlign="3" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0"/>
      <placement distUnits="MM" offsetType="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistanceUnits="MM" yOffset="0" offsetUnits="MM" placementFlags="10" preserveRotation="1" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" dist="0" xOffset="0" repeatDistance="0" quadOffset="4" centroidWhole="0" rotationAngle="0" placement="0"/>
      <rendering labelPerPart="0" zIndex="0" minFeatureSize="0" drawLabels="1" fontMinPixelSize="3" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" limitNumLabels="0" fontMaxPixelSize="10000" mergeLines="0" scaleMax="0" displayAll="1" upsidedownLabels="0" obstacle="1" obstacleType="0" obstacleFactor="1" scaleMin="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties" type="Map">
            <Option name="Hali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="'center'"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="PositionX" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_positionx"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="PositionY" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="field" type="QString" value="auxiliary_storage_labeling_positiony"/>
              <Option name="type" type="int" value="2"/>
            </Option>
            <Option name="Vali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="'Half'"/>
              <Option name="type" type="int" value="3"/>
            </Option>
          </Option>
          <Option name="type" type="QString" value="collection"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
