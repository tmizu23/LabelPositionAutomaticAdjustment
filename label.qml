<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" simplifyMaxScale="1" version="3.4.6-Madeira" labelsEnabled="1" simplifyDrawingHints="0" readOnly="0" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" simplifyDrawingTol="1" styleCategories="AllStyleCategories" maxScale="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol alpha="1" force_rhr="0" name="0" clip_to_extent="1" type="marker">
        <layer locked="1" class="GeometryGenerator" enabled="1" pass="0">
          <prop v="Line" k="SymbolType"/>
          <prop v="make_line(  centroid(  $geometry  ) , make_point(  &quot;auxiliary_storage_labeling_positionx&quot; ,  &quot;auxiliary_storage_labeling_positiony&quot;   )  )" k="geometryModifier"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" force_rhr="0" name="@0@0" clip_to_extent="1" type="line">
            <layer locked="0" class="SimpleLine" enabled="1" pass="0">
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
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
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
      <text-style namedStyle="Normal" fontWeight="50" fontLetterSpacing="0" fontWordSpacing="0" textOpacity="1" isExpression="1" fieldName="&quot;種名&quot;+':'+&quot;個体数&quot;" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="7" fontFamily="ＭＳ ゴシック" fontUnderline="0" blendMode="0" fontSizeUnit="Point" fontItalic="0" textColor="0,0,0,255" previewBkgrdColor="#ffffff" fontStrikeout="0" useSubstitutions="0" multilineHeight="1" fontCapitals="0">
        <text-buffer bufferSizeUnits="MM" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferJoinStyle="128" bufferBlendMode="0" bufferNoFill="1"/>
        <background shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0.3" shapeType="0" shapeJoinStyle="64" shapeDraw="1" shapeOffsetY="0" shapeBorderWidthUnit="Point" shapeSizeX="0.3" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="0,0,0,255" shapeOpacity="1" shapeSizeType="0" shapeBorderWidth="0.5" shapeRotationType="0" shapeBlendMode="0" shapeRadiiY="0" shapeOffsetX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeRadiiUnit="MM" shapeOffsetUnit="MM" shapeRotation="0" shapeFillColor="255,255,255,255"/>
        <shadow shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOffsetGlobal="1" shadowUnder="0" shadowOffsetUnit="MM" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetDist="1"/>
        <substitutions/>
      </text-style>
      <text-format multilineAlign="3" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0" autoWrapLength="0" addDirectionSymbol="0" formatNumbers="0" wrapChar="" leftDirectionSymbol="&lt;" placeDirectionSymbol="0"/>
      <placement distUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" maxCurvedCharAngleIn="25" centroidWhole="0" placementFlags="10" xOffset="0" dist="0" maxCurvedCharAngleOut="-25" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" rotationAngle="0" repeatDistanceUnits="MM" quadOffset="4" centroidInside="0" offsetUnits="MM" fitInPolygonOnly="0" placement="0" offsetType="0"/>
      <rendering scaleVisibility="0" scaleMax="0" limitNumLabels="0" obstacle="1" upsidedownLabels="0" drawLabels="1" scaleMin="0" minFeatureSize="0" fontMinPixelSize="3" obstacleFactor="1" zIndex="0" displayAll="0" fontMaxPixelSize="10000" maxNumLabels="2000" mergeLines="0" obstacleType="0" fontLimitPixelSize="0" labelPerPart="0"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" name="name" type="QString"/>
          <Option name="properties" type="Map">
            <Option name="Hali" type="Map">
              <Option value="true" name="active" type="bool"/>
              <Option value="case &#xa;when &quot;auxiliary_storage_labeling_positionx&quot; &lt; $x  THEN 'right'&#xa;ELSE 'left'  &#xa;END" name="expression" type="QString"/>
              <Option value="3" name="type" type="int"/>
            </Option>
            <Option name="PositionX" type="Map">
              <Option value="true" name="active" type="bool"/>
              <Option value="auxiliary_storage_labeling_positionx" name="field" type="QString"/>
              <Option value="2" name="type" type="int"/>
            </Option>
            <Option name="PositionY" type="Map">
              <Option value="true" name="active" type="bool"/>
              <Option value="auxiliary_storage_labeling_positiony" name="field" type="QString"/>
              <Option value="2" name="type" type="int"/>
            </Option>
            <Option name="Vali" type="Map">
              <Option value="true" name="active" type="bool"/>
              <Option value="case &#xa;when &quot;auxiliary_storage_labeling_positiony&quot; &lt; $y  THEN 'Top'&#xa;ELSE 'Bottom'  &#xa;END&#xa;" name="expression" type="QString"/>
              <Option value="3" name="type" type="int"/>
            </Option>
          </Option>
          <Option value="collection" name="type" type="QString"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property value="種名" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="true" key="labeling/isExpression"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory maxScaleDenominator="1e+08" width="15" sizeScale="3x:0,0,0,0,0,0" height="15" sizeType="MM" backgroundColor="#ffffff" enabled="0" penWidth="0" rotationOffset="270" barWidth="5" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" penAlpha="255" penColor="#000000" diagramOrientation="Up" lineSizeType="MM" labelPlacementMethod="XHeight" minimumSize="0" scaleBasedVisibility="0" scaleDependency="Area" minScaleDenominator="0">
      <fontProperties style="" description="MS UI Gothic,9,-1,5,50,0,0,0,0,0"/>
      <attribute label="" color="#000000" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" showAll="1" placement="0" priority="0" dist="0" zIndex="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="種名">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="個体数">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="整理No">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="重要種">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="確認形態">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="項目">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="季節">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="確認方法">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_positionx">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_labeling_positiony">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="種名"/>
    <alias index="1" name="" field="個体数"/>
    <alias index="2" name="" field="整理No"/>
    <alias index="3" name="" field="重要種"/>
    <alias index="4" name="" field="確認形態"/>
    <alias index="5" name="" field="項目"/>
    <alias index="6" name="" field="季節"/>
    <alias index="7" name="" field="確認方法"/>
    <alias index="8" name="" field="auxiliary_storage_labeling_positionx"/>
    <alias index="9" name="" field="auxiliary_storage_labeling_positiony"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" expression="" field="種名"/>
    <default applyOnUpdate="0" expression="" field="個体数"/>
    <default applyOnUpdate="0" expression="" field="整理No"/>
    <default applyOnUpdate="0" expression="" field="重要種"/>
    <default applyOnUpdate="0" expression="" field="確認形態"/>
    <default applyOnUpdate="0" expression="" field="項目"/>
    <default applyOnUpdate="0" expression="" field="季節"/>
    <default applyOnUpdate="0" expression="" field="確認方法"/>
    <default applyOnUpdate="0" expression="" field="auxiliary_storage_labeling_positionx"/>
    <default applyOnUpdate="0" expression="" field="auxiliary_storage_labeling_positiony"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="種名" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="個体数" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="整理No" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="重要種" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="確認形態" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="項目" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="季節" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="確認方法" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="auxiliary_storage_labeling_positionx" unique_strength="0"/>
    <constraint exp_strength="0" constraints="0" notnull_strength="0" field="auxiliary_storage_labeling_positiony" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="種名" exp=""/>
    <constraint desc="" field="個体数" exp=""/>
    <constraint desc="" field="整理No" exp=""/>
    <constraint desc="" field="重要種" exp=""/>
    <constraint desc="" field="確認形態" exp=""/>
    <constraint desc="" field="項目" exp=""/>
    <constraint desc="" field="季節" exp=""/>
    <constraint desc="" field="確認方法" exp=""/>
    <constraint desc="" field="auxiliary_storage_labeling_positionx" exp=""/>
    <constraint desc="" field="auxiliary_storage_labeling_positiony" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;整理No&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column width="229" name="種名" hidden="0" type="field"/>
      <column width="-1" name="個体数" hidden="0" type="field"/>
      <column width="-1" name="整理No" hidden="0" type="field"/>
      <column width="-1" name="重要種" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="確認形態" hidden="0" type="field"/>
      <column width="-1" name="項目" hidden="0" type="field"/>
      <column width="-1" name="季節" hidden="0" type="field"/>
      <column width="-1" name="確認方法" hidden="0" type="field"/>
      <column width="-1" name="auxiliary_storage_labeling_positionx" hidden="1" type="field"/>
      <column width="-1" name="auxiliary_storage_labeling_positiony" hidden="1" type="field"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
フォームが開かれた時に呼び出されるPython関数を使用してフォームにエクストラロジックを追加することができます.
"Python初期化関数"フィールドに関数の名前を入力します.
例は次のとおりです:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="auxiliary_storage_labeling_positionx" editable="0"/>
    <field name="auxiliary_storage_labeling_positiony" editable="0"/>
    <field name="個体数" editable="1"/>
    <field name="季節" editable="1"/>
    <field name="整理No" editable="1"/>
    <field name="確認形態" editable="1"/>
    <field name="確認方法" editable="1"/>
    <field name="種名" editable="1"/>
    <field name="重要種" editable="1"/>
    <field name="項目" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="auxiliary_storage_labeling_positionx" labelOnTop="0"/>
    <field name="auxiliary_storage_labeling_positiony" labelOnTop="0"/>
    <field name="個体数" labelOnTop="0"/>
    <field name="季節" labelOnTop="0"/>
    <field name="整理No" labelOnTop="0"/>
    <field name="確認形態" labelOnTop="0"/>
    <field name="確認方法" labelOnTop="0"/>
    <field name="種名" labelOnTop="0"/>
    <field name="重要種" labelOnTop="0"/>
    <field name="項目" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>種名</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
