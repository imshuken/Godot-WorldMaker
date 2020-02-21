GDPC                                                                             *   @   res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex   C     �       	�5����JA �uUb6H   res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex  0F     �       i�]K����Y�7%��@   res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex  pI     �       ZJ+�%0�8�ߦ@�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�P     �      d�a;1s���mыei�-<   res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex�L     |       5D��n�5,wWk�-@   res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex `B      :�      �^*5Ͷ9V��[�U�   res://Scenes/Main.tscn  �       %      ��J�oܐ"��   res://Scenes/Node_info.tscn �0      �
      ٌ�m
��F�x�L   res://Scenes/continent.tscn �;      �       �_�i�̆cg���?�   res://Scenes/map.tscn   P<      �       ��@�#�|��+ Z�   res://Scenes/node.tscn  P=      	      K��b|���d�ETd��$   res://Screenshots/screen1.png.import��      �      cf�:���%��:��B�   res://Scripts/Main.gd.remap  a     '       *�e�R��_�������   res://Scripts/Main.gdc  @�      �      W]����+z�Q�\H�8�   res://Scripts/Map.gd.remap  0a     &       ,����L�)KW��G�   res://Scripts/Map.gdc    �      �      �,�M���/�6$�A    res://Scripts/Node_info.gd.remap`a     ,       �	=m��kz0��͗�   res://Scripts/Node_info.gdc ��      a      h�^�����ێ�%�(    res://Scripts/continent.gd.remap�a     ,       �tYQ�����2TLj    res://Scripts/continent.gdc  �      �      �5�YMΘvzB���d�    res://Scripts/cursor.gd.remap   �a     )       ���fQ,ǚ��/�NZ   res://Scripts/cursor.gdc��      �      \��%N�PN�q���X�(   res://Scripts/elevation_shadow.gd.remap �a     3       ��S:F�,���T��,�$   res://Scripts/elevation_shadow.gdc  `�      �       E�=t ��7�� �}`0(   res://Scripts/generate_button.gd.remap  0b     2       ���"��H�10)�w$   res://Scripts/generate_button.gdc   @�      �       ���p� o��7�_C�   res://Scripts/node.gd.remap pb     '       �8��K ��j��7�   res://Scripts/node.gdc  ��      J2      ��N��qv��D����$   res://Scripts/node_sprite.gd.remap  �b     .       ��x?�u�F�����tK&    res://Scripts/node_sprite.gdc   0(     y      /ش�$��)ۡ�:_$   res://Scripts/wind_arrow.gd.remap   �b     -       ����z@'W��r&�   res://Scripts/wind_arrow.gdc�@     X      �s�Q���`�A�    res://Sprites/arrow.png.import  �C     �      �.� ������iB�T(   res://Sprites/arrow_diagonal.png.import �F     �      H+\�0�u�66����    res://Sprites/cursor.png.import  J     �      �^�����B*�s��r    res://Sprites/node.png.import   M     �      M+�c5-a�G��CE�`t   res://UI/map_mode_group.tres�O     6       ������U�\��H��$   res://UI/map_size_buttongroup.tres  �O     6       ������U�\��H��   res://default_env.tres   P     �       um�`�N��<*ỳ�8   res://icon.png   c     v      ge��@o�7�|AZ   res://icon.png.import   �^     �      �����%��(#AB�   res://project.binary�p     3      �^H�7ގ���KC�q��        [gd_scene load_steps=10 format=2]

[ext_resource path="res://Scenes/map.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/generate_button.gd" type="Script" id=2]
[ext_resource path="res://Scenes/continent.tscn" type="PackedScene" id=3]
[ext_resource path="res://UI/map_mode_group.tres" type="ButtonGroup" id=4]
[ext_resource path="res://Scripts/Main.gd" type="Script" id=5]
[ext_resource path="res://UI/map_size_buttongroup.tres" type="ButtonGroup" id=6]
[ext_resource path="res://Sprites/cursor.png" type="Texture" id=7]
[ext_resource path="res://Scripts/cursor.gd" type="Script" id=8]
[ext_resource path="res://Scenes/Node_info.tscn" type="PackedScene" id=9]

[node name="Main" type="Node2D"]
script = ExtResource( 5 )

[node name="Map" parent="." instance=ExtResource( 1 )]
position = Vector2( 104, 4 )
continent = ExtResource( 3 )

[node name="UI_container" type="VBoxContainer" parent="."]
margin_right = 101.0
margin_bottom = 446.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="generation_UI" type="VBoxContainer" parent="UI_container"]
margin_right = 101.0
margin_bottom = 132.0

[node name="map_size_label" type="Label" parent="UI_container/generation_UI"]
margin_right = 101.0
margin_bottom = 14.0
text = "Map Size"

[node name="small_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 18.0
margin_right = 101.0
margin_bottom = 38.0
toggle_mode = true
group = ExtResource( 6 )
text = "Small"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="medium_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 42.0
margin_right = 101.0
margin_bottom = 62.0
toggle_mode = true
pressed = true
group = ExtResource( 6 )
text = "Medium"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="large_size_button" type="Button" parent="UI_container/generation_UI"]
margin_top = 66.0
margin_right = 101.0
margin_bottom = 86.0
toggle_mode = true
group = ExtResource( 6 )
text = "Large"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="continents_label" type="Label" parent="UI_container/generation_UI"]
margin_top = 90.0
margin_right = 101.0
margin_bottom = 104.0
text = "Continents"

[node name="continents_box" type="SpinBox" parent="UI_container/generation_UI"]
margin_top = 108.0
margin_right = 101.0
margin_bottom = 132.0
min_value = 2.0
value = 12.0

[node name="generate_button" type="Button" parent="UI_container"]
margin_top = 136.0
margin_right = 101.0
margin_bottom = 156.0
text = "Generate"
script = ExtResource( 2 )

[node name="HSeparator2" type="HSeparator" parent="UI_container"]
margin_top = 160.0
margin_right = 101.0
margin_bottom = 164.0

[node name="map_settings" type="VBoxContainer" parent="UI_container"]
margin_top = 168.0
margin_right = 101.0
margin_bottom = 568.0

[node name="adjustment_label" type="Label" parent="UI_container/map_settings"]
margin_right = 101.0
margin_bottom = 14.0
text = "Adjust"

[node name="smooth_button" type="Button" parent="UI_container/map_settings"]
margin_top = 18.0
margin_right = 101.0
margin_bottom = 38.0
text = "Erode"
script = ExtResource( 2 )

[node name="smooth_ele_button" type="Button" parent="UI_container/map_settings"]
margin_top = 42.0
margin_right = 101.0
margin_bottom = 62.0
text = "Smooth"
script = ExtResource( 2 )

[node name="water_erosion_button" type="Button" parent="UI_container/map_settings"]
margin_top = 66.0
margin_right = 101.0
margin_bottom = 86.0
text = "Sea Erode"
script = ExtResource( 2 )

[node name="settings_label" type="Label" parent="UI_container/map_settings"]
margin_top = 90.0
margin_right = 101.0
margin_bottom = 104.0
text = "Settings"

[node name="Sea_level_label" type="Label" parent="UI_container/map_settings"]
margin_top = 108.0
margin_right = 101.0
margin_bottom = 122.0
text = "Sea Level"

[node name="sea_level_box" type="SpinBox" parent="UI_container/map_settings"]
margin_top = 126.0
margin_right = 101.0
margin_bottom = 150.0
min_value = 2.0
value = 9.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="apply_settings_button" type="Button" parent="UI_container/map_settings"]
margin_top = 154.0
margin_right = 101.0
margin_bottom = 174.0
toggle_mode = true
group = ExtResource( 4 )
text = "Apply"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSeparator" type="HSeparator" parent="UI_container/map_settings"]
margin_top = 178.0
margin_right = 101.0
margin_bottom = 182.0

[node name="modes_label" type="Label" parent="UI_container/map_settings"]
margin_top = 186.0
margin_right = 101.0
margin_bottom = 200.0
text = "Map Modes"

[node name="Continent_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 204.0
margin_right = 101.0
margin_bottom = 224.0
toggle_mode = true
pressed = true
group = ExtResource( 4 )
text = "Continent"

[node name="Conflict_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 228.0
margin_right = 101.0
margin_bottom = 248.0
toggle_mode = true
group = ExtResource( 4 )
text = "Conflict"

[node name="Elevation_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 252.0
margin_right = 101.0
margin_bottom = 272.0
toggle_mode = true
group = ExtResource( 4 )
text = "Elevation"

[node name="Sea_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 276.0
margin_right = 101.0
margin_bottom = 296.0
toggle_mode = true
group = ExtResource( 4 )
text = "Sea"

[node name="Rainfall_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 300.0
margin_right = 101.0
margin_bottom = 320.0
toggle_mode = true
group = ExtResource( 4 )
text = "Rainfall"

[node name="Temperature_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 324.0
margin_right = 101.0
margin_bottom = 344.0
toggle_mode = true
group = ExtResource( 4 )
text = "Temperature"

[node name="Climate_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 348.0
margin_right = 101.0
margin_bottom = 368.0
toggle_mode = true
group = ExtResource( 4 )
text = "Climate"

[node name="HSeparator2" type="HSeparator" parent="UI_container/map_settings"]
margin_top = 372.0
margin_right = 101.0
margin_bottom = 376.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Wind_mode_button" type="Button" parent="UI_container/map_settings"]
margin_top = 380.0
margin_right = 101.0
margin_bottom = 400.0
toggle_mode = true
text = "Show Wind"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="cursor" type="Sprite" parent="."]
modulate = Color( 1, 0, 0, 1 )
position = Vector2( 346, 314 )
texture = ExtResource( 7 )
script = ExtResource( 8 )

[node name="Camera2D" type="Camera2D" parent="cursor"]

[node name="Node_info" parent="." instance=ExtResource( 9 )]
visible = false
margin_left = 1.37234
margin_top = 459.949
margin_right = 99.3723
margin_bottom = 597.949
[connection signal="map_generated" from="Map" to="cursor" method="_on_Map_map_generated"]
[connection signal="map_generated" from="Map" to="UI_container/generate_button" method="_on_Map_map_generated"]
[connection signal="map_generated" from="Map" to="Node_info" method="_on_Map_map_generated"]
[connection signal="pressed" from="UI_container/generation_UI/small_size_button" to="Map" method="_on_size_button_pressed" binds= [ "small" ]]
[connection signal="pressed" from="UI_container/generation_UI/medium_size_button" to="Map" method="_on_size_button_pressed" binds= [ "medium" ]]
[connection signal="pressed" from="UI_container/generation_UI/large_size_button" to="Map" method="_on_size_button_pressed" binds= [ "large" ]]
[connection signal="pressed" from="UI_container/generate_button" to="Map" method="_on_generate_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/smooth_button" to="Map" method="_on_smooth_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/smooth_ele_button" to="Map" method="_on_smooth_ele_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/water_erosion_button" to="Map" method="_on_water_erosion_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/apply_settings_button" to="Map" method="_on_apply_settings_button_pressed"]
[connection signal="pressed" from="UI_container/map_settings/Continent_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "continent" ]]
[connection signal="pressed" from="UI_container/map_settings/Conflict_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "continentconflict" ]]
[connection signal="pressed" from="UI_container/map_settings/Elevation_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "elevation" ]]
[connection signal="pressed" from="UI_container/map_settings/Sea_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "sea" ]]
[connection signal="pressed" from="UI_container/map_settings/Rainfall_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "rainfall" ]]
[connection signal="pressed" from="UI_container/map_settings/Temperature_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "temperature" ]]
[connection signal="pressed" from="UI_container/map_settings/Climate_mode_button" to="Map" method="_on_color_mode_button_pressed" binds= [ "climate" ]]
[connection signal="pressed" from="UI_container/map_settings/Wind_mode_button" to="Map" method="_on_Wind_mode_button_pressed"]
[connection signal="node_info" from="cursor" to="Node_info" method="_on_cursor_node_info"]
[gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Node_info.gd" type="Script" id=1]

[node name="Node_info" type="VBoxContainer"]
margin_left = 2.00259
margin_top = 526.755
margin_right = 65.0026
margin_bottom = 594.755
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="node_info_label" type="Label" parent="."]
margin_right = 98.0
margin_bottom = 14.0
text = "Node Info"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSeparator" type="HSeparator" parent="."]
margin_top = 18.0
margin_right = 98.0
margin_bottom = 22.0

[node name="climate_label" type="Label" parent="."]
margin_top = 26.0
margin_right = 98.0
margin_bottom = 40.0
text = "Climate:"
align = 1

[node name="climate_text" type="Label" parent="."]
margin_top = 44.0
margin_right = 98.0
margin_bottom = 58.0
text = "asd"
align = 1

[node name="HSeparator2" type="HSeparator" parent="."]
margin_top = 62.0
margin_right = 98.0
margin_bottom = 66.0

[node name="nodeheight" type="HBoxContainer" parent="."]
margin_top = 70.0
margin_right = 98.0
margin_bottom = 84.0

[node name="height_label" type="Label" parent="nodeheight"]
margin_right = 46.0
margin_bottom = 14.0
text = "Height:"

[node name="height_number" type="Label" parent="nodeheight"]
margin_left = 50.0
margin_right = 58.0
margin_bottom = 14.0
text = "0"

[node name="nodetemperature" type="HBoxContainer" parent="."]
margin_top = 88.0
margin_right = 98.0
margin_bottom = 102.0

[node name="temperature_label" type="Label" parent="nodetemperature"]
margin_right = 86.0
margin_bottom = 14.0
text = "Temperature:"

[node name="temperature_number" type="Label" parent="nodetemperature"]
margin_left = 90.0
margin_right = 98.0
margin_bottom = 14.0
text = "0"

[node name="noderainfall" type="HBoxContainer" parent="."]
margin_top = 106.0
margin_right = 98.0
margin_bottom = 120.0

[node name="rainfall_label" type="Label" parent="noderainfall"]
margin_right = 50.0
margin_bottom = 14.0
text = "Rainfall:"

[node name="rainfall_number" type="Label" parent="noderainfall"]
margin_left = 54.0
margin_right = 62.0
margin_bottom = 14.0
text = "0"

[node name="nodeXY" type="HBoxContainer" parent="."]
margin_top = 124.0
margin_right = 98.0
margin_bottom = 138.0

[node name="x_label" type="Label" parent="nodeXY"]
margin_right = 12.0
margin_bottom = 14.0
text = "X:"

[node name="x_number" type="Label" parent="nodeXY"]
margin_left = 16.0
margin_right = 24.0
margin_bottom = 14.0
text = "0"

[node name="y_label" type="Label" parent="nodeXY"]
margin_left = 28.0
margin_right = 39.0
margin_bottom = 14.0
text = "Y:"

[node name="y_number" type="Label" parent="nodeXY"]
margin_left = 43.0
margin_right = 51.0
margin_bottom = 14.0
text = "0"
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/continent.gd" type="Script" id=1]

[node name="continent" type="Node"]
script = ExtResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Map.gd" type="Script" id=1]
[ext_resource path="res://Scenes/node.tscn" type="PackedScene" id=2]

[node name="Map" type="Node2D"]
script = ExtResource( 1 )
node = ExtResource( 2 )
        [gd_scene load_steps=8 format=2]

[ext_resource path="res://Sprites/node.png" type="Texture" id=1]
[ext_resource path="res://Scripts/node.gd" type="Script" id=2]
[ext_resource path="res://Sprites/arrow.png" type="Texture" id=3]
[ext_resource path="res://Scripts/wind_arrow.gd" type="Script" id=4]
[ext_resource path="res://Sprites/arrow_diagonal.png" type="Texture" id=5]
[ext_resource path="res://Scripts/node_sprite.gd" type="Script" id=6]
[ext_resource path="res://Scripts/elevation_shadow.gd" type="Script" id=7]

[node name="node" type="Sprite"]
scale = Vector2( 4, 4 )
script = ExtResource( 2 )

[node name="node_sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
script = ExtResource( 6 )

[node name="wind_arrow" type="Sprite" parent="."]
visible = false
rotation = -4.46638e-06
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 5 )
script = ExtResource( 4 )
arrow = ExtResource( 3 )
diagonal_arrow = ExtResource( 5 )

[node name="elevation_shadow" type="Sprite" parent="."]
self_modulate = Color( 0, 0, 0, 1 )
position = Vector2( 0.2, 0.2 )
scale = Vector2( 1.25, 1.25 )
z_index = -1
texture = ExtResource( 1 )
script = ExtResource( 7 )

[node name="overlay_shadow" type="Sprite" parent="."]
self_modulate = Color( 0, 0, 0, 0 )
z_index = 1
texture = ExtResource( 1 )
       GDST  x          �  PNG �PNG

   IHDR    x   �IA(   sRGB ���    IDATx���{`S�����9M�Z(w�M--Z���)�P�)��^�1����N�8uS܆�sN���YYU�m���@��R(���&�����дiҒ�4������9i?�|.F��gZN2��T-���SVz�$E~�a�{�$�ۿ_G�����)Y�,�gy��ԬE+�1���n�;,KR�V񒤣���\���I��U����%I_�Q��L�4�ct9�}�X���e�~ѥ��޷W�e���K�t��������朳����E�ٱ�F�ax��ڸi���/������򕗿��֯�*9p@;w��y�@�=ztS�6m�n}v�2�4նm�IHP�Nu��Amظ����_��קO�\N�~ܺM��p8t޹��f�:>��g�Yl3�;�}�v�>,I��k�s~r�V�w�JKK������ m�q������|յ��M�O�����Cڴ��:Փ��|�/О�m>��8{�
vjo~���|N��������ـ��ްQ��}��n�����>�p�bc����Y���~6�+�����?v�L��ZH�;*�}�lY'I��n�V�����j���������~6\�6�O���C�j�*A{�st��!%�类=S$�R~�*ޗ��Kj��-*޵�����`S��s��9>I�w������[����?�����$Ɍ1uƈ���f��y��x���׿#���9��y����߬Ms��&�}�m��,�ґ��m�z����!I�6���      ��>}eF:     p�     �	!     @B"     �&�4cH     �T���UY������Tq��ejӶM+M�c�F���
     �V���-.�b[��W��<ǒ     �a�S"���W�0��/�V��~�*IR���pa����KY���     �a8�9ڴn%W�T-�V�3οHg���o+��c�ڴ�_�     �eF�n�a���j-���Bw��������4j�E�UtD����}��D����F��Hק_���R�֕q���2���:��fey�$�{�:�QO��]g��+kV?��Y��    �Ͳ,���h���x�`�ɀ��N/�իW���uN��k�SϹ@�vXZ��L�����gW�Q-�k�e;,�z�jע����ӕ�Q�᝕�le)���*��շoZ]CR_�͞�3I0k&�{    @����_+W|Y#P�X��K���?��s"���R�%Ir�kϤT��0\*s�j�0���fg�����v��fΔ��+���)�ھu1hii�JDH�22������    �)��g@�g"�$�$i�YtUb�Nk�Rm�b�6.V��o��s5�����;�'�^�te����4��^����y�	d+++Mi�y��Y�We\��^��.��]�O�q�jt�r\�Y��K�C�1Ci3gU�#K�fek��4@�uUƘ�NPm��W�1z�    h��&��;Y`�q�Z�޻j�T�Sک�)��:Ʃ�ｫ8ׁ:V�WiiY ���t]�7]�����R�O�3t]��J{�bl���ʾ��x�,e���,�j��{�Oe�LxIWzz��Yo+C��)!�2�-�gTN��Y���޲d��^C���W�4�>�x�    �PD��{��Z5�ݭn�JHk���.�X�r��v�K��һ?��\�=O@F�2���WRZ_O�|������t�W����Ќ��������le������Θ�����ʞ5KY�2f�Tڌ�Qs�u�>ݯR4��2����U�}0���Yv��    hҽ�<�^��:�ל�T�D@\�]��$��K�yԥM��Q�zwT�6-��w@����?IR�ؘ�V������V~�kӥ��O�� ��!�4+�x��5K��-Y�z��
1KR�*�J��W�
`�    �G�9j�@0T��_T�oܣoܣQ?I��i]�<k��g��%i]4�'Iv�������V隩�fJ�� }Ӕ�1S3���7Mi��e�feT�!Pk�iJ˚�Y�P�Y�HR_͘����͔ү�� ;KY}�*M���>6������S������b]A    @5�M�d@��}�FC�K�����yzc�v.u�p�K��ܮ�����c.�&}���u����M�+��:����5S��Z?Sٕ����P���������J�'��:���>C3��k�=�gh�fz&��u<YQu���+=���~��U�f�0�      �8���j��20`�����H=�Lkӆ�~w:g��m��~�����[�Sd�H��L�d9��>v@�r�뛵��}�G��/�4h     P)}��Q��&��a���߬�$Ui��=�M��;    ���NC��X�j��t�>�Vͤ��>��     �Q��     ��ҧo�&     эD      M�      �     4!$     hBH     Є�     �	qH��ѣ#�_͚5�/��'�|R�7o�t8!�^B^�C �D%�%�-����[��o�k�u���!���6�偮_����-t}���[�v�=�����o����������oy��~����@��]9�oy��"��*Ueff��r馛nҡC��������)!!!,Ƀ��$M�<Y}���ѣG�n�:͙3'��    �������Q?�����xm?�󔗗�����3u�Tj�ĉ���W�>}dY����4a��    ���g"�믿ְa�j$�����?:����mC��5�\��]�*??_�?��6l� �ӻ��'��-�ܢ�;j�ʕ�;w��N��`N;�4���[*))QII�rss����LM�6M��ْ�GyD��ɒ<C���z)�;V�G��aZ�b��ϟ�����F     4>'ܼy�խ[7{[���զM��x�gڿ�����[oպu�4i�$��믿^����t��w+55U���SPP�s�=�N�?��c?~�Ə�o��V_~��]v�EiȐ!z��u�=��SNѸq��T/     ���D�a���4l�0{��_�O>�D��}�ڵk�����jŊ�ٳ�W�{ｧ��\�����������kf��>|��|�I��ӧNO��3�РA�4��	F��E�)''G{��Ւ%K��    �����?��S:T�a�02D��y��:u꤇zH�����x�	9ޣ


������ڵk���^�ZS�LѡC����Ok�С~�7C�&MRFF�
��ݺu�]wݥ��Leff��T���    @S�s� I���Ӿ}�t�Yg��vk���5V�<�����GQ�v�4k�,�r�0��[��7�]�v���ׄ	t�7��>�u�K/�T-[���ŋk�󩧞ҪU���    ����D���0l�0��e˖��'55U����}�v��ѣFy�.]����K�,���_�����t饗�Z��n�I�ӟjL>�k�.���K_|�E�� MՏ�E~˯y�u���i����oyl�G���=����pv��g
�p��%������o��-�lq����W8=�+��G��uh�$}��:��s���b7�۷o���������.�Q>z�hu��]=z���_�O?��g=			���զMu��A#G�Ժu�j���o�ƍ�����([�x�F��A��C�JMM����=U     ��=:��k�j�Ν�v�_�p��L���Ç�瞫1��g�}�G}T�۷׿��o-Y��g=n�[#F�ФI�T^^��k��/�K���9R���m��w�
��_*..N'NT���UTT�E��{�     4	5�G��z�������5k���ꫯ��W_ُ���j��7lؠw����J�$�M�Vky�����
��-[����     4U~�     �ƅD      M��9�U�;?     �,z     Є8$ɲ,��n�fY��Uj[9 �=.X�a��8�0d�LӴo'Z? 4cR���!���Q�9Kn�[~ߕ��z| sW�u<���=����ś�?9-1�� ��g���r9�N�\.;P�zC�_Y��ژ�ް�^f���bcc%I111''H     B�N8�N9b��C�^��nU6�}���iD������ C�a�*.�-��T�a�     D;�r��!��J��{��5�3~=ڶ���{����<�     ���Ѐ��r��]5�4�F�/5��!����$�u�:���!     �2%ٓ��n�-��j�E�������޵>>կ���?�"     �ݿݲ,���&n�.�4~�8%�>Uǎ�jÆMz���akDWo����nx*%	     �Z^���\@��qǭڿ����Z�n�޽O��s#�z�!<���\	�     @t��.ԟ��:�������PI���ʷ�^}�E�yj���n��wORa�~���j�ZW��v��c�N��U�����:��t��KչsG���oh�[j�?]�I hJ�r~P��]�������6������`���{� ����"��=�$u�R���%���`����`� ��{���s��Y&I7�t����r�6m�AS�������z^���<�[n��}LQq�����m�ި����U_��C�|��&!     �Bf��������7���/�@?r���O�*���.ז�[u��A-]�\-Z4W�?k��\�h��Ou�)��c��oЦ��u��!�Z�Zݺu����R��Cy     Z�Jk֬Ӄ�f��ՌY�����/V��������J%I{���h��~ܱc���:���V||k��W�      �fa�`Y���v��<��_�k����Sug���'�.��ƶ��wL�U-[�ԓ�?���0׫�z��z>$     ��}��q��o�:�:��O�ҥ˵sg��ZŅ(2     �����Z���'Z�r8v�E����=���?��C��������|��o��%��*�^��ǡ@�     @4sH�a�*ޡi��n�s���F��neee���U����� ۤ�=Co�!C/��/-T�d?��z���D�5     ����iuO�Ç�mB��&j�����yjժ���B3<ὄ��� �h�@��	��p���p���Ѱ�4e=;���1)s�����v��}���`�>
����^}��� �0$�
�荏e�     ��%�Ű     @������=�h������k�u�     �"I2MS111�i�4M�����7E���o�LӔ*��i���    ;�p8TZV�����nO�u|�|/��O#b�� �vO"���D��D      *ى���X9�N9�ϫG�T�W���hS�������*&���$     Q�NH�Ʈ��eY>�'��T��D���:�r^ �b��     @4r� �TZ�6�:������np���u|	t��S��@4����L�[�cS^(�P����@��v��r��t:�r��9j���Rۧ���W�p8<,    E�T^^.��)w�����O�Z�U�m<_sz%L�T��N��      �:v"���L�q�t�P���w��Y&�}s�<�!�Nl*��bcc�L����,�����T|�6:xdI     @T��v��}����ʲ<+Xn)�l�S	Xn��t��U��c��^�E}���>    @41%O���-Kґ��U^�>S�ɺ4H%�d��ZƵTV�:����`�}m��]:r��,���     D�${�@C�q�ui��ۿGeee:��~*..�*k֬��g�U���Ծ]'U���.�W.�g�12��~$��W�אQ��     4tv���-�8� �K;wݺ��暫��+����K�m�V�o�N11��:j;�QGL�)�˩��3@���"��$��     Q�� �b@�?q��Ït�c�ꫯym�q�/���%p� ���N�[�M� �4����fΘ��G�J��"���Ӻ�Qڵ+O���UI���]�KW^1F�V}���y��LK��X]:w��yÍ�>}�N?�t�ܙ�G~���%��{�*)�����u����iӦ:?��U�  ������~˓���/�|���1)s��7�u�������0�oy���ܕ9��>�g~�];����/��h����?��O��/�V���u?/I��V;vTJJ��=))I:v��6{NP���k��5�^��ү���)-�tM{����������ґ����w覛o�:^��|�W6�=�=Ƀ�=>[���~zιZ�j�^|�M�m�n�x��?o����O=��ϐӬ~���     ���Ͼrb��G�n�䈉��E�꺱����o�^o����S����&�}Y�7��ݻ4��W4z�(���1W�o{U?��M�7��W^y��xI2cbj}lV��y���˯��5kU\\��/��V�Z驧���h߾"��o���3ϴ��	�㷚ϻrA     ��w"@��`�-Z�k�#��� 3�J-y7S�Q9ٟg������ӿ���mڙ�M/��y%%u��{����r��;rvx/I�a��جv>Iھm�����c�����U�U�Vq�[I@$     ѫ�����4M�رS�
t��Ar���i�:t�����4M�u�=Z���:*���ʼ���^�u��8..���.��~\9i�eY^1U?&�     D3{Հʆm}&������k��iz;�{|}���nݦ>���|T�Oy^^�z��e?>�Sj�Sم_��9�֭���ɽ���_���m�A     �����=�r�d��_��G6l��<�L�Z��=�${�W^��n��F]v٥�޽��9�l]z������u�M�TJJo��|�ƍ���x��L����qcթSG�}�Ot�-7���x<U��^���F�     @4��P�������_��l��è�#�?V||��?�:u���B-���.����PJj��]�

�h��ҳ��X���+<�ؓz������k۶�����_^��9w��c* U�1���-ɮ��93Y      ����iul�����ڳ��n�!�1���F|}Ԗ8��Tmۑ�6m�(1����u�^B^H��h�ut�:�����{��@�@/�|���}����׭���U�r������h��>���7���8�oyl�G���f�~>i迿�~$�ϯ��c�����P�騶[S���;P�Z    m�V�a2C1_C�j2�fc�4�     ��e�0MS�i�YlsYV�����T���h��<_�Y1/�I2     �R�$|���TZV*�r�r[r[n����%7������G�ی�ƿizz4k�\G�}�     �6ɳ|^���U�o�:��*��x��$@ChƇ�Q�*�_M���}�j޼��D!     ��!I�C-Z�Б���ak��������~]�k���vׯ����U�V&�7o��-[��>�"     ���d7t�n���7�O��d��kY�����7     ���z��VJrO��n�V�7@U'ڨ�T2�D'��u\�^f�'|/!/$� @C�:����n���:Ł�]���/x�oy��~�=��[�jW������~�Qx���@����Cx����p�H���~�|L���~И���"��G���<=�n�����t:�r����j6����6<�WYe����XIb�     @ԱN�S����Ю�,�۞
������_��{�{� I�i��d���R�A"     u�D���R�Ğ*)�ϪU�V[5�m��ڽw+s     ���Ѐ��r��]5�4�F�/5��!����$�u�:UN�    @4qH�'t��r[4p+UOT^��&S    ��3+�X�%Uܬ������Ni���U�>     D#{�����i�E#h;[��4�'    h��f�W����t�y�|���ܹ�

�j�7���-��W�xQO��_�z���7��Uפ.�u�ҵ�ڶm#I*..��i3u��a]y��>r��з�|���������? @�Z7�:��^G;���:ǁ�y�}���`�� ���|nap�/hG��    IDAT�y�n�~�V���[�cv��
�>Ѵ��@�߿�{f�-��$���z'��S:޸���z������u��hC�F�<����t��]���f�A�,�6�fegoԝ��O����6mڬ;s�:���~����'F�<����覫ӯ�s"!     �Bf�aW/I�ﺳ�oЦ��u��!�Z�Zݺu�:���ͪ�/˲tʩ=�i�fY��M�6�Sz��9L���v��Ua�>}�t���ـ�='     �P��'Sǎ4��딒�[��e�^y	�l�����`�8G9�wh��s����.�ڵ�&�q�&�q��-\�     �V'g� ����I��]�֓�?��Ķ�6}��~eee^�_|�M��4��!ڹ3W/����0�{���n������C"     ��w	���S����sg��uO
��֭��q�{Ҟ={����w�G�n�z�7�
    ��wRzĘ���r��*//WQQ���O��m9��!vv<>zlٲU��{IRI�����Z����އ�8�mߞ��lS��6j���o��oH�=     ��!y��K��?�������U���?�?����x�xz�^~i�z�$W;�w<�N�I{�j���$I�/�q7��ʕ����oԲe�x��j�.Q��%z/siȟO���    �hb��~��=��>��	I:p �����տ��Џ[�J�RR���C��[}�bHHHT�<�j�Jqqq!�󽄼�� M�up#-��6d�����o���Nv�u�����zǄ�����G��;6���nL����^罱����!��O���������5X�����#�/h�dY�?�o��}����;Y���͚i��K�n����Eo     @Բ�{{�_�In�YW\u�\.�֭�����ܘ-�     ��=G�ݸ��PECI��Ïzpڌ�v����k�u�     �"I2MS111�i�4M��n�S���C �,���0��)U\+�4�    @d'�J�J� ���)��ϒ�Ų�iD] $���I�����p�     D%;+�ө#��y��j�
�Wm�v��ݿzYe�$66�D      *ى ���u8�,�g�D��J��8~_�U�`V�      �F�d�111�y  h$�c�������"���n��(�{��H���:ݱ�Q$h�vl��[޳O���9������/��������@�������p���>�    �	�x"�Y�fZ�`�RRR"
     ����Ƅ��p�8p�TTT�+Vh��A���+�����������     ������8=��S*,,�c�=������K�:u
�d����*mٲ��VVV�	&]w01     �T�H\s�5jٲ�fϞ���2IRVV����$y&���[5|�pI�|��_�^ 33S�g���7߬��$m߾]���������O�cǎz衇�r�t��M�<Y����6m�����Qi�ر=z��Њ+4�|����p}�����߮=z������O��k����    5�8p�>��#;	P�UW]���?_<��x�]xᅺ��K���������j	***ҤI�$I<��$�'�����5y��Z��I�袋4d�=��ú�{t�)�hܸqA�p��ꫯ���7߬���wZ�f��+    @���ҥ�rssk=`Ȑ!z����s�N�ܹS���.��b�}���i���*))�ҥK���\����1z�h-Z�H999ڻw��,Y���C����r�t��amٲE�֭�w�     4t>'����K�.]���o?���W�nݼ�ٵk�}��ѣjѢE��WG�n�t�]w鮻�5�����/���V������Sk׮�w� ��
v���D�����Qx���@�]8������X�8���+�矻2�I��l���?�p����{�NR$�%��+��W ����?G��w��_�������D��={Եk�Z�,K�a؏�ޯ�t:��_�a詧�ҪU�N�x_���hݺu���+5s�L���;z�7�U     ]���W��ȑ#�p��,���<�DA׮]�zbY�L��i�e׮]�ի���ʼn��PTT��j޼y��+��    ���Fk8##C�i�'�PJJ����Թsg:T��t�R]v�e�ѣ�z���/�\˗/��	���t���+..N�ڵ;��/^�Q�FiРA�С�RSS5p����U�V:t�ڵk���x%''kϞ='     Y���KJJt�}�iܸq��o���D;vL[�l�g�}��?�X�۷��O?-ɳT߇~X�>��s�2e�F�����r�-���/�T\\�&N����۫��H�-:�&O��#F�+lٲE���     �������ӳ�>�� ˲��o��7��Y>z�h�����^�֯_���c�!I˖-Ӳe�B����}�    @c�`}     UH     Є���i����:�M�{	y� ""���Nol�G����u��O �^;�H_�p�?���]��<��;���=����?����`�v��o��:�4��/�4��_�z�>F�      �     4!$     hB��,ؽG{��!C�aD*���,K�,u��N��t�t8     D�W"`���r����pHj\� ɒ���޽�I     �,�D�!C�C1��F��dI���]�    ���#�3�htI Iϩ�y     �>���ϴR{{���^���5kQ14��q�\*+;��~����{	y� ""��1n��:���>��~�~�@���[h�@�/P����}"���+�?�|"���c�P�\���G:     ¢^�r���n�s��ںu��=%%Y7��~��T�*ך����櫨�8��ө�����t��ݻwk˖-�	    ���s���/�q7� ��]��ʫFk��tה��}�7]m۴ѝwOi�ᖐ���n��3YbL�&L���m�F:,     B�Ή����l=���>'ۛ�����k����ڵ+O�g��3��4�p���     ���s"������݊��	�o���woaP��L����ݻw����z�n��D    @x����-[h̘�Z�hI���7�|So��f��      �B�j�i����{���C.]ʪ    @��G�a�g��n�Z��v�,�
U�  �����z�렇���n�^?���Z�~�ʜ�����.��'ү����/$� �04��I��E��v����BQ-     ��$~5�6�yV?����(11QJ�l/).ё#GBq������5x�`�e+V��?��     ��D��їI��>;�k����룏>�)�*##C]�t��r��m۔����     �z'F]vu��E���r-X�@<��ڶm+I:p���ϟ/����     ����8��_~Y.��NG:,     B*d�4۷o��o�-IڲeK��     �bccIT��_F:     D   j��q�u�	�Ny�u��]�=���:�M]������3�oy���|FZ���@�}~��@t�#��,I�,Y
'|<�ɪx�     4M^=,YUf�7"N8y��%w�     b�;��޽�U^�a4�D�eyz:t��>ҡ     1^���]:�s�N��     ��x     �X8$O�y��m�,���z':�^�&�;����3C�a�4M��؆O     ?�$��n�����t��r�ɀJ���ʢM��|��}�2�4�p8+I���99A    "v"��t��<A��R�v��e��aʒ��j����<��o��O�+�K4*�J��K�6�-C_�n���:��9K�0���v�_ց����w�u�ý�;��t}���	$��������3�oyl�G�:^������z�дى �˥Ğ�:�h-k�,W��r�r��*wz������V�\����5�jw��&�=#&V�����|5�%)�s��n�Z�C     D���f�T��Y�C�}K�%YF���(�`�0��*�=�"���J���r��n?G    �0�����1�*?z@�\�<� V�@ ߷PX��JM������s�2��,�ʏ�;&���    h����eIf�T^.˲�F~�����u՘Q�?��ǷVqq����z�o��oȍkK�Q^.�1:N     ��JX2=I��s[�l��>����+ҟ��ڻ�PݻwS����3�}m��    �j�xgY�=)`�\v�H5o�\�3Oee��7n�A��}ު�+��\�G�a�������3TVV&It�y�|���ܹ�

�j�7���-��W�xQO��_�z���7���!     �rIvܒ%�����瞭�?�B�y_���$iР�4���������ѣ�<�v]�~���F�$���X_y]y��5��Ѻy���CǗh�cҭzwq�rw��u��!�>z     ��w� +<=:uꤼ]�����������{i��\I҇K�kܸ����oI���o�[�j��]|�W�_�X�oV}�����
���`ׁ�:���c�:� �%���H��n���WC�����H������Ѡ������p�~�}���������h����ԧ�]�h��h��?�JC�c�w�uJI�����2M�����;���F     ��I�P��P�:u��#���ah޳�w��Wc����]�֓�?��Ķ�6}�W�eee���     �,f�]��f�Z�s95�&�)?�z��&���u���|��.]��;s�*.\a    Ш8�N�D�%��d>��%ﾯ��=���:��SԢEu��^�����b����P#Fӹ?��ڵK�iɧh��s��b%'���Ķ��!���(���,H�     @�rH���6˭P�?p����c�6}����;զM�+��m���+*Ol���ߨe����ծ]���K�^�R�������k����K�;%�Z̖�҇�r�w��     Q�{���O��0�~߾����g�a���>�����������j���ڏo�q�ߺB�J�     ���0Cr�K2��V�kDo     @��N��$�rW����K�ka�s�B���2'����l�����7 Ԧ��4���4��O��½�}�5���������`u��9Ð\�2��CE���o�ᦠjg��_Ðe�2�<ר�z    e�d��bbb��լ{����Y*��)�Y*����*��;�x�hKPѐ��F��FE�!#&VFl3�f2c��Ѿ�t�X1112͓��"     !e'�J�oSs�R�Ď�aJF�,Ө�����$Ul��O�������_-��%Y��G�T���     @T����r:�����r��^��W�)�_Y���ſzw��e�	���X    ��d'$Oc��p_F��m�G*Yp���}W9/�i��    �hCk    �&�!In�[���r:�r�\����� I�	    �"v"��t��\����v�� �"`�ӈ�Dbe2��d���Kv���,!-���+s���=��I� �Ez��h���!�)���;��k��?��{|��O���1KNK�[޳O����u�[���7c�.�K{��h�W��Z�0�7P�#�m��ڽw���    ��P^^.W���P�F�����4d��䶎_'��}�#     X�${� ��-��U��h�����ڻ��U�n�m�����     M�ݿݲ,��V�&n�.�4~�8%�>Uǎ�jÆMz���k(�y���6(77�k{("�     �������wܪ���뾩�U�V���4Y��4��.��%ھ-��A�e�2WB"     ��f�;�O�{��C�Z�JJ����v��e����<5W�^7Fݻ'��p�^�M��o��ƌR�v�ڱc����vU|�o���p�.2X��������K���?��T�o�Nw�=I��r9rT��ታW�|��ܥ�rw�j�˯i��z_0�     �h搎7nOdN��{
u�9g����g��7]�^��={5��k4�_i׮<����:x�n���r�/��cOK�~���?�l=6�������ۿ_�~���g�A��������æ-^q\2b���/i_�>�6�f�<��n�S�z���)I     �Q�=���[����(�[W�����e�V���.ז͞mK�.�EC+㟋�s������>�]w��>���k��ϔ��K��������'^�r���P���e���6�1�u�� PS����N,  �`�~���'��}鿟�=��GӖ����{�I
��U���lT�N�{V�t"��5k���i3t��a͘5]�/�U�����_z�T�TP��k[���ǝ:uО*����K�.u.�M�8���>H     �Y�D�����v��<��_�k��ҫg���鵯$�\�ۼ��X�Q�r_ϣ�8N��    ������ƍ?(�u��؝_�.]:ُ;w*��*�,K�i     �UP=Z�n�>H�񭕘�V�.�H���?uW�Oӽ?�����ǟ��C�ԭ���u������_Թ|���p�Z�h��m���C�     4Mɳ$�T9#~��n�[C��\�o�Qn�[YY�ze�k��Z�`���ϿP�v��5�!I�G}\1`��_~i�&N��#/с��_Ox���L"T^3     �IP�:tH3g<^k�c�{=޳go�m7��Ͳ,����z��w}��<;k�����8���>�     �fv"�0ɲN�C�Ų�     �Z�|���aw��|�ʜ������/�:��j���h����������3�`_߱��[��`>���gL����>��a^P�߱)/��{�I
��=G�ݸ��PESM�h�W\#��    @qH�i�����LS�i��v{���TY:��a2MS��V�ҕ    8)�D���PiY����v�=���Y�X�?����d��=��Ҳ9    ��d'bcc�t:u��>�R�^�ʢM�.�ջ�W/�L���ƒ     D%; y����eO���d�����u\� f��	    �hdO�'      4Z|�    @b��~�����:���zO�ta�ut�DZG<�:����3�@����n�~h��������?��g����DNl�G�:>��ߋ7����좠����gh@�n�Ӑ��Uic���Mڵ��H�    �	�J�Z��ޠ�    @��     4!$     hBH     Є�     �	1]��H�      NG����z�f͚�^ГO>�͛7��s#2���u��6�^'<X�����[����!�����7�?���3i�|"�z�����1)s�� %��Ky/(IIII�<y���飣G�jݺu�3g�,�
P�t�W���WNN��m      2j$�N����BM�8Q����ӧO�� �CW]u��l��w[YY�&L���    @}�H�v�iz뭷TRR������z��;V�G��aZ�b��ϟ���R=���ر�z�!�\.9rD���m������ԴiӔ��-I�����ٳu��7+))I۷o׼y�}�vIR�������FIIIj׮�$i����2e�z���o�]=z������'���^�e     :�H��s�շ�~[c�.�HC���?�#G�����׸q�`�=������O<a7�%����m�ݦg�yF{��ѝwީI�&���$�y�Z�f��O��믿^g�}�]v��꣏>��￯�]��e˖A]     ��.X�@ÇדO>�>}�x��=Z�-RNN���ݫ%K�h���!	�_���6oެ��-]�T���vY�޽�D�ʚ7o.�˥Çk˖-Z�n]H�    �1��X�z��L��C��駟�СC��nݺ鮻�Rff�233����C�!	d׮]���G��E��㼼<�����������/��q������Yg��X     h�j�<���\&LЍ7;�O(    IDATި�>�L�d��z�)�Z�*�8��Z˞}�Y=��c��/~���͝;�.����u����+��̙3��;��7�y|     4���#�fee��K/��ڵK�z��_|�s˲d�f�m��y�f9M�4I�w�Q^TT��*''G�&M"e�s�:� �%����N�u|�u���:������3�oy���:���C�ߟ@�}~�/�`_���(�@?Rp�?��_��_��'"+9-1����]�<��?�>�$��c?HHH��_�6mڨC�9r�ט�ŋkԨQ4h�:t���T8�.���g���kۉشi�^z�%eff��^Ӆ^�V�Zi�Сj׮���㕜��={���9     h켆��n�1B�&MRyy�֮]����/v��_~���8M�8Q�۷WQQ�-Zd�?��s�2e�F�����r�->��ׯ�k�ٳGw�q�$iȐ!�0a�����jĈ�<y�$i˖-���xB    ���+p��!M�6��˖-Ӳe�|��_�^�&M
�m���~ggg{m6l�~�a���K�������+���Ç5}�t��    �����K6o�\�F�Қ5k"     ���͟��g��׿ֵ�^+�˥5k���_�tX     D��HlڴI��sO��      �E��      F��gZ�����������H���� �h��`�	��y���:���@�:��h��?����I���H���6���t<���H��ט�9~���_��G      MI�Kdff*---�a     5III���~�����꫺���eF�O������>;��    ���X5`�ԩ*,,�ĉ�>}�Ȳ�H�     B�F���N;M�~��JJJ����O>�ī|�رz�����oh���j޼�]6d�͛7Oo����͛�3�8��u�6m�h���JMM�ڷO�>Z�x��    @SV#PPP�s�=�������<>�������9Ca' �_�*�M�RDť .P/��і�v��Z��r�jk��n/V���
��J�$���oAY2���r�d9'd2�L���cBf>�|�gN&���w8P��]wݥ[n�E]�v��ѣ���ݻ��O��k�Պ+4a%U�q��ݫ�>�H���~Ȑ!�������"�    �
��g�yFC��C=�^�z�Ć��^{M�ׯWAA����Կ'�|�r���k߾}z���եK�%�v�h��
�$˲t�Ygi�����     ?�0G�'�|�o�Q�\s��N��?��OZ�h�$�cǎ���u��7;ۗ�? ++K�Ǐ�O~�5o�\�Y�E	܎�駟*��SN����O?]��^�Q�ĻN4��h���q�?�������Ͽ��Zg}m~�k����������S��Gjyܴ����sZ~|�?��k�B�$m޼Y<�����:�3�)��GyD~�a���z뭊D"���ժU+M�2�FI�'�j�4h�>��c<X,p.��r    ��\߲_�r���ӝ��7oVvv����cn�z�쩼�<�[�NM�6�qR^Ǚ?�N=�T����SNq�Tg_     �,�мys�}��jѢ�Z�n�aÆiŊN|��ٺ��կ_?�n�Z={�TNN�ߵk�z����L����jԨ�s�,�Z�ٲe�֭[��c�j�ʕ*((�v�     �Y�Ѐh4�s�=W&LP$������O:���{OM�4���㕙����B���kN|�̙���5t�P=���&,�{��衇�<�T�+ছn�ԩSc�ξ     �UL!��~�m�����o����~���|�>�����W�����k|�d����^�    �!�ٴ�      %Q     �G*]>�KaN HE���onN�k�k�`���L8*^�{�~���p���/<꜎���߼^���ϋ��'��D�!0��H�s      u�l��$�9     �:�     �H�۷�PA�n2dF�rJ۶e�V�6�Զ]V��     )b
�e��,KR�*H���

vS     ��U|h�sǐ!˲�,�`˖$E"�$g    @�p�0\@������<     p4,�M���:�^��&�} ���N�xב��d������}�ں��p�w��!��߰z�k�+�x�~���v���=~�PΙg�����';     �Z=�4i���0N��=M�HXy�z]����D�V�u�Q�F�0m۶Mk֬IvJ     Ԫj�����j߾�~{�mz�������4x��D�V��7o�q�ƕL���S˖-��     ��Z���g����l٪�����˳t�yC�[���¿la     ���Z��ƍ�t������vl�D�T�F��=zTx�[�n���+��     �Q�����*_�q�֭۠f͚��Q#��������+���W^y%�i     �p�����<��M�����ܥ���������     Բj�((ة�w���u�%ڼ�}mI��Ļ���:�^�za_ u�N}���GC���/�{m~a\q������x����j�(��Y��駟�v.      ���# ʶ�:�I]~��jٲ���f�s�3W\q����_i������/�\�    ��*t;�����~�����Zw�v���-Jtnuf֬Yj׮]�����{͚5+IY    P��U�f������K�D"=��3�4i�Z�l)I***Ҍ3���     ��Fs4DEEEz�������={��     ��Z=�bݺuz��W%Ik֬Ir6     �>
���{�N    ��� ��Z�:7'�5�:�  ���������������3�j��q��;�i�8�h3:�����fM�k�/f� ۶%ٲe')��)yN���    �?���e��%�HB:�T��lE��     IShӦ�

v+	�0V!��Kz:�i���T     H��B@�vYj�.+Y�     �3�7     �%�t��F��Ͷ+�T���%k���o�l?�0d�L�tnm�    �᳢ш�Ѩ"��B����S(U�B�-�j�^̗��/3MS�e)J��@�$	    @-1z�x�ݹC����e�ԲE;�Ѩ��`�=��Q�:	�� C�a�ڳw�CjԨ�S��[=��J;H�ܜ��o�����:� P�Ў{��\L1#������j?���/[���eϽ�dh@4U8V�.�[�;�G@���X	p-�вe[m+�N�eU�5     ��S�D"�D"
G��4����T|���#������F�<C     �eJr&�F���Q����g3���z�쑐�˟���>�"     ��yp���C ��Z��xR�|�/:�>��vi�uq+{~     HE�L�Tz1]r��Z��s� }���:�쁵޶#y���P     �&��D��޺u�~һ�^x����xe�n���ꔟ�TO�W{�qM�a�V���Ҽ�5k�3�G����~����̳O�Yz�Z�     @*r��*����C���_~�]�vi��:���������G��wݫc�w��_����l�ۧO?�Bg��~�9���/UTTTkϩ�9     �Ĭ�W��x�At����l����[׍�J���S(r�{��w�y�VI҂��4h�Y��yՎ�pw�E��-��A�>���+�tF�iz�����E �y�Ӛ��]G� �m�� Q�Y�]�^?x�3w�{g$�}��^�^��A�*�Mg�&˲���+$I��\�@@g��]�����۷�P۶YG/�r�*����N?�TI�)?;Y��!-��Zy>�     @jKh���C�q��zf�1��3t��]����2؆QqB>�x����-Հ�����uր-}�E"�Z{N     ���ޤf���Mݎ�����K;v9�gf�ҴGб�v�w߭�$ee��J��$�k����wĴ�/k���t�%�P�Nt�'���Q��    �ԕ�U��O?�\[6oUqq�sۺu�>��=w�������Q���ԡC;:DK�}?�w�W�֑���]�/�X�1c��ڵ�i�歵�     �ʔ$�0$�����ߚ�7UN��5o�ە��zs�r���f�M%I�-�@��-W���\��ys���/��Kt�}�d��Zy>eo����3     RIB��W�Oc������+c�W���{�����W^~M��"�*ֲ>��w��     HeN!�0���,ʾ�_��$�4ըQ#�j�R��\��o����b�����     ��r��$�����=Z�l��MU(�G~���jb��Ͱ    �'7'�5>-o�k�k�z����3\�k�]����;^_������>/K*��u.nK{�����壮�+^j׮������W�r��9�9_     �K*�V$Ӕi��F�Gf���x[G��7C�iJ�ϕi��;    P9� ˲t�x��ӛ+��Dm9��ǰ��QI �p/)*�+˲(     R�S�
�B�pWL� �b� �X�)�ſ|w��҂I0�     HIN!@*�ص,��ekzџ�bAM��W�_� ���     �ș,0��      ,��    �G�d'  @�
���5̚\G� ���NLv
	5q����<�e�G7�}������o���q�$ZL!�c�!tR�d�/_��.Lv     �HL!`��"�     4X�     ��P     �G(     �#�e�p      ~a���d�      ꈯ����[?�����T�#^��v��_�_X�� �E^�H{�����5�P���w�?_�x��l^�'�59�ǯ���W�9�̙�ٳg�Y�f6�,K/����̙��d�yl     ����׮]�Tx�o߾ڲeKBJ�    h�*���[C��ܹsc:t��}�]���c��%�\����k�֭z�'�j�*I%��?������զM-[�LӧOW(�2��9�a���k5t�PI�ܹs��/ȶmIR0ԍ7ި������@��ͫp��/�\Ç�az���5c�:tH�ԧO��W�R�Ν�o�>���;z���>�     �s�����o�����;:�eff�E�Z�>v���ݻ��O��k�Պ+4a��W\���_����ٳ�F�������.�g��I�&iҤI:묳t�y�9�K/�T'�p�n��=��C11I8p����K��r��v��ѣG;����7���4v�X�����/\s    ����`�-Z�!C�8��}��z�wd���,_�\���ڷo���}u��%&���kӦMڴi��x�����5��9��A���oh�ƍڸq��x��}��N|���z��׵q�F�_����Ç�k�����׫��@yyy1����)��Ԛ5k�b�
��    ��*-H�5x�`�!�04h� -^���vYYY���;�������eŎ6ؾ}���֭[վ}{Ϥ�{�v��i�֭1��Iжmۘy�n+I;v��7߬9s�hΜ9����պuk'��SOi���z��t�I'y�    @}W��[�lѮ]�t�I')�jݺu��*lw뭷*����V�V�4eʔ��a1����wS�c۶]���B�P��"�H��y�}�ᇕ����jŊ1b������ԋ/��?     �U�� ���!C��0���ەnӳgO��кu�Թs�
�v����/��$u�С»��{˖-1=J',,UPP�v�����ڼy�����t��*�(,,�̙3�~�zM�0�B *���v���6�5ޥW����£�	@��Z��Kh������������s�k4�o������&ǵ?�� IK�.�i����;ι�/o׮]�ի�233u���W�>\�:uR�Νu�h��J�:Ǟ7o��?�|u���i���N|ɒ%���ԩS'u�СB~�g�օ^�~���u���ٳ�rrr$IM�6����ժU+����{��ڱcG�r    ��r���?h���ڸqc�]�gΜ�o�QC���?�^�z��-Z�ɓ'+33SK�,Q^^^��α,X���LM�:UR�r�o����׿��.]�h���ڵk�fΜ�;�É���{jҤ�Ə���L��^s��{�n��IҚ5k�裏V+w     �+���'�={�wm��9s���nS~~~B�o(��1>�) �C&�ƽ�,���sP;���z	��7��  ��w�      �      |�u��x><��    ��D�      |Ē$۶�F��mە��_���^j�_�è��Ða2Mӹմ}���|�uĽ�^��yMF6q�׸�iy���������w�j H�Ɏ�~�Hm�$E�Q��a�B!��aE�QI��U}��X}V�ž��iʲ,�AY��@ ��D    �E�$E"�B!E#���e:� ����2C���_� `����)
�0
    ��������$K�~ث-[7�8T��sUܳ>��C?*l�`���C�.Jo�B���     HI1C�Ѩ֭[�CŇdۇ�
�J3���[vT
��#:t��Z�>�O�>    @*��,Ж����1�N�W����O>��c��g�}^��/ud�Ĩ�˖�	    H5�eY�Ů��q�Y��M�6�:���J۶o՗˿���W����@ �V�6�����ӧϑǌ����Qy���pïu�	}\�5dT��     ���%���m%�IR�����t�{�m޼EcF�Նt��ǫK�.�>eU��mK�u�����+��B��N9�TIR P���֨QP�.�Ce��     HY�� �d�iV>	�͹7�i�f{�5:x�$��?��r�]sS�u�]��+%I�����#N�۶o֘1cu�w��c�iժ����LT~�*���k�ԩ��}���o_��5X۶oֈ_�ԇ~��F�[o�ո���4M͙����8p����1cuG%��6�$���r(�t�=P*�눳N9Ps��ƹ����Py���a3�2��C�iVz;�����_Rqqq��	���??O#F�Ԉ#uш_���:qI���{���L���h��z��4M]4�bIҸ�~���r�<���(��[�i�K/�%�^��F]�a�^�޽��o��t�)�ޣ��������;J�y�%�s�^?;�txN��SC     ���o۶�P `Uz��5[�}�}��K.�D�>��֮�^k�~��{A�_q���������*_��{��/�N����@L���jcܸ��׿>�o�]�m۶i������:��K�_�b�v�ޣ�/ٿl��e���<�Å      R��.`�d�U���$C�2���E6lt���oб�v��~����PӦMb�aVh��cnmt�~��N���N����m�q�{(     RW�9J�З�i�fu�ֵ�x4��oY%5��ۇ�a�~��vٸi��/��[�i��n����Ĵoe1G      ���T��K��+��\ii�+��[�^]�uu�gw����b�ݗۧ�c�m+`YUƫ��w�}�^��R(��œCe�S     �*g�@�H���nO=��,��K/=������E���/�H�@@���,��K���S�z��UW��k���K�����U$9�ׯ_�a�U�-Ծ}�J��j��VW]5F��:uꨓO���;�ܸr(�G      ����|��=E���1����ԓy\���t���\�Js�o�f��j׮�^y�I�/��Y�fǴW2�~l������OS�[W��]�vk��s*����[o.Pzzs�q�$ee��Ν;�̌�
��?Pn������>�S&�A�s(��    ���y��v���ڻw��u���}��j���vmt��S�oX�-Z(###Σ�x���Zi��ܜl׸�:�@*�8b�k�u� @C�=�Β����P���m��w�c�e�     �ƹ�7C�a(`U64��ŀ���aP     �,�G�i�2LS��i�툎���!�.%����<  �IDAT2��sd�&�     @J���	�LY�����u���l;*;j+jG+��:��K��P_0*�W��q���4Kz4j�&�
:�    �TcI%�祥�i�mj��^�葋��� ��2�6�.��	`��
vmUZZ��!     �Ē$˲Ըqc�?�G�|��)�/�-
T�yu$j�����_v��>/�i! --M�s�,����     �N!@�s��F%U�b�����V�n������7     R�3Y` p�/����^�'�P�	�*ۯl� &DC�N��:�����f:@��z�z��  "K��Ѩ"��B����p�R��x��7U�,V�# J�     R�S�B�ij�*[v4�LX�d��}�_�Q�*�<��Ԟ��
rzO     �J�B@8V�.�[��U�>ZnՀ�-�j[�w�     HI1C"��pš 2��!�ȹ���}�<�N�    @*�$9�F�QE��w�{�I'h��˔ٺ��[�N={�Ѓ�O�7߬Q0����{J���V�[�4Pz���L    ���*��n۶t�V�K���f�h��٩'+=����٫�?�L���j�I^s�h-Y��z��5j��=�\���P���s�������iӖ���(9E     @ʲ�ᰤ��Z��:����ɓ�{W�����QA�Nu��Q��d��T�Zj���:�������-��C�M��jǲ,���s����5��Vi��B      5��xW�.��_0Liiizt�c*.I�����뒸a���K4pPI�;�럯�9�z�ŧ���4겑jۮ�6mܤO?��6鷿�I�a���P8Q*��܋O��{�7��8ǻd��;���ӛiU�7zt�c���[���J7�NP8���tǤ��s� ��Zg�k��iy�j3 ���/^�9ٮq��  ��ș#@*_��?;��Z�h�W��χ�g��T�MyX�t�o�S�v���w�8��r�ez≧�k�.�?Vc��R�����M�o=�����??�\�W�k��Æ��A���_�����w�uf�lٺw�Õ�u4J�AA     ��̲wʎ�?�[VV��l�Ze�_�34��Eڴi�6mڬ�i��~1��9o��[����-҂����%����j�?k��zs�-��+m߶C+W��rۚ�     HU
5�֓ +��vl���߾m�ڵo���m۝�<�ƍ�j�K��m�y����B      ���;v*+�M��ڇW"p��<^*T�Y�|�|nn��P�����>�     @*3�7����5x� �.EX޶��ծ]�s�m�6�^�@m۾�@;��4f۶�Hر    ��je�����@ ������=��7n��m2տ�l�ւ�u����б�:tl������Kcޙ�U��2�U���d�R������'�j�F'����ضm���SOV�ƍղe�     ��%�t��J����nQQ�&��}�t�H��w7�E�:t��~��.}_K/U�V�2�NI�[o-�;�;V�c���|���ܹo�y��p�85k�T�}��>��sI������Ѱa稨�H���[�깖)J�     ���y��v�m��?�e�***LvN�Z���S�EM�6U�&Mj�ͷz���v�d�Zg}Z޸:ʤr�3�������y���g;�5�a�M��xy�~�/[���@�x�����G ueϽ��d��aH�]��b��     ��r� f��d3,     ���9���Ҟe��4P�r��9�9_     �K�L�T �LS�i*�����=ly��0��)>W�Y++/    P��B�eY:T�W����FK���Y�c�·Ĩ��d8���eY     )�)�A�B!�?�+�G�T�W�[,Ք��_���Xi�$R     �$� �\�Z�%۶+����E��5�_�~�����OP     �"�{ ~�:��Co��Jt����fM�k�;o�k�x�6 ����o�$E�QE"�B!��a�T+;4@R��     ��
�d�ԺU��hԙ
��!·���� �0M�ٻM��!�A!     �r�B@8V�.�[��s�@��ǆ�p/�вe[m+�N�Ũ
    @��D��+hp����,G΅-E�#��Yb    �bJrV	�F���Q���U������={$,٪�A��O�۱]k����!jG���>7    ����.�mK�on���>��
�]}�8���E���V��Uڴi�s̺8�Qr�     ��e��aI��%� /���V�>�@�}x�lY����9Z��z�8��~�{G�z���Z	�     @j���輻�aW+�ƈ�.��aCd�>��S���,�5N�?����[���m��t�ݿSt�I}t���Զmm�^��ϼ�o�Y���U���ts��#��@wL���{�)��#�f�I%��]~�%8��$�����W�ܞ{�)=:�1��l�ڶk�M7i���k�M�ϝ" ��k��ܜ�ڏw{��:���ƹƃY��:>�T  �?�R�1��sۮ|,����9��z������ԩsG]<�***��}�~g��پ�Y9���/T�o�
���̿��ܛ&iU��{͕�e��)K����'t���&Wz��~~�~v�Ouߔ�uߔ��7�TrVL��}����guk�mڳg�s�j�
    �d��S�n��M�n��7z�ſ9��^ ��v�������7i��]zs�|�=�Tٶ�ŋ��9��4Kf��{�iZ�h�l��ʯVi���j߾�ᇟ�c��U�����?C��^�M�6kӦ�Z0�������뻵�k��"-X�X��]�}     HE�T��G�+�מ۵o�N㯿Z㯿��1���"��N<�}��r�|�I:t�V�ȗ$�i�Z��\��z�Pzz3��Y�1����Z;��p�o߶C�ڷ��f����R��i��R     ����`�����O>��M$��w?P�3���Ͼԙg�hɒ��F%I�O�V�HT=�Ged��mw��[e��}�>�����a8��
�b�/���    ����m���u�6u��Q�P(�Vj���t��'�Y�f:�>Z�x��޽��͛��7�I�&1�ڶ-�4\��m�v�k���o۶����     ��h���iʲ,��N��l���o��s���OQ�V:�{W�z��N|��mڰ~�.�|����[�,���
��{�n��h�s��߶m���SOV�ƍղe�J��`�b�3t�:tl��k�C�x��*s-;	 s     *K*��/��Ű����o����+�-s�H�^���9���\u�Z��О={���y1�X��]���k���%��_���F�����6S=���ğ��L���;GEEE��_�Z��K/U�V�2�NI�[o-�;�{~e�o��+WZ0(=g     ����'ڝ:�я?����;���0�9�k͛ghO�5m�TM�4�ޡ��1�V�!7'�5�N���^��O1�5�h�����Y�]��~�   аdϽ��d��aH�]��f��     ��r� f��d3,     ���9���Ҟe��4P�r��9�9_     �K�L�T �LS�i*��Y��=ly��0��)>W��Е    H�`Y��UzzsE�ђ�}d����1*� ��%��C�{eY�     @Jr
�`P�PH��� U��K5e�����_>VZ0	�     )�)H%��eɶ�J/�kzџ�bAM��W�_� ���     ���� g�q�?-o\B�O������fM���ӗ��k �rs�]�^�_������3^� �aIR4U$Q(R8fh@��C$�L�    @
q
�PHV M�[eˎF�� +"�|h@*�+�Ȫ��Ԟ��
�a     )�)��a��袽��=���|l8�B��-[�ն��dY��     �����HD�H��P�w�_���Ґq�\�R�>r��%    H!�$g��h4���n���sTժ
     �wViw۶�÷���m�.K�\3Z�{t�����j�j����ېJ�O=�     7V8�T�+��P���Z�޽[o�KM�5U��ʎ��l[�����'     U���.��gw���˛��{��wo��l�q�:l����}��^����bIR�3����m�6ھ�@3�yQ�~��N� �I�:����%�}/�>�x�fŵ;�T^�^�_����g��_�_��8b�kH&����N�����M�k �͔�\��u��`�N���+���;]9g��C�Qw�u�:uG��٣�A�7MҪ��5��+�4���    �Tb��S�#�.n/���0�L�u��Խ{����aC4����q�&�ܹKoΛ������W~�J���V����?�D;����    HU�ԕ/�X��o�����R�~���_��{K�I�ڷo���_���_]inmڴ��1�鸞=���L�iVh?Q(     RY�����[���?>�_��L�\:BK��@�d�����O>�پ4��'\�h$����22Z�;n���)     RYݽ���믿Qz�f���[��s�
�B1�RݻwӼy�q�&5i�$)    ���2G@�fMuր~JOo����r�@�����x�M�{��v�)j�*C�v�SO=ى�Q��ݔ��R�3�Ns�G      �YRIW|I�g�O��n4���t͵c�F�re��>�y���^���9���\u�Z��О={���yN��fi���Ѡ�g���T���Iޒ�UJ�     ���y��v�m��?�e�**r_s��7�О�-jڴ��4��a	o�_+� 5�N���#����^W��济��:�^�]GHe^�/���K��x�������^�@Õ=��#��!�v]����l��     ��U�����l�     R�3G�sq[�3���*\�>G1�    �bI�i�
�i�4ME�Q�g��{�:��a2MS:|�L�^��    �Qq
�e�P�^��7W4-��Gfɏa;��. ��<^R8T�W�eQ     �$�
���஘R�^n�TS������c��`0H!     ���B�Tr�kY�lۮ�����*�te���`>A!     �����@�< R��:���ƹ����߰z�k|�앮q�cf�Y�_��>>��#f�ƽ~�{���7��    �G(     �#     �
     ��      |Ĵ,+�9     �:b���d�      �����=��!Gb��c|�S@
��q���:��k��͛\�f�<���k�g/��  ���=�N�     �O(     �#     �
     ��      |�B      >B!      ��� ��L��<��k|��-���3\�k�]�~7}��d�    ĠG      >B!      �     ��P     �G(     �#     �
     ���� ����v�O�s���-��G���5��g������'    �^�G      >B!      �     ��P     �G(     �#�e�p      ~a���d�      ���zn���q�ߥW����\�Voq�w��_�_� �!���v���� ��     ��      |�B      >B!      �     ��P     �G(     �#V� �X};vr��Z��k�K�����uN~�:� �O�|P��#      �     ��P     �G(     �#     �
     ��      |�Jv ��͛\�]zu��L�iy�\����u�	   P=�     �G(     �#     �
     ��      |�B      >B!      ��� ��L1�5nu�߸ڟ��#����¸�o�rs�]�ӗ���L   ��     �G(     �#     �
     ��      |�B      >B!      ��� �w^��{��7�5~����j   @�B�      |�B      >B!      �     ��P     �G(     �#     �+�	 ]nN�k|������g��6�A-�8bF�S    �
=     �
     ��      |�B      >B!      �     ��P     �'�5���$�T������l}|���k|�Hװ>ܼ�5޷c'�|n��q��/   P��#      �     ��P     �G(     �#     �
     ��      |�Jv@C����Ƨ�IB��a������3��   P��     ��P     �G(     �#     �
     �D �     �_�kۚB      ~��Ʋ����mX��5ޥ�c��QCNw��Z�����B�8�M_�>�)    ��0z     �'     �
     ��      |�B      >�͚u     �
     ������.7'�5>-o�k|��>��O9�5>��7\�p7qČd��x_��ɵ�    z     �#     �
     ��      |�B      >B!      �     ��X�N Hu�{g��7�����c����6�0��S��3�������I���d�Ƨ�s�{=�d?? @�~���@"�#      �     ��P     �G(     �#     �
     ��      |�Jv@�y�4���森��ڶq��:���#fĵ����� �O^��rs��� ��#      �     ��P     �G(     �#     �
     ��      |�Jv@���7�5>xd����ߨ�t|�����t��^G�p���� ~��g �D�      |�B      >B!      �     ��P     �G(     �#     �+:����ֽw�k|�앮��#���7��r�9�ᘖ7.����d��Y�  ��17i��     @ah      >B!      �     ��P     �G̃����     ���4V��      u�X�
 ��ZG}��]�#������|ߎ�\�Voq����#f����:�^�/���_��T��   �"�     �G(     �#     �
     ��      |�B      >bF#�d�      �@4�ոI�d��kk�]�5�5~���\�~���D�C���W�^�O��w��x�>   �_7i��      ��B      >B!      �     ��P     �G(     �#     �+�	 ����}\�};vr��Z��k|m~�Q�T�L1#�)    8
�     �G(     �#     �
     ��      |�B      >B!      ��� �h�9ٮ�iy��;���vOuӗ��k���W�^q���.ޯ   �z     �#     �
     ��      |�B      >B!      �     ��X�N H�iy�\���ɮ�Ў{�:���¸�O��#f���]G>���{�>  H�ܜl�x�� �7z     �#     �
     ��      |�B      >B!      �     ��X�N H�x��<��k|��q���Ļβ�M1�5>}��:� P���_���^�����@j�G      >b�_��     @8��H�LKv     �X�4�     �'     �
     ��      |�Jv@�ui��k|���:�$5��d�ƽ�A��  T����K����6z     �#     �
     ��      |�B      >B!      �     ��=�?�Nv     �n����rJA��    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Screenshots/screen1.png"
dest_files=[ "res://.import/screen1.png-1ab61ac1abe53a440c5064fdaffb7850.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSC             e      ���ӄ�   ������������ٶ��   �   ﶶ�   ��ƶ   �������������������¶���   �����������Ķ���   ����������������   �������������ζ�   ����Ӷ��   ������������ڶ��   �����������Ŷ���   ������������ζ��   ������������޶��   ����޶��   �������������¶�   �����¶�   ��������Ӷ��   ���Ӷ���                                           (      )   	   /   
   9      :      @      F      G      M      S      T      Z      c      3YY0�  P�  R�  QV�  .W�  T�  P�  R�  QYY0�  PQV�  .W�  �  �  T�	  YY0�
  PQV�  .W�  �  �  T�	  YY0�  PQV�  .W�  T�  YY0�  PQV�  .W�  T�  �  Y0�  PQV�  W�  �  T�  PQY`         GDSC   \   -   �   =     ���ӄ�   ������������Ҷ��   ����������ض   �����ض�   ���׶���   �������Ӷ���   ���Ӷ���   ��������¶��   ����Ŷ��   �����鄶   �����酶   �����邶   ���������������϶���   ���������Ӷ�   ��Ѷ   ��������������������Ķ��   ����   ���������Ŷ�   ��������ڶ��   ����޶��   �����¶�   �����϶�   ����������Ķ   ������Ķ   ������������ڶ��   ������������ٶ��   �����   ����ﶶ�   ����   �������ٶ���   �����������Ķ���   ���Ҷ���   ���Ҷ���   ������������Ŷ��   ߶��   ����Ӷ��   ܶ��   ��������ض��   ����������Ӷ   �������Ӷ���   �������Ӷ���   ��������Ҷ��   ���¶���   ������¶   �����Ҷ�   ���������Ŷ�   �������������Ŷ�   ��������������Ŷ   ���������¶�   �������������������¶���   �����Ӷ�   ���������϶�   ������������¶��   ��������Ѷ��   �����Ҷ�   ���������¶�   ����������ڶ   ����������Ӷ   ׶��   Զ��   ������������¶��    ����������������������������Ŷ��   ������Ӷ   ������Ӷ   ����������������ڶ��   ��������Ӷ��   ��������Ӷ��   �������������������Ӷ���   ��������Ŷ��   ������ض   ������������ض��   ���������������ڶ���   ��������������������ڶ��   ���������������Ŷ���   ����������Ŷ   ���Ӷ���   ���������������ڶ���   ����������Ӷ   �����������϶���   �����������Ӷ���   ��������������������������Ҷ   �������Ӷ���   �������������������Ӷ���   ��������Ӷ��    ����������������������������Ҷ��   ������������������������Ҷ��    ����������������������������Ҷ��$   �������������������������������Ҷ���$   ��������������������������������Ҷ��   ����������������������Ҷ   ���Ӷ���    ���������������������������Ҷ���                	      t      L                                        node_action       _on_node_action             set_conflictzone      none                ?      smooth_elevation_differences            set_wind_rainfall               set_wind_temperature   	   set_winds         erosion       water_erosion         set_sea_rainfall      set_mountain_rainfall         set_basic_temperature         find_neighbours       change_color_mode         set_ground_level      set_climate             sea       map_generated      	   elevation         small      @      0         medium        large      �      p      	   show_wind                                                       	   $   
   *      0      6      <      =      B      K      P      Q      V      [      `      e      f      l      r      s      z      ~      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0     1     2     3     4   &  5   2  6   5  7   8  8   9  9   D  :   J  ;   U  <   [  =   f  >   r  ?   {  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   	  Q     R     S   #  T   (  U   1  V   8  W   =  X   A  Y   E  Z   K  [   S  \   W  ]   ]  ^   c  _   l  `   m  a   t  b   x  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t     u     v     w     x   "  y   -  z   6  {   ?  |   L  }   M  ~   S     ^  �   g  �   p  �   }  �   ~  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �   %  �   )  �   2  �   6  �   7  �   @  �   D  �   H  �   L  �   M  �   S  �   W  �   [  �   _  �   c  �   g  �   k  �   o  �   p  �   v  �   z  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   
  �     �     �     �     �     �      �   #  �   '  �   +  �   ,  �   2  �   ;  �   3YYB�  YB�  P�  R�  QYY8P�  Q;�  Y8P�  Q;�  YY;�  LMY;�	  LMY;�
  LMY;�  LMY;�  LMYY;�  Y;�  �  T�  PQY;�  �  YY;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�  PQV�  �  T�%  PQYY0�  P�  QV�  /�  V�  �  V.�  �  �  V.�	  �  �  V.�
  �  �  V.�  YY0�  PQV�  .�  �  Y0�  P�  R�  QV�  &�  V�  ;�  �  &�  	�  �  �  	�  �  �  V�  �  �  P�  Q�  '�  �  �  �  	�  �  �  V�  �  �  �  �  �  �  �  P�  Q�  '�  	�  �  �  �  �  �  V�  �  �  P�  �  Q�  �  �  P�  Q�  (V�  �  �  �  �  �  �  �  �  �  �  �  �  P�  Q�  ;�  �  L�  M�  .�  L�  �  MT�  PQ�  (V�  .�	  �  Y0�  P�  R�   R�  QV�  ;�!  LM�  )�"  �K  P�  �  QV�  ;�#  LM�  )�$  �K  P�  �  QV�  ;�%  �  T�&  P�	  R�  Q�  ;�'  �  T�(  PQ�  �)  P�'  Q�  �'  T�*  P�"  �  R�$  �   R�  R�  R�%  Q�  �+  P�
  R�'  R�  Q�  �#  T�,  P�'  Q�  �!  T�,  P�#  Q�  .�!  �  Y0�-  PQV�  �  �  P�	  R�	  R�  Q�  �	  �  PP�  �  QR�	  R�  Q�  �
  �  P�	  RP�  �  QR�  Q�  �  �  PP�  �  QRP�  �  QR�  Q�  �.  PQ�  �/  PQ�  Y0�/  PQV�  �  �0  PQT�1  PQ�  )�"  �K  P�  QV�  ;�2  �3  P�"  Q�  ;�4  �  T�(  PQ�  �)  P�4  Q�  �4  T�*  P�"  R�2  Q�  �  T�,  P�4  Q�  ;�5  �  �  *�5  V�  �5  �  �  )�  �  V�  &�  T�6  PQV�  �5  �  �  )�  �  V�  �  T�7  PQ�  �8  P�
  R�  R�  Q�  Y0�3  P�"  QV�  *�  V�  ;�  �  T�9  P�  R�  Q�  ;�:  �  T�9  P�	  R�  �  �  Q�  ;�;  �  T�9  P�	  R�  �  �  Q�  ;�  �  /�  V�  �  V�  �  L�:  M�  �  V�  �	  L�:  M�  �  V�  �
  L�:  M�  �  V�  �  L�:  M�  ;�  �  L�;  M�  &�  T�  �  V�  �  T�<  P�"  Q�  .�  �  YY0�=  PQV�  )�"  �K  P�	  R�  QV�  ;�>  �  �"  �  �  ;�?  �  �"  �  �  �8  P�
  R�  RL�>  R�?  MQYY0�@  PQV�  )�"  �K  P�	  R�  QV�  ;�A  �  �"  �  �  ;�B  �  �"  �  �  �8  P�
  R�  RL�A  R�B  MQ�  Y0�C  PQV�  )�"  �K  P�	  R�  QV�  ;�A  �  �"  �  �  ;�B  �  �"  �  �  �8  P�
  R�  RL�A  R�B  MQ�  Y0�D  PQV�  �8  P�
  R�  R�  QYY0�E  PQV�  �8  P�
  R�  R�  QYY0�F  PQV�  �8  P�
  R�  R�  QYY0�G  PQV�  �8  P�
  R�  R�  QYY0�H  PQV�  �8  P�
  R�  R�  QYY0�I  PQV�  �8  P�
  R�  R�  QYY0�.  PQV�  �8  P�
  R�  R�  QYY0�J  P�K  QV�  �8  P�
  R�  R�K  QYY0�L  PQV�  �8  P�
  R�  R�  QYY0�M  PQV�  �8  P�
  R�   R�  QYY0�N  PQV�  �=  PQ�  )�"  �K  P�  QV�  �E  PQ�  �  )�"  �K  P�!  QV�  �F  PQ�  �E  PQ�  �L  PQYY0�O  PQV�  �G  PQ�  �H  PQ�  �D  PQ�  �@  PQ�  �I  PQ�  �C  PQ�  �M  PQYY0�P  PQV�  &�  V�  �Q  PQT�R  PQ�  (V�  �-  PQ�  �N  PQ�  �O  PQ�  �J  P�"  Q�  �0  PQT�S  PQ�  �  �  �  �8  P�#  QYY0�T  P�K  QV�  �J  P�K  Q�  Y0�U  PQV�  �E  PQ�  �J  P�$  Q�  Y0�V  PQV�  �=  PQ�  �J  P�$  Q�  Y0�W  PQV�  �F  PQ�  �J  P�"  Q�  Y0�X  PQV�  �  �0  PQT�  PQ�  �L  PQ�  �J  P�"  QYY0�Y  P�Z  QV�  /�Z  V�  �%  V�  �  �&  �  �  �'  �  �(  V�  �  �  �  �  �  �  �)  V�  �  �*  �  �  �+  YY0�[  PQV�  �8  P�
  R�,  R�  QY`             GDSC            �      ������������Ķ��   �������������������ٶ���   ���ٶ���   �   ﶶ�   �����������¶���   ���¶���   �����¶�   ���������¶�   ������������Ķ��   ��������������Ӷ   �����������������Ķ�   �����������ڶ���   ��������������Ķ   �����ﶶ   �������Ķ���   �������Ķ���   ��������������������Ҷ��   ��������      climate       ground_level   ,              temperature   �������?      rainfall                               %      6      J      ^   	   j   
   v      w      x      ~      �      3YY0�  P�  R�  R�  QV�  W�  T�  �>  P�  LMQ�  ;�  �  L�  M�  �  W�  �	  T�  �>  P�  P�  R�  QQ�  W�
  �  T�  �>  P�  P�  L�  MR�  QQ�  W�  �  T�  �>  P�  P�  L�  MR�  QQ�  W�  �  T�  �>  P�  Q�  W�  �  T�  �>  P�  QYYY0�  PQV�  �  PQY`               GDSC   %      ;   Y     ���Ӷ���   ��������Ķ��   ����Ŷ��   ���������������Ŷ���   ��Ѷ   ��������������������Ķ��   ����   �������������ض�   ��������������ض   �����϶�   ���¶���   �����Ҷ�   ���������Ӷ�   �����Ҷ�   ����������Ӷ   �����Ҷ�   ��������Ŷ��   ���Ӷ���   ���������Ӷ�   ���������Ŷ�   �������������Ŷ�   ��������¶��   ���ƶ���   ������������¶��   ��������������ض   �����Ӷ�   ���Ҷ���   ���Ӷ���   ���������¶�   �������������¶�   ��������޶��   ���������¶�   ����޶��   �   ��������   ����������Ӷ   ��������ض��                                               A   	        �@                                                       #   	   &   
   '      -      3      4      =      A      B      I      P      Q      \      ]      c      i      o      t      }      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1   	  2     3     4   )  5   2  6   =  7   @  8   K  9   Q  :   W  ;   3YY;�  Y;�  LMY;�  LMY;�  �  T�  PQYY;�  Y;�  YY0�	  PQV�  �  T�%  PQYY0�
  P�  R�  QV�  �  �  �  �  �  T�  P�  Q�  �  T�  P�  Q�  �  �  �  T�  P�  R�  QYY0�  PQV�  ;�  LM�  )�  �  V�  ;�  �  �  ;�  �  T�  PQ�  )�  �  V�  &�  T�  �  V�  �  �  �  ;�  �  T�  PR�  Q�  &�  �  V�  �  T�  P�  Q�  �  �  T�  �  �  �  T�  P�  Q�  &�  V�  �  T�  P�  T�  P�  QQ�  )�  �  V�  �  T�  P�  Q�  �  T�  P�  Q�  &�  T�  PQV�  .�  �  (V�  .�  YY0�  PQV�  ;�  �  �  ;�  �  PQT�   �  )�  �  V�  &�  T�!  �  T�!  �  �  V�  �  �  �  ;�"  �  T�  P�  R�  Q�  &�"  �  �  V�  �  �  T�  P�  R�  Q�  (V�  �  �  T�#  P�	  R�
  Q�  )�  �  V�  �  T�$  �  Y`   GDSC            �      �����Ӷ�   ��������ٶ��   ��������ض��   ������������Ҷ��   ��������޶��   ���������¶�   �������Ŷ���   ����׶��   ���Ӷ���   �������ض���   ζ��   �����������¶���   �����������������ض�   ϶��   �   ﶶ�   ��������   ���ٶ���   ���������¶�   ������������ٶ��   ����������ڶ   ��������������������Ҷ��   ������������޶��   �������������¶�                      d      `      	   node_info                            	      
                           	      
   "      &      (      E      d      q      ~      �      �      �      �      �      �      �      �      �      �      �      3YYB�  P�  QYY;�  Y;�  Y;�  YY0�  P�  QV�  &�  V�  �  PQ�  .�  �	  T�
  �  PQT�  PQT�
  �  P�  PQT�  PQT�
  R�  Q�  �	  T�  �  PQT�  PQT�  �  P�  PQT�  PQT�  R�  Q�  �  ;�  P�	  T�
  �  Q�  �  ;�  P�	  T�  �  Q�  �  &�	  T�
  �  �	  T�
  	�  �	  T�  	�  V�  �  PQ�  ;�  �  PQT�  P�  R�  Q�  �  P�  R�  R�  R�  Q�  (V�  �  PQ�  Y0�  PQV�  �  �  �  �  �  P�  PQT�  PQ�  Q�  �  �  PQT�  PQ�  Y`   GDSC                   �����Ӷ�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`         GDSC                  �����ض�   ��������������������Ҷ��   ���¶���      Clear                      	            3YY0�  PQV�  �  Y`    GDSC   _   S   a  2     �����Ӷ�   ��������¶��   ��������������ض   �����������Ӷ���   �������ڶ���   �������������ض�   ����������Ӷ   ��������ض��   �����������ڶ���   ��������ڶ��   ������Ӷ   �   ﶶ�   ������Ķ   ���������Ŷ�   ��������������������Ŷ��   �������������Ŷ�   �������ٶ���   ���¶���   ���¶���   ����Ŷ��   ����Ŷ��   ���������Ӷ�   ������Ķ   ������������ض��   �������ض���   �������Ҷ���   ���������¶�   ���������¶�   �����¶�   ����������������   ������������   ������������ض��   ���������������ڶ���   ������������ڶ��   ���������������ڶ���   ���Ӷ���   ��������������������ڶ��   ����������������Ŷ��   ������������ض��   ��������Ӷ��   ��������Ӷ��   ��������Ӷ��   ���Ҷ���   �������������������Ӷ���   ������ض   ����������������ض��   ���Ӷ���   ������������ض��    ���������������������������Ŷ���   ��������������������ض��   ��������������������ζ��   ���������������Ӷ���   ����������������Ӷ��   ��������������������Ӷ��   �����������¶���   ����Ӷ��$   �������������������������������¶���   ���������Ӷ�   �������������Ķ�   ����������Ķ   �����Ҷ�   ��Ŷ   ����������Ӷ   ��������������Ŷ   ����Ŷ��   ����������Ķ   ���������   ����޶��   �������ﶶ��   ����   �����������Ķ���   ������������Ķ��   ������������Ķ��   ������������   ��������������Ķ   ���������������Ķ���   �����������������Ķ�   ������������������Ķ   ������������¶��   ������������¶��   ���������Ӷ�   ���Ӷ���   ����������Ӷ   ����̶��   ����Ӷ��   �������Ķ���   ����׶��   ������ζ   ����������������   ����������������Ӷ��   ��������������ض   �����ض�   ���׶���   ������Ӷ                                  ground_level      rainfall      wind_direction        temperature       climate                              �?      ?              �������?                  @           @@     �@           �@   	        �@      Polar Desert      Ice Cap       Tundra     
   Wet Tundra        Polar Wetlands        Cool Desert       Steppe        Boreal Forest         Temperate Woodlands       Temperate Forest      Temperate Wet Forest      Temperate Wetlands        Extreme Desert        Desert        Subtropical Scrub         Subtropical Woodlands         Mediterranean         Subtropical Dry Forest        Subtropical Forest        Subtropical Wet Forest        Subtropical Wetlands      Tropical Scrub        Tropical Woodlands        Tropical Dry Forest       Tropical Wet Forest       Tropical Wetlands      	   continent         continentconflict      	   elevation         sea   �������?  333333�?      A     �?      A  ������@     @A     `A      B   d         find_neighbours       change_color_mode         set_basic_temperature         set_climate       set_conflictzone      set_ground_level      set_mountain_rainfall         set_sea_rainfall      set_wind_rainfall         set_wind_temperature   	   set_winds         water_erosion         erosion       smooth_elevation_differences   	   show_wind                                                       	       
   %      *      /      4      5      8      ;      >      D      J      K      Q      T      U      [      `      e      j      o      t      x      z       }   !   ~   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >   &  ?   *  @   +  A   1  B   6  C   <  D   F  E   J  F   K  G   T  H   ^  I   k  J   s  K   t  L   }  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^     _     `     a     b     c   &  d   5  e   6  f   <  g   B  h   J  i   N  j   S  k   T  l   Z  m   c  n   j  o   �  p   �  q   �  r   �  s   �  t   �  u     v     w   *  x   .  y   R  z   V  {   f  |   j  }   n  ~   o     u  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   &  �   /  �   8  �   >  �   D  �   M  �   V  �   _  �   h  �   q  �   z  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   %  �   .  �   7  �   @  �   I  �   R  �   [  �   d  �   j  �   p  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   !  �   1  �   2  �   :  �   D  �   N  �   U  �   a  �   o  �   x  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   '  �   /  �   9  �   @  �   A  �   Q  �   Y  �   e  �   l  �   x  �   �  �   �  �   �  �   �  �   �  �   �  �   �     �    �    �    �    �    �              	  %  
  1    8    P    \    d    o    v    w    �    �    �    �    �    �    �    �    �    �    		    	    	    &	     F	  !  R	  "  Z	  #  d	  $  k	  %  l	  &  s	  '  w	  (  |	  )  }	  *  �	  +  �	  ,  �	  -  �	  .  �	  /  �	  0  �	  1  �	  2  �	  3  �	  4  �	  5  �	  6  �	  7  �	  8  �	  9  �	  :  �	  ;  �	  <   
  =  
  >  
  ?  
  @  
  A  '
  B  0
  C  9
  D  B
  E  H
  F  K
  G  T
  H  ^
  I  h
  J  s
  K  z
  L  �
  M  �
  N  �
  O  �
  P  �
  Q  �
  R  �
  S  �
  T  �
  U  �
  V  �
  W  �
  X  �
  Y  �
  Z  �
  [    \    ]    ^    _  #  `  0  a  3YY;�  Y;�  Y;�  �  YY;�  �  Y;�  Y;�  Y;�  �  Y;�  �  Y;�	  �  Y;�
  �  YY;�  Y;�  Y;�  Y;�  LMY;�  LMYY0�  PQV�  .�  YY0�  PQV�  ;�  N�  �  V�  R�  �  V�  R�  �  V�  R�  �  V�  R�  �  V�
  �  O�  .�  YY0�  P�  R�  R�  R�  R�  QV�  �  �  P�  �  R�  �  Q�  �  �  �  �  �  �  �  �  �  �  �  YY0�  PQV�  ;�  �  PQT�  �  &�  	�  �	  V�  �  �
  �  '�  	�  �
  V�  �  �  �  '�  	�  �  �	  V�  �  �  �  (V�  �  �	  �  �  PQYY0�  PQV�  W�  T�   P�  QYY0�!  PQV�  �	  �  PQT�"  PQ�  �  �  �	  YY0�#  PQV�  )�$  �  V�  &�$  T�  	V�  �  �  YY0�%  PQV�  ;�&  �  )�$  �  V�  &�$  T�  �  �  V�  �  �  YY0�'  P�(  R�)  QV�  &�  �(  �  	�)  V�  ;�*  �  L�  T�+  P�  QM�  �*  T�  �  �
  YY0�,  P�(  R�)  QV�  &�  �(  �  	�)  V�  ;�*  �  L�  T�+  P�  QM�  �*  T�  P�  �*  T�  Q�
  �  Y0�-  PQV�  ;�.  �  )�$  �  V�  �.  �$  T�  �  �.  �.  �  T�/  PQ�  �  P�  �  �.  Q�  YY0�0  PQV�  &�  
�  V�  ;�.  �  )�$  �  V�  �.  �$  T�  �  �.  �.  �  T�/  PQ�  �  P�  �  �.  Q�  �  Y0�1  P�2  R�3  QV�  &�  �2  �  
�3  V�  )�$  �  V�  &�$  T�  	�  V�  �$  T�  �3  P�  �  R�$  T�  QYY0�4  PQV�  )�$  �  V�  &�$  T�  �  V�  �  �  �  �5  P�$  Q�  Y0�6  PQV�  ;�7  �  PQT�  �  ;�8  �7  �  �  &P�  �8  �  
�8  �
  QP�  �7  P�8  �
  Q�  
�7  �8  QV�  �  �  �  'P�  �8  �
  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �
  QV�  �  �  �  'P�  �8  �  �  
�8  �	  QP�  �7  P�8  �	  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �	  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �	  QV�  �  �  �  'P�  �8  �  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �  �  
�8  �  QP�  �7  P�8  �  Q�  
�7  �8  �  QV�  �  �  �  'P�  �8  �  �  
�8  �  QV�  �  �  �  �9  PQYY0�9  PQV�  &�  �
  V�  �  �  �
  YY0�5  P�:  QV�  ;�;  LP�  �  Q�  �  M�  ;�<  L�  R�  �  �  M�  &�  �  V�<  T�=  P�  Q�  (V�<  T�=  P�  �  Q�  &�;  T�>  P�  T�+  P�:  QQV�  �  �  �  �:  T�  �  �  &�<  T�>  P�  T�+  P�:  QQV�  �  �  �  �:  T�  �  �  Y0�?  PQV�  &�  V�  &�  
V�
  �  �  '�  
�  V�
  �  �  '�  
�
  V�
  �  �  '�  
�  V�
  �  �  '�  
�	  V�
  �  �  '�  
�  V�
  �  �  '�  
�  V�
  �  �  (V�
  �  �  '�  
�  V�  &�  
V�
  �  �  '�  
�  V�
  �  �  '�  
�
  V�
  �  �  '�  
�  V�
  �  �  '�  
�	  V�
  �  �  '�  
�  V�
  �  �  '�  
�  V�
  �  �  (V�
  �   �  '�  
�
  V�  &�  
V�
  �!  �  '�  
�  V�
  �!  �  '�  
�
  V�
  �"  �  '�  
�  V�
  �#  �  '�  
�	  V�
  �#  �  '�  
�  V�
  �#  �  '�  
�  V�
  �#  �  (V�
  �   �  '�  
�  V�  &�  
V�
  �!  �  '�  
�  V�
  �!  �  '�  
�
  V�
  �"  �  '�  
�  V�
  �$  �  '�  
�	  V�
  �$  �  '�  
�  V�
  �%  �  '�  
�  V�
  �&  �  (V�
  �'  �  '�  
�	  V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �*  �  '�  
�  V�
  �+  �  '�  
�	  V�
  �,  �  '�  
�  V�
  �%  �  '�  
�  V�
  �&  �  (V�
  �'  �  '�  
�  V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �*  �  '�  
�  V�
  �+  �  '�  
�	  V�
  �-  �  '�  
�  V�
  �.  �  '�  
�  V�
  �/  �  (V�
  �0  �  (V�  &�  
V�
  �(  �  '�  
�  V�
  �)  �  '�  
�
  V�
  �1  �  '�  
�  V�
  �2  �  '�  
�	  V�
  �3  �  '�  
�  V�
  �4  �  '�  
�  V�
  �4  �  (V�
  �5  �  �  Y0�@  PQV�  ;�A  �  PQT�B  P�  Q�  ;�C  �  P�  R�  PQT�D  �
  Q�  ;�E  �  P�  R�  PQT�  �
  Q�  �  &P�C  QV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  'P�  �
  �  �	  QV�  ;�G  �  PQT�B  P�  �  Q�  ;�F  �G  L�  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  �  &P�E  QV�  ;�F  �A  L�C  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �  �  �	  QV�  ;�H  �  PQT�B  P�  �
  Q�  ;�F  �H  L�C  M�  �  T�=  P�F  L�  MQ�  �  T�=  P�  Q�  �  &P�C  �  PQT�D  �
  �  QV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  'P�  �  �  �  QV�  ;�I  �  PQT�B  P�  �  Q�  ;�F  �I  LM�  �  T�=  P�F  L�E  MQ�  �  T�=  P�  Q�  �  &P�E  �  PQT�  �
  �  QV�  ;�F  �A  L�C  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �  �  �
  QV�  ;�J  �  PQT�B  P�  �
  Q�  ;�F  �J  L�C  M�  �  T�=  P�F  LMQ�  �  T�=  P�  Q�  �  &PP�C  �E  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �	  �C  �E  QV�  ;�K  �  PQT�B  P�  Q�  ;�F  �K  L�  M�  �  T�=  P�F  L�  MQ�  �  T�=  P�  Q�  �  &PP�C  �  PQT�D  �
  �  �E  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�
  Q�  'P�  �  �C  �  PQT�D  �
  �  �E  QV�  ;�L  �  PQT�B  P�
  Q�  ;�F  �L  LM�  �  T�=  P�F  L�  MQ�  �  T�=  P�
  Q�  �  &PP�C  �E  �  PQT�  �
  �  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�  Q�  'P�  �
  �C  �E  �  PQT�  �
  �  QV�  ;�M  �  PQT�B  P�  Q�  ;�F  �M  L�  M�  �  T�=  P�F  LMQ�  �  T�=  P�  Q�  �  &PP�C  �  PQT�D  �
  �  �E  �  PQT�  �
  �  QQV�  ;�F  �A  L�C  �  M�  �  T�=  P�F  L�E  �  MQ�  �  T�=  P�	  Q�  'P�  �  �C  �  PQT�D  �
  �  �E  �  PQT�  �
  �  QV�  ;�N  �  PQT�B  P�	  Q�  ;�F  �N  LM�  �  T�=  P�F  LMQ�  �  T�=  P�	  QYY0�O  P�P  QV�  �  �P  �  �Q  P�6  QYY0�Q  P�R  QV�  /�R  V�  �6  VW�S  T�Q  P�6  R�  Q�  �7  VW�S  T�Q  P�7  R�  Q�  �8  V�  �T  P�  Q�  W�S  T�Q  P�8  R�  Q�  �  VW�S  T�Q  P�  R�  Q�  �9  V�  �T  P�  Q�  W�S  T�Q  P�9  R�  Q�  �  VW�S  T�Q  P�  R�  Q�  �  V�  �T  P�  Q�  W�S  T�Q  P�  R�
  QYY0�T  P�U  QV�  &�  	V.�  ;�V  �  &�U  V�  &�U  	�  V�  &�U  	�  V�V  �  �  '�U  	�:  V�V  �  �  '�U  	�;  V�V  �  �  '�U  	�  V�V  �<  �  '�U  	�=  V�V  �>  �  '�U  	�?  V�V  �@  �  (V�V  �A  �  (V�  &�U  �@  V�V  �B  �  (V�V  �U  �
  �  �  '�U  �  V�V  �  �  '�U  �
  V�V  �  �  (V�V  �  �  ;�W  �  �3  PPP�V  �
  Q�C  Q�:  RQ�  �X  �V  �  W�Y  T�Z  P�  P�  R�  R�  R�W  QQ�  Y0�[  P�\  R�]  QV�  /�\  V�  �D  V�@  PQ�  �E  V�Q  P�]  Q�  �F  V�6  PQ�  �G  V�?  PQ�  �H  V�4  PQ�  �I  V�!  PQ�  �J  V�%  PQ�  �K  V�#  PQ�  �L  V�'  P�]  LMR�]  L�  MQ�  �M  V�,  P�]  LMR�]  L�  MQ�  �N  V�  PQ�  �O  V�0  PQ�  �P  V�-  PQ�  �Q  V�1  P�]  LMR�]  L�  MQ�  �R  VW�  T�^  W�  T�^  Y`      GDSC      �   z   �     �����Ӷ�   ���������Ӷ�   ���Ӷ���   ����Ӷ��   ����������������Ӷ��   ���������¶�   �����������ڶ���   	   continent            �G�z�?  �������?              �������?  {�G�z�?        ��Q���?  {�G�z�?  ���Q��?        �������?        �z�G��?                    
ףp=
�?   	      
              �>            continentconflict      	   elevation                005a32       �?      238443        @      41ab5d       @@      78c679       �@      addd8e       �@      d9f0a3       �@      f7fcb9       �@      ffffe5        A      fff7bc       A      fee391        A      fec44f       0A      fe9929       @A      ec7014       PA      cc4c02       `A      993404       pA      662506       �A      fff7fb        rainfall      543005        8c510a        bf812d        dfc27d        f6e8c3        f5f5f5        c7eae5        80cdc1        35978f        01665e        003c30        sea   �������?  �������?  333333�?     �?  ������@      6baed6        3182bd        08519c        temperature       4575b4        91bfdb        e0f3f8        ffffbf        fee090        fc8d59        d73027        climate       Polar Desert      5a5a5a        Ice Cap       ffffff        Tundra        bfbfbf     
   Wet Tundra        ccc0da        Polar Wetlands        60497b        Cool Desert       953735        Steppe        948b54        Temperate Woodlands       f2dddc        Temperate Forest      dbeef3        Temperate Wet Forest      93cddd        Temperate Wetlands        31849b        Extreme Desert        ff5050        Desert        ff9900        Subtropical Scrup         cccc00        Subtropical Woodlands         fcd5b4        Mediterranean         d99795        Subtropical Dry Forest        d7e4bc        Subtropical Forest        66ff66        Subtropical Wet Forest        00b050        Subtropical Wetlands      00823b        Tropical Scrup        ffff00        Tropical Woodlands        fffbc1        Tropical Dry Forest       ccff33        Tropical Wet Forest       75923c        Tropical Wetlands         4f6228                                             '      7   	   G   
   W      g      w      �      �      �      �      �      �      �      �      �                          )     3     =     G     Q     [      e  !   o  "   y  #   �  $   �  %   �  &   �  '   �  (   �  )   �  *   �  +   �  ,   �  -   �  .   �  /   �  0   �  1   �  2     3     4     5   %  6   /  7   9  8   C  9   F  :   G  ;   M  <   S  =   `  >   m  ?   z  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M     N     O     P   &  Q   4  R   B  S   L  T   O  U   Z  V   g  W   n  X   x  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g     h     i     j      k   *  l   4  m   >  n   H  o   R  p   \  q   f  r   p  s   z  t   �  u   �  v   �  w   �  x   �  y   �  z   3YY0�  P�  R�  QV�  /�  V�  V�  /�  V�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�	  R�
  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  P�  P�  R�  R�  R�  QQ�  �  V�  &�  V�  P�  P�  R�  R�  R�  QQ�  (V�  P�  P�  R�  R�  R�  QQ�  �  V�  /�  P�  QV�  �  V�  P�  P�  QQ�  �  V�  P�  P�  QQ�  �  V�  P�  P�   QQ�  �!  V�  P�  P�"  QQ�  �#  V�  P�  P�$  QQ�  �%  V�  P�  P�&  QQ�  �'  V�  P�  P�(  QQ�  �)  V�  P�  P�*  QQ�  �+  V�  P�  P�,  QQ�  �-  V�  P�  P�.  QQ�  �/  V�  P�  P�0  QQ�  �1  V�  P�  P�2  QQ�  �3  V�  P�  P�4  QQ�  �5  V�  P�  P�6  QQ�  �7  V�  P�  P�8  QQ�  �9  V�  P�  P�:  QQ�  �;  V�  P�  P�<  QQ�  �=  V�  &�  PQT�  	�  V�  .�  /�  P�  QV�  �  V�  P�  P�>  QQ�  �  V�  P�  P�?  QQ�  �  V�  P�  P�@  QQ�  �!  V�  P�  P�A  QQ�  �#  V�  P�  P�B  QQ�  �%  V�  P�  P�C  QQ�  �'  V�  P�  P�D  QQ�  �)  V�  P�  P�E  QQ�  �+  V�  P�  P�F  QQ�  �-  V�  P�  P�G  QQ�  �/  V�  P�  P�H  QQ�  �I  V�  �  &�  �  V�  &�  	�  V�  &�  	�J  V�  P�  P�  QQ�  '�  	�K  V�  P�  P�  QQ�  '�  	�L  V�  P�  P�   QQ�  '�  	�  V�  P�  P�"  QQ�  '�  	�M  V�  P�  P�$  QQ�  '�  	�N  V�  P�  P�&  QQ�  (V�  P�  P�(  QQ�  (V�  &�  �3  V�  P�  P�<  QQ�  /�  P�  QV�  �!  V�  P�  P�*  QQ�  �#  V�  P�  P�,  QQ�  �%  V�  P�  P�.  QQ�  �'  V�  P�  P�0  QQ�  �)  V�  P�  P�2  QQ�  �+  V�  P�  P�4  QQ�  �-  V�  P�  P�6  QQ�  �/  V�  P�  P�8  QQ�  �1  V�  P�  P�:  QQ�  �3  V�  P�  P�<  QQ�  '�  �  V�  P�  P�O  QQ�  '�  �  V�  P�  P�P  QQ�  (V�  P�  P�Q  QQ�  �R  V�  &�  PQT�  	�  V.�  &�  
�  V�  P�  P�S  QQ�  /�  P�  QV�  �  V�  P�  P�T  QQ�  �  V�  P�  P�U  QQ�  �!  V�  P�  P�V  QQ�  �#  V�  P�  P�W  QQ�  �%  V�  P�  P�X  QQ�  �'  V�  P�  P�Y  QQ�  �Z  V�  &�  PQT�  	�  V.�  /�  V�  �[  V�  P�  P�\  QQ�  �]  V�  P�  P�^  QQ�  �_  V�  P�  P�`  QQ�  �a  V�  P�  P�b  QQ�  �c  V�  P�  P�d  QQ�  �e  V�  P�  P�f  QQ�  �g  V�  P�  P�h  QQ�  �i  V�  P�  P�j  QQ�  �k  V�  P�  P�l  QQ�  �m  V�  P�  P�n  QQ�  �o  V�  P�  P�p  QQ�  �q  V�  P�  P�r  QQ�  �s  V�  P�  P�t  QQ�  �u  V�  P�  P�v  QQ�  �w  V�  P�  P�x  QQ�  �y  V�  P�  P�z  QQ�  �{  V�  P�  P�|  QQ�  �}  V�  P�  P�~  QQ�  �  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQ�  ��  V�  P�  P��  QQY`       GDSC            d      �����Ӷ�   �������Ӷ���   ��������   ����������������   �����϶�   ������������ض��   ��������ض��   ��Ŷ   ������Ӷ   ����Ӷ��   ϶��   ζ��                             �>                   
                                 	      
   #      4      8      B      I      S      Z      [      ^      b      3YY8P�  Q;�  Y8P�  Q;�  YYY0�  PQV�  -YY0�  P�  QV�  &LR�  R�  R�  MT�  P�  QV�  �  �  �  &�  �  �  �  V�  �	  T�
  �  �  &�  �  �  �  V�  �	  T�  �  �  �  (V�  �  �  Y`        GDST               n   PNG �PNG

   IHDR         ���   sRGB ���   $IDAT�c` ��b8`D��%����&l!GT@  �y�!���    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/arrow.png"
dest_files=[ "res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST               n   PNG �PNG

   IHDR         ���   sRGB ���   $IDAT�c`  ���	ȣ(DW�a
V�q�q� J/  �<�6:�N    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/arrow_diagonal.png"
dest_files=[ "res://.import/arrow_diagonal.png-12befc31f0564d6529780f8311a83dc4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               o   PNG �PNG

   IHDR         ���   sRGB ���   %IDAT�cLKK�π�@iF�����f```
`���U '�D��i�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/cursor.png"
dest_files=[ "res://.import/cursor.png-97af3808e5ea1d52e364c821589a41df.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST              `   PNG �PNG

   IHDR         �Ԛs   sRGB ���   IDAT�c���? $�0��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/node.png"
dest_files=[ "res://.import/node.png-3cde955dfba6900b30bc9ae2169373a3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="ButtonGroup" format=2]

[resource]
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/Map.gdc"
          [remap]

path="res://Scripts/Node_info.gdc"
    [remap]

path="res://Scripts/continent.gdc"
    [remap]

path="res://Scripts/cursor.gdc"
       [remap]

path="res://Scripts/elevation_shadow.gdc"
             [remap]

path="res://Scripts/generate_button.gdc"
              [remap]

path="res://Scripts/node.gdc"
         [remap]

path="res://Scripts/node_sprite.gdc"
  [remap]

path="res://Scripts/wind_arrow.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�          ECFG
      _global_script_classes             _global_script_class_icons             application/config/name         World Maker    application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png  '   memory/limits/message_queue/max_size_kb         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               