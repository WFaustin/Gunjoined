GDPC                                                                            (   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex      �      fm Iz�ۚ��%=��D   res://.import/thumbnail.png-3f545d161fd110f6ef4e5b6d4c7c77a7.stex   �     �      ��z[����9`��qC'   res://Conjoined_Players.tscn             ��d��;��h��   res://Pickups.gd.remap  `'     "       #�����u�7.��[&�J   res://Pickups.gdc    "      �      u�
�gvHV~k�����:,   res://Test Scene/Conjoined_Players.gd.remap �'     7       b|Um5�MH��x�M�(   res://Test Scene/Conjoined_Players.gdc  �2      �       �
��o�cy$/�' ��T$   res://Test Scene/Static cube.tscn   �3      m      L1�X¡��|����    res://Test Scene/Test Scene.tscn@8      L      �)g3��Z�������:$   res://Test Scene/grey_material.tres �G      �      �Y�5=m+YQ�Y��-b0   res://TopDownTwinStickController/Bullet.gd.remap�'     <       \��vџ楳� ���,   res://TopDownTwinStickController/Bullet.gdc 0M      ^      gAV�j�zr����R;L?,   res://TopDownTwinStickController/Bullet.tscn�P      �      O �IOo��l�=g!�@   res://TopDownTwinStickController/BulletKinematicBody.gd.remap   (     I       �%�R��o��楶���58   res://TopDownTwinStickController/BulletKinematicBody.gdc0S      �      T�7F�I=���qI8   res://TopDownTwinStickController/BulletSphere.gd.remap  `(     B       �EηO�r57���Ω4   res://TopDownTwinStickController/BulletSphere.gdc   �T      �      j�J.�?��7�݇4   res://TopDownTwinStickController/Controller.gd.remap�(     @       �j�Ea���+�0   res://TopDownTwinStickController/Controller.gdc �V      �,      ���8�����@   res://TopDownTwinStickController/Controller_Original.gd.remap   �(     I       |���0���+�v�>>�8   res://TopDownTwinStickController/Controller_Original.gdc`�      �      �3o�+�n�j"�/�5|Q8   res://TopDownTwinStickController/Controller_Tom.gd.remap@)     D       �u�� 9�_0��U�4   res://TopDownTwinStickController/Controller_Tom.gdc  �      �      �����:Ѹrs�Mh,   res://TopDownTwinStickController/Pickup.tscn��      �      ����$�-J����� �4   res://TopDownTwinStickController/Rod Joint.gd.remap �)     ?       ��t�r�b�@�
�;^0   res://TopDownTwinStickController/Rod Joint.gdc  P�      �       J$/��U!�ޘ��x!�4   res://TopDownTwinStickController/Skeleton.gd.remap  �)     >       �xeh�i�E�u"2�0   res://TopDownTwinStickController/Skeleton.gdc   0�      #      ��D��ד	�i�k�#8   res://TopDownTwinStickController/TDTS_Controller.tscn   `�      <      ��³[����]���0   res://TopDownTwinStickController/Turret.gd.remap*     <       ��֯����2��,   res://TopDownTwinStickController/Turret.gdc ��      �
      ��F4��4M�k�n?b,   res://TopDownTwinStickController/Turret.tscnp�      �      O3H�%���[nq���M8   res://TopDownTwinStickController/conjoined_players.tscn p�      �      =:xJ��ӲH  �8   res://TopDownTwinStickController/players_with_hinge.tscn@�      �      t�+�n/,j6��A�B�4   res://TopDownTwinStickController/test_player.tscn   ��      j      I^��Q�?Q��D|   res://default_env.tres  @�      �      �Y^%-�,^�͍6�   res://icon.png.import   �     �      "�Պ����$��㹌   res://project.binary�?     �?      ��r��I� 8nt>�   res://thumbnail.png P*     7      \��rM�>]ذ3���   res://thumbnail.png.import  �$     �      �_<=������Ab    [gd_scene load_steps=10 format=2]

[ext_resource path="res://Test Scene/Conjoined_Players.gd" type="Script" id=2]
[ext_resource path="res://TopDownTwinStickController/Controller.gd" type="Script" id=3]

[sub_resource type="CapsuleShape" id=1]

[sub_resource type="SphereShape" id=6]

[sub_resource type="CapsuleMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
roughness = 0.0

[sub_resource type="PrismMesh" id=4]

[sub_resource type="SphereShape" id=7]

[sub_resource type="BoxShape" id=5]
extents = Vector3( 3.81609, 0.191749, 0.232773 )

[node name="Conjoined_Players" type="Spatial"]
script = ExtResource( 2 )

[node name="P1Joint" type="HingeJoint" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, -4.835, 1.75, 0 )
nodes/node_a = NodePath("../Player1")
nodes/node_b = NodePath("../Rod")
collision/exclude_nodes = false
params/bias = 0.99
angular_limit/upper = 60.0
angular_limit/lower = -60.0

[node name="P2Joint" type="HingeJoint" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 4.835, 1.75, 0 )
nodes/node_a = NodePath("../Player2")
nodes/node_b = NodePath("../Rod")
collision/exclude_nodes = false
params/bias = 0.99
angular_limit/upper = 60.0
angular_limit/lower = -60.0

[node name="Player1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -4.835, 1.7, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Player1"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Area" type="Area" parent="Player1"]

[node name="CollisionShape" type="CollisionShape" parent="Player1/Area"]
transform = Transform( 1.2, 0, 0, 0, 1, 0, 0, 0, 1.2, 0, 0, 0 )
shape = SubResource( 6 )

[node name="Body" type="MeshInstance" parent="Player1"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="Gun" type="MeshInstance" parent="Player1/Body"]
transform = Transform( -8.14604e-08, 0, -0.5, 0, 1, 0, 0.5, 0, -8.14604e-08, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Controller" type="Spatial" parent="Player1"]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0 )
script = ExtResource( 3 )
PlayerPath = NodePath("..")
NonPlayerPath = NodePath("../../Player2")
RodPivotPath = NodePath("../../P1Joint")
CameraPath = NodePath("InnerGimbal/Camera")
MeshInstancePath = NodePath("../Body")

[node name="InnerGimbal" type="Spatial" parent="Player1/Controller"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.45646, 0 )

[node name="Camera" type="Camera" parent="Player1/Controller/InnerGimbal"]
transform = Transform( 1, 0, 0, 0, 1.19249e-08, 1, 0, -0.999999, 1.19249e-08, 0, 7, 0 )
current = true

[node name="Player2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4.835, 1.7, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Player2"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Area" type="Area" parent="Player2"]

[node name="CollisionShape" type="CollisionShape" parent="Player2/Area"]
transform = Transform( 1.2, 0, 0, 0, 1, 0, 0, 0, 1.2, 0, 0, 0 )
shape = SubResource( 7 )

[node name="Body" type="MeshInstance" parent="Player2"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="Gun" type="MeshInstance" parent="Player2/Body"]
transform = Transform( -8.14604e-08, 0, -0.5, 0, 1, 0, 0.5, 0, -8.14604e-08, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Controller" type="Spatial" parent="Player2"]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0 )
script = ExtResource( 3 )
PlayerPath = NodePath("..")
NonPlayerPath = NodePath("../../Player1")
RodPivotPath = NodePath("../../P2Joint")
CameraPath = NodePath("InnerGimbal/Camera")
MeshInstancePath = NodePath("../Body")
playerNum = 2

[node name="InnerGimbal" type="Spatial" parent="Player2/Controller"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.45646, 0 )

[node name="Camera" type="Camera" parent="Player2/Controller/InnerGimbal"]
transform = Transform( 1, 0, 0, 0, 1.19249e-08, 1, 0, -0.999999, 1.19249e-08, 0, 7, 0 )
current = true

[node name="Rod" type="RigidBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.75, 0 )
continuous_cd = true
can_sleep = false
axis_lock_linear_y = true
axis_lock_angular_x = true
axis_lock_angular_z = true

[node name="CollisionShape" type="CollisionShape" parent="Rod"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.000308156, 0, 0 )
shape = SubResource( 5 )

[node name="CSGBox" type="CSGBox" parent="Rod/CollisionShape"]
transform = Transform( 3.4615, 0, 0, 0, 0.170908, 0, 0, 0, 0.602355, 0, 0, 0 )
use_collision = true
width = 2.2006
height = 2.19966
depth = 0.793836
[connection signal="body_entered" from="Player1/Area" to="Player1/Controller" method="_on_Area_body_entered"]
[connection signal="body_entered" from="Player2/Area" to="Player2/Controller" method="_on_Area_body_entered"]
       GDSC   4      �   4     ��������϶��   ����������Ŷ   ��������   ��������   ������������   ��������   ��������   ������������   ���������������ڶ���   ���������������ڶ���   ����������������ڶ��   �����������������ڶ�   �����������������ڶ�   ������������������ڶ   �����������򶶶�   �������������Ӷ�   ���������ƶ�   ������޶   �������Ӷ���   �����ć�   �����Ą�   �����϶�   �����������۶���   ����¶��   �����������Ŷ���   ���Ҷ���   ���Ӷ���   ���Ŷ���   �����������ƶ���   ���������������Ҷ���   ������������Ҷ��   ������������������϶   ���������������϶���   ���������������Ŷ���   ��������������������ƶ��   Ķ��   Ѷ��   Զ��   �������ڶ���   �����������ڶ���   �����������Ķ���   �������Ŷ���   ����׶��   �������������������������Ҷ�   ���Ӷ���   Ŷ��   ���Ӷ���   ���������¶�   ����������������¶��   ���ƶ���   �������������������������¶�   ���������Ӷ�                   CSGMesh       Timer           {�G�z�?         2                       �������?         �         At Apply Powerup      New Movement Speed is         New Gun Shot Speed is      
   Add health        At Reset             Player1       Player2    
   Controller        CollisionTimer                                                      	      
         %      +      1      7      =      D      G      R      V      Z      [      \      ]      ^      d      i      n      w      y      z      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9   	  :     ;     <     =     >     ?   #  @   &  A   2  B   ;  C   G  D   P  E   S  F   ^  G   g  H   r  I   {  J   ~  K     L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `     a     b     c      d   +  e   ,  f   2  g   <  h   F  i   P  j   Y  k   f  l   o  m   p  n   q  o   x  p   z  q   {  r   |  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �     �     �     �     �     �   !  �   %  �   .  �   /  �   0  �   1  �   2  �   3YYYYYYY>�  N�  R�  R�  R�  R�  R�  OYY;�  SY;�	  SY;�
  SY;�  SY;�  SY;�  SY;�  �  SY;�  Y5;�  V�  �  P�  QY;�  SY;�  SYYYYY0�  PQV�  �%  PQS�  �  PQS�  �  P�  QT�  PQ�  -YY0�  PQV�  /�  V�  V�  �  �  S�  �  V�  �	  �  S�  �  V�  �
  �  S�  �  V�  �  �	  S�  �
  V�  �  �  S�  �  V�  �  �  S�  YYY0�  PQV�  &�  �  V�  ;�  �  P�  P�(  PR�  T�  PQQQQS�  �  �  T�  PQL�  MS�  �  �  S�  �?  P�  Q�  �?  P�  QS�  (V�  �  �  T�  PQL�  MS�  �?  P�  Q�  �?  P�  QS�  �  PQYY0�  PQV�  �?  P�  Q�  /�  V�  V�  �  T�  P�  T�  �  QS�  �?  P�  R�  T�  Q�  �  T�  P�  T�  �  QS�  �?  P�  R�  T�  Q�  �  V�  �  T�  P�  T�   �	  Q�  �?  P�  R�  T�   Q�  �  T�  P�  T�   �	  Q�  �?  P�  R�  T�   Q�  �  V�  �  �?  P�  Q�  �  V�  �  T�  P�  T�  �  QS�  �?  P�  R�  T�  Q�  �  T�  P�  T�  �  QS�  �?  P�  R�  T�  Q�  �
  V�  �  T�  P�  T�   �  Q�  �?  P�  R�  T�   Q�  �  T�  P�  T�  �  QS�  �?  P�  R�  T�  Q�  �  V�  �  �?  P�  QYYY0�!  PQV�  �?  P�  Q�  /�  V�  �  V�  �  T�  P�  T�  �  QS�  �  T�  P�  T�  �  QS�  �
  V�  �  T�  P�  T�   �  Q�  �  T�  P�  T�   �  QYY0�"  PQV�  ;�#  �(  PR�  Q�  ;�$  �(  PR�  Q�  ;�%  �(  PR�  Q�  ;�&  �  T�'  PQ�  �&  T�(  �  P�#  R�$  R�%  Q�  �  P�  QT�  PQYYY0�)  P�*  QV�  -YYY0�+  P�,  QV�  ;�-  �  S�  �?  P�,  T�.  Q�  &�,  T�.  �  �,  T�.  �  V�  &�,  T�.  �  V�  �  �,  T�  P�  Q�  �  �  T�/  PQT�/  PQT�  P�  QT�  P�  Q�  '�,  T�.  �  V�  �  �,  T�  P�  Q�  �  �  T�/  PQT�/  PQT�  P�  QT�  P�  Q�  �  PQ�  �  P�  QT�  PQ�  -SYYY0�0  PQV�  �  P�  QT�1  PQ�  �"  PQYY0�2  PQV�  �  P�  QT�1  PQ�  �!  PQ�  �/  PQT�3  PQSYYYYY`      GDSC                   ������ڶ   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`         [gd_scene load_steps=3 format=2]

[sub_resource type="CubeMesh" id=3]

custom_aabb = AABB( 0, 0, 0, 0, 0, 0 )
size = Vector3( 2, 2, 2 )
subdivide_width = 0
subdivide_height = 0
subdivide_depth = 0

[sub_resource type="BoxShape" id=4]

extents = Vector3( 1, 1, 1 )

[node name="Static cube" type="MeshInstance"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
layers = 1
material_override = null
cast_shadow = 1
extra_cull_margin = 0.0
use_in_baked_light = false
lod_min_distance = 0.0
lod_min_hysteresis = 0.0
lod_max_distance = 0.0
lod_max_hysteresis = 0.0
mesh = SubResource( 3 )
skeleton = NodePath("..")
material/0 = null
_sections_unfolded = [ "Transform" ]

[node name="StaticBody" type="StaticBody" parent="." index="0"]

input_ray_pickable = true
input_capture_on_drag = false
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody" index="0"]

shape = SubResource( 4 )
disabled = false


   [gd_scene load_steps=8 format=2]

[ext_resource path="res://Test Scene/grey_material.tres" type="Material" id=1]
[ext_resource path="res://Test Scene/Static cube.tscn" type="PackedScene" id=2]
[ext_resource path="res://Conjoined_Players.tscn" type="PackedScene" id=3]
[ext_resource path="res://TopDownTwinStickController/Turret.tscn" type="PackedScene" id=4]
[ext_resource path="res://TopDownTwinStickController/Pickup.tscn" type="PackedScene" id=5]

[sub_resource type="PlaneMesh" id=1]

[sub_resource type="BoxShape" id=2]

[node name="TestScene" type="Spatial"]

[node name="Level" type="Spatial" parent="."]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0 )

[node name="Floor" type="MeshInstance" parent="Level"]
transform = Transform( 16.6813, 0, 0, 0, 1, 0, 0, 0, 10, 0, 0, 0 )
mesh = SubResource( 1 )
material/0 = ExtResource( 1 )

[node name="FloorStaticBody" type="StaticBody" parent="Level/Floor"]

[node name="CollisionShape" type="CollisionShape" parent="Level/Floor/FloorStaticBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )
shape = SubResource( 2 )

[node name="Walls" type="Spatial" parent="Level"]

[node name="TopWall" parent="Level/Walls" instance=ExtResource( 2 )]
transform = Transform( 16.4308, 0, 0, 0, 2.43099, 0, 0, 0, 0.5, 0.187855, 2.26401, -9.52965 )

[node name="BottomWall" parent="Level/Walls" instance=ExtResource( 2 )]
transform = Transform( 16.1229, 0, 0, 0, 2.4815, 0, 0, 0, 0.5, -0.0568873, 2.44339, 9.434 )

[node name="RightWall" parent="Level/Walls" instance=ExtResource( 2 )]
transform = Transform( -0.074227, 0, -0.499983, 0, 2.5, 0, 8.99969, 0, -0.00412372, 15, 2.5, 0 )

[node name="LeftWall" parent="Level/Walls" instance=ExtResource( 2 )]
transform = Transform( -0.074227, 0, -0.499983, 0, 2.5, 0, 8.99969, 0, -0.00412372, -15, 2.5, 0 )

[node name="Obstacle_Blocks" type="Spatial" parent="Level"]

[node name="ObstacleBlock1" parent="Level/Obstacle_Blocks" instance=ExtResource( 2 )]
transform = Transform( -0.840681, 0, -0.541531, 0, 2, 0, 0.541531, 0, -0.840681, 1.60711, 2, -4.52622 )

[node name="ObstacleBlock2" parent="Level/Obstacle_Blocks" instance=ExtResource( 2 )]
transform = Transform( 0.282327, 0, 0.479659, 0, 1, 0, -0.959318, 0, 0.141163, 5.68626, 1, 6.92052 )

[node name="ObstacleBlock3" parent="Level/Obstacle_Blocks" instance=ExtResource( 2 )]
transform = Transform( -0.596717, 0, 0.401226, 0, 1, 0, -0.802451, 0, -0.298359, -7.13092, 1, 5.02082 )

[node name="Pickup" parent="Level/Obstacle_Blocks" instance=ExtResource( 5 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -5.93723, 1.64085, -0.673488 )

[node name="DirectionalLight" type="DirectionalLight" parent="Level"]
transform = Transform( 0.303202, 0.0667883, -0.121321, 0, 0.292009, 0.160753, 0.13849, -0.146222, 0.265614, 0, 1.76457, 0 )
shadow_enabled = true
directional_shadow_blend_splits = true

[node name="RayCast" type="RayCast" parent="."]

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, 1, 0, -1, -1.62921e-07, 0, 40, 0 )
current = true

[node name="Conjoined_Players" parent="." instance=ExtResource( 3 )]

[node name="Camera" parent="Conjoined_Players/Player1/Controller/InnerGimbal" index="0"]
current = false

[node name="Camera" parent="Conjoined_Players/Player2/Controller/InnerGimbal" index="0"]
current = false

[node name="CSGBox" parent="Conjoined_Players/Rod/CollisionShape" index="0"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
width = 7.65
height = 0.65
depth = 0.65

[node name="Turret" parent="." instance=ExtResource( 4 )]
transform = Transform( -1.98005, 0, -0.281767, 0, 2, 0, 0.281767, 0, -1.98005, -0.509898, 0.0387926, 11.5363 )
P1NodePath = NodePath("../Conjoined_Players/Player1")
P2NodePath = NodePath("../Conjoined_Players/Player2")

[editable path="Conjoined_Players"]
    [gd_resource type="SpatialMaterial" format=2]

[resource]

render_priority = 0
flags_transparent = false
flags_unshaded = false
flags_vertex_lighting = false
flags_no_depth_test = false
flags_use_point_size = false
flags_world_triplanar = false
flags_fixed_size = false
flags_albedo_tex_force_srgb = false
vertex_color_use_as_albedo = false
vertex_color_is_srgb = false
params_diffuse_mode = 0
params_specular_mode = 0
params_blend_mode = 0
params_cull_mode = 0
params_depth_draw_mode = 0
params_line_width = 1.0
params_point_size = 1.0
params_billboard_mode = 0
params_grow = false
params_use_alpha_scissor = false
albedo_color = Color( 0.640625, 0.640625, 0.640625, 1 )
metallic = 0.0
metallic_specular = 0.5
metallic_texture_channel = 0
roughness = 0.0
roughness_texture_channel = 0
emission_enabled = false
normal_enabled = false
rim_enabled = false
clearcoat_enabled = false
anisotropy_enabled = false
ao_enabled = false
depth_enabled = false
subsurf_scatter_enabled = false
transmission_enabled = false
refraction_enabled = false
detail_enabled = false
uv1_scale = Vector3( 1, 1, 1 )
uv1_offset = Vector3( 0, 0, 0 )
uv1_triplanar = false
uv1_triplanar_sharpness = 1.0
uv2_scale = Vector3( 1, 1, 1 )
uv2_offset = Vector3( 0, 0, 0 )
uv2_triplanar = false
uv2_triplanar_sharpness = 1.0
proximity_fade_enable = false
distance_fade_enable = false
_sections_unfolded = [ "Albedo" ]

   GDSC            �      ������������϶��   ���������������򶶶�   ��������ض��   �����¶�   �����϶�   �������Ŷ���   ����׶��   �����ض�   ��������ض��   ���������������Ӷ���   �������Ķ���   ���Ӷ���   ��¶   ���������Ӷ�   ����������������¶��            Turret        Player1       Player2                                                     	      
          !      (      /      0      8      >      N      V      ^      _      y      �      �      �      �      �      �      3YY8P�  Q;�  SY;�  Y;�  V�  YYY0�  PQV�  -YYY0�  P�  QV�  ;�  �  �  �  �  ;�  �	  P�  Q�  &P�  QV�  &P�  T�
  T�  �  �  �  QV�  �  T�
  T�  PQ�  �  T�
  T�  PQ�  �  &PP�  T�
  T�  �  �  T�
  T�  �  Q�  �  QV�  �  T�
  T�  PQ�  �  �  PQYY0�  PQV�  �  PQY`  [gd_scene load_steps=3 format=2]

[ext_resource path="res://TopDownTwinStickController/Bullet.gd" type="Script" id=1]

[sub_resource type="SphereShape" id=1]

[node name="Bullet" type="KinematicBody"]
transform = Transform( -1.09278e-08, 0, 0.25, 0, 0.25, 0, -0.25, 0, -1.09278e-08, 0, 1, -0.5 )
script = ExtResource( 1 )

[node name="BulletSphere" type="CSGSphere" parent="."]

[node name="BulletCollsion" type="CollisionShape" parent="."]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 1.5
one_shot = true
autostart = true
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
               GDSC            4      ������������϶��   �����϶�   �������������ض�   ������¶   ��¶   �����¶�   ���Ӷ���      body_entered      hit                                                  	   	   
   
                           &      -      .      /      0      1      2      3YYYYYYYYY0�  PQV�  W�  T�  PRR�  Q�  -�  Y0�  P�  QV�  �?  P�  T�  QYYYYYY`     GDSC            <      ��������Ӷ��   �����϶�   ������¶   ���������������Ŷ���   ����׶��   ��¶   �����¶�   ���Ӷ���      tree_entered      hit                                                  	   	   
   
                           %      '      (      /      6      7      8      9      :      3YYYYYYYYY0�  PQV�  T�  PRR�  Q�  -YY0�  P�  QV�  -YY0�  P�  QV�  �?  P�  T�  QYYYYY`              GDSC   �   -   Y  �     ������ڶ   �����ⶶ   ���������޶�   ������������޶��   ������������������޶   ���������������������޶�   �����������޶���   ���������޶�   ���������������޶���   ������������Ҷ��   �����������ض���   �������������ض�   ������ƶ   ������������Ҷ��   ������۶   ������۶   ��������Ҷ��   ��������۶��   ���������������϶���   ������������Ҷ��   �����Ķ�   ������������϶��   ��������Ķ��   �������¶���   ���������¶�   �����׶�   �����������Ӷ���   �������������ض�   ������¶   ����������ڶ   ��������ض��   ������������ض��   �������������ض�   ������϶   ���������Ӷ�   �������¶���   ���������Ķ�   ���������۶�   ����Ҷ��   �������������������Ҷ���   ���������������ض���   ���������Ӷ�   ����������������Ӷ��   �������������Ӷ�   ���Ӷ���   �������¶���   �������޶���   ����������ζ   ����������ض   �������������Ķ�   �����Ҷ�   ��������������Ķ   �������������ⶶ   ����󶶶   ������������   �������䶶��   ���������������Ҷ���   ��۶   ������������������϶   �����϶�   ����¶��   �������������Ӷ�   �������������������   �������Ӷ���   ��������Ҷ��   ���������¶�   ����޶��   �������������¶�   Ŷ��   ��������������������Ŷ��   ߶��   ��������¶��   �������ƶ���   ��������������¶   ���¶���   �����������Ŷ���   ��������醶�   �����������Ӷ���   ����ζ��   �������������������۶���   �����ض�   ζ��   ����̶��   ̶��   �������¶���   �������������������¶���   ���Ӷ���   ������Ҷ   ��¶   ���������������¶���   ����¶��   ���������������������ض�   ���������ڶ�   ������������������޶   �������ڶ���   ���������޶�   ��������������������ض��   ��������Ӷ��   ��������Ҷ��   ��������������������ض��   ���������������ζ���   �����������   �����������ζ���   ���������������   ��������������������   ������������϶��   ������Ҷ   �������Ӷ���   ����������   �������Ӷ���   ���¶���   ���������׶�   �����������Ҷ���   ��������޶��   ���۶���   �����������������ض�   �������ض���   �ٶ�   �����������������ڶ�   ����������ض   ������ٶ   �������������������Ӷ���   ��������������¶   ������������������¶   ������¶   �涶   �������������Ӷ�   �������������������Ŷ���   ϶��   �������������������Ŷ���   ��¶   ���������Ҷ�   ����Ӷ��   �������¶���   �����������ض���   ����϶��   �������϶���   �����Ķ�   �������Ŷ���   ����׶��   ����������������Ҷ��   �����¶�   �������Ӷ���   ��������Ҷ��   ��������������ض   ��������ض��   ����Ŷ��   ���������������Ŷ���   �����Ӷ�   ��������������۶   �������Ҷ���   ��������   �����������������Ӷ�   �������������Ӷ�   ����������Ķ   ��������Ӷ��   ��������������������Ҷ��   ���϶���   ,   res://TopDownTwinStickController/Bullet.tscn                                     ?     �?              �������?          
     �������?                         /root/TestScene/RayCast       Rod/CollisionShape/CSGBox         Player     	   move_left      
   look_right     	   look_left         look_up    	   look_back     �������?   d      Z      �         shoot         /root/        jump      shootP2       jumpP2        rotate_left       rotate_right      move_up    	   move_back      
   move_right        rotate_leftP2         rotate_rightP2     	   move_upP2         move_backP2       move_leftP2       move_rightP2                                           "      %   	   .   
   7      @      I      R      [      d      m      v            �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )      *     +   
  ,     -     .     /     0   !  1   $  2   '  3   *  4   /  5   4  6   5  7   ?  8   @  9   A  :   H  ;   M  <   N  =   U  >   Z  ?   [  @   a  A   j  B   q  C   x  D     E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z     [     \     ]     ^   	  _   
  `     a     b     c     d     e     f     g     h   1  i   K  j   _  k   c  l   d  m   e  n   f  o   g  p   n  q   o  r   p  s   q  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   "  �   0  �   3  �   4  �   =  �   >  �   ?  �   E  �   R  �   [  �   \  �   _  �   `  �   i  �   j  �   k  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   !  �   ,  �   <  �   A  �   B  �   T  �   ^  �   b  �   p  �   u  �   v  �   w  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   
  �     �     �     �   $  �   -  �   7  �   D  �   R  �   V  �   W  �   X  �   f  �   q  �   u  �   {  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   
  �     �   !  �   "  �   #  �   ,  �   7  �   A  �   L  �   U  �   `     j    u    ~    �    �    �    �    �    �  	  �  
  �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �                   !    "    #    $    %  )  &  7  '  8  (  >  )  ?  *  E  +  P  ,  [  -  f  .  r  /  s  0  t  1  }  2  �  3  �  4  �  5  �  6  �  7  �  8  �  9  �  :  �  ;  �  <  �  =  �  >  �  ?  �  @    A    B    C    D  "  E  #  F  $  G  %  H  &  I  B  J  M  K  U  L  [  M  _  N  `  O  a  P  n  Q  |  R  ~  S    T  �  U  �  V  �  W  �  X  �  Y  3YY:�  ?PQYY8P�  Q;�  �  Y8P�  Q;�  �  Y;�  SY;�  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�	  �  Y8P�  Q;�
  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �	  Y8P�  Q;�  �
  Y8P�  Q;�  �  SYY;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  Y;�  Y;�  Y;�  Y;�  �  PQY;�  �  PQY;�   Y;�!  �  Y;�"  �
  Y;�#  �  PQY;�$  �	  Y;�%  �	  Y;�&  �  PQY;�'  �  PQY;�(  �  Y;�)  �  Y;�*  �  Y;�+  �  Y;�,  �  Y;�-  �  Y;�.  Y;�/  Y;�0  Y;�1  Y;�2  �  Y;�3  �  YY>�4  N�5  R�6  R�7  OYYY0�8  P�9  QV�  �	  �9  SYY0�:  P�9  QV�  �  �9  SYY0�;  PQV�  �<  T�=  P�<  T�>  Q�  �  �?  P�  Q�  �  �?  P�  Q�  �  �?  P�  Q�  �  �  �?  P�  Q�  �  �?  P�  Q�  �  �  T�@  P�  Q�  �  �?  P�  Q�  �  W�  �  �.  �A  PQT�A  PQT�?  P�  QT�B  �  �/  �.  �  S�  �0  �.  �  S�  YY0�C  PQV�  ;�D  �<  T�E  PQ�  )�F  �D  V�  &�  �	  �F  V�  �?  P�  �  P�  QQ�  �  �  �  ;�G  �H  T�I  P�  Q�  �  ;�J  �<  T�K  P�F  R�L  Q�  �  �  �  �  �  �  �  �  �  �  YY0�M  PQV�  ;�N  �  P�  T�O  PQT�P  T�Q  �  T�O  PQT�P  T�Q  Q�  ;�R  �  P�  T�O  PQT�P  T�S  �  T�O  PQT�P  T�S  Q�  ;�T  �
  P�  P�N  R�  Q�  P�R  R�  QQ�  �1  �T  �  �  �  YY0�U  P�V  QV�  �  Y�  ;�W  �  T�O  PQT�P  T�X  P�V  QY�  �  Y�  ;�N  �  P�  T�O  PQT�P  T�Q  �V  T�Q  �  T�O  PQT�P  T�Q  Q�  ;�R  �  P�  T�O  PQT�P  T�S  �V  T�S  �  T�O  PQT�P  T�S  QY�  �  �  Y�  �  ;�T  �
  P�  P�N  R�  Q�  P�R  R�  QQ�  �  .�T  �  YY0�Y  P�Z  QV�  Y�  &�Z  4�[  V�  ;�\  �<  T�]  P�  Q�<  T�]  P�  Q�  ;�^  �<  T�]  P�  Q�<  T�]  P�  Q�  &�  P�\  Q�*  �  P�^  Q�*  V�  �_  P�  P�\  R�^  QR�4  T�6  Q�  (V�  �  �_  P�&  R�4  T�7  QY�  �  '�Z  4�`  V�  &�a  P�Z  T�b  PQQ�+  V�  �_  P�Z  R�4  T�5  QY�  (V�  �  �_  P�&  R�4  T�7  QY�  �  '�Z  4�c  �Z  T�d  PQ�e  V�  �_  P�Z  R�4  T�5  QY�  �  &�Z  4�c  V�  /�Z  T�f  V�  �g  V�  �$  �  �  �h  V�  �$  �  �  �$  �5  P�$  R�  R�  QY�  �  &�Z  4�i  �Z  T�j  V�  /�Z  T�k  V�  �l  V�  �m  PQT�n  PQYY0�_  P�o  R�p  QV�  /�p  V�  �4  T�5  V�  �  ;�q  �  �  ;�r  �  T�s  P�o  T�t  Q�  ;�u  �r  �  T�v  P�o  T�t  Q�q  �  �  T�w  �r  �  �  T�x  �u  �  �  T�y  PQ�  ;�z  �  T�{  PQ�  �  T�|  P�z  R�  T�}  Q�  ;�~  �  T�  PQT��  �  �  T��  P�  P�  R�~  �  R�  QQ�  �4  T�6  V�  �  ;��  �	  P�o  T��  R�o  T�Q  Q�  Z�  ��  �  T�  PQT��  �  ��  �  �  �  T��  P�  P�  R��  R�  QQ�  �4  T�7  V�  �  �  &�a  P�o  Q�  �  T�X  P�o  T��  PQQ�  V�  �  ;��  �	  P�o  T�Q  R�o  T�S  Q�  ;��  �  T��  PQ�  ;��  ��  ��  T��  �  �  T��  P��  QYYY0�a  P��  QV�  &�:  P��  Q�:  P�  PQQV�  .�
  P��  T�Q  ��  T�Q  ��  T��  ��  T��  Q�  '�:  P��  Q�:  P�  PQQV�  .�
  P��  T�Q  ��  T�Q  ��  T�S  ��  T�S  QYY0��  P��  QV�  �,  ��  �  &�  �	  V�  �  &P�<  T��  P�  Q�,  �  QV�  ;��  �  T��  PQ�  �?  P�  QT��  P��  Q�  ��  T��  P�  T�O  PQT�P  Q�  ��  T��  �  T�O  PQT��  T��  �  �,  �  Y�  �  &P�<  T��  P�  QQ�)  V�  �'  �  P�  R�  R�  Q�  �)  �  �  '�  �  V�  �  &P�<  T��  P�   Q�,  �  QV�  ;��  �  T��  PQ�  �?  P�  QT��  P��  Q�  ��  T��  P�  T�O  PQT�P  Q�  ��  T��  �  T�O  PQT��  T��  �  �,  �  �  �  &P�<  T��  P�!  QQ�)  V�  �'  �  P�  R�  R�  Q�  �)  �  YY0��  P��  QV�  �M  PQ�  &�  �	  V�  �  �   �  ��  �  &P�<  T��  P�"  QQV�  �  T��  P�  T�}  R�   Q�  'P�<  T��  P�#  QQV�  �  T��  P�  T�}  R�   QY�  �  ;��  �  T�O  PQ�  &P�<  T��  P�$  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�%  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�&  QQV�  �  ��  T��  L�  M�  �  T��  �  �  �  �  T��  PQ�  ;��  �	  �  T��  PQ�  �"  �  �  &P�  T�X  P�&  Q�  QV�  �"  �
  �  �  �  T��  �  �&  �&  T��  P��  R��  �"  Q�  �#  �&  �  �'  T��  �!  ��  �(  �  �#  �'  �  �  �  �  �  �  �  Y�  �  �  �  Y�  �  &P�1  
�/  �U  P�#  Q�0  QP�1  �0  �U  P�#  Q
�/  QV�  �  T��  P�#  R�  T�}  Q�  �  �  &�  T��  PQV�  �'  T��  �  �  �)  �  Y�  �  �%  �  P�%  R�$  R��  �  Q�  �  T��  P�  P�%  R�%  R�%  QQY�  '�  �  V�  �  �   �  ��  �  &P�<  T��  P�'  QQV�  �  T��  P�  T�}  R�   Q�  'P�<  T��  P�(  QQV�  �  T��  P�  T�}  R�   QY�  �  ;��  �  T�O  PQ�  &P�<  T��  P�)  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�*  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�+  QQV�  �  ��  T��  L�  M�  &P�<  T��  P�,  QQV�  �  ��  T��  L�  M�  �  T��  �  �  �  �  T��  PQ�  ;��  �	  �  T��  PQ�  �"  �  �  &P�  T�X  P�&  Q�  QV�  �"  �
  �  �  �  T��  �  �&  �&  T��  P��  R��  �"  Q�  �#  �&  �  �'  T��  �!  ��  �(  �  �#  �'  �  �  �  �  �  &P�1  
�/  �U  P�#  Q�0  QP�1  �0  �U  P�#  Q
�/  QV�  �  T��  P�#  R�  T�}  Q�  &�  T��  PQV�  �'  T��  �  �  �)  �  Y�  �  �%  �  P�%  R�$  R��  �  Q�  �  T��  P�  P�%  R�%  R�%  QQ�  -YYYYY0��  P��  QV�  -Y` GDSC   t       �   �     ������ڶ   �����ⶶ   ���������޶�   ���������޶�   ���������������޶���   ������������Ҷ��   �����������ض���   �������������ض�   ������ƶ   ������������Ҷ��   ������۶   ������۶   ��������Ҷ��   ��������۶��   �����Ķ�   ������������϶��   �����׶�   �����������Ӷ���   �������������ض�   ������¶   ����������ڶ   ��������ض��   ������������ض��   �������������ض�   ������϶   ���������Ӷ�   �������¶���   ���������Ķ�   ���������۶�   ����Ҷ��   �������������������Ҷ���   ���������������ض���   ���������Ӷ�   ����������������Ӷ��   �������������Ӷ�   �������������ⶶ   ����󶶶   ������������   �������䶶��   �����϶�   ����¶��   �������������Ӷ�   �������������������   �������Ӷ���   ��������Ҷ��   ���������������¶���   ����¶��   ���������������������ض�   ���������ڶ�   ������������������޶   �������ڶ���   ���������޶�   ��������������������ض��   ��������Ӷ��   ��������Ҷ��   ��������������������ض��   ���������������ζ���   �����������   �����������ζ���   ���������������   ��������������������   ������������϶��   ������Ҷ   �������Ӷ���   ����������   �������Ӷ���   ���¶���   ���������׶�   �����������Ҷ���   ��������޶��   ���۶���   �����������������ض�   �������ض���   �ٶ�   �����������������ڶ�   ����������ض   ������ٶ   �������������������Ӷ���   ��������������¶   ������������������¶   ������¶   �涶   �������������Ӷ�   �������������������Ŷ���   ϶��   �������������������Ŷ���   ��¶   ζ��   ��¶   ���������Ҷ�   ����Ӷ��   ̶��   �������¶���   �����������ض���   ����϶��   �������϶���   �����Ķ�   �������Ŷ���   ����׶��   ����������������Ҷ��   �����¶�   �������Ӷ���   ��������Ҷ��   ��������������ض   �������������������۶���   �����ض�   ��������ض��   ����Ŷ��   ���������������Ŷ���   ��������������۶   �������Ҷ���   ��������   �����������������Ӷ�   ��������۶��   �������������Ӷ�   ����������Ķ   ,   res://TopDownTwinStickController/Bullet.tscn                                     ?     �?               
            �������?                   /root/TestScene/RayCast    
   look_right     	   look_left         look_up    	   look_back     �������?   d      Z      �         shoot         /root/        jump            move_up    	   move_back      	   move_left      
   move_right                                             '      0   	   9   
   B      K      T      ]      f      o      x      y      ~      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1   "  2   #  3   *  4   +  5   1  6   B  7   S  8   c  9   q  :   t  ;   u  <   ~  =     >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X     Y     Z     [     \     ]     ^      _   ,  `   <  a   B  b   H  c   N  d   W  e   b  f   m  g   }  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z     {   !  |   /  }   C  ~   D     K  �   L  �   W  �   `  �   j  �   w  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   (  �   ,  �   9  �   =  �   C  �   P  �   \  �   `  �   j  �   n  �   y  �   �  �   �  �   �  �   3YY:�  ?PQYY8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�	  �  Y8P�  Q;�
  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �	  YY;�  V�  Y;�  Y;�  Y;�  Y;�  Y;�  Y;�  �  PQY;�  �  PQY;�  Y;�  �
  Y;�  �  Y;�  �  PQY;�  �	  Y;�  �	  Y;�  �  PQY;�  �  PQY;�  �  Y;�   �  Y;�!  �  Y;�"  �  YY>�#  N�$  R�%  R�&  OYYY0�'  PQV�  �(  T�)  P�(  T�*  Q�  �  �+  P�  Q�  �  �+  P�  Q�  �  �+  P�  Q�  �  �  T�,  P�  Q�  �  �+  P�  Q�  �  W�  YY0�-  P�.  QV�  �  &�.  4�/  V�  ;�0  �(  T�1  P�  Q�(  T�1  P�  Q�  ;�2  �(  T�1  P�  Q�(  T�1  P�  Q�  &�  P�0  Q�!  �  P�2  Q�!  V�  �3  P�  P�0  R�2  QR�#  T�%  Q�  (V�  �  �3  P�  R�#  T�&  QY�  �  '�.  4�4  V�  &�5  P�.  T�6  PQQ�"  V�  �3  P�.  R�#  T�$  Q�  �  (V�  �  �3  P�  R�#  T�&  QY�  �  '�.  4�7  �.  T�8  PQ�9  V�  �3  P�.  R�#  T�$  QY�  �  &�.  4�7  V�  /�.  T�:  V�  �;  V�  �  �  �  �<  V�  �  �  �  �  �5  P�  R�
  R�  QY�  �  &�.  4�=  �.  T�>  V�  /�.  T�?  V�  �@  V�  �A  PQT�B  PQYY0�3  P�C  R�D  QV�  /�D  V�  �#  T�$  V�  �  ;�E  �  �  ;�F  �  T�G  P�C  T�H  Q�  ;�I  �F  �  T�J  P�C  T�H  Q�E  �  �  T�K  �F  �  �  T�L  �I  �  �  T�M  PQ�  ;�N  �  T�O  PQ�  �  T�P  P�N  R�  T�Q  Q�  ;�R  �  T�S  PQT�T  �  �  T�U  P�  P�  R�R  �  R�  QQ�  �#  T�%  V�  �  ;�V  �	  P�C  T�T  R�C  T�W  Q�  Z�  �V  �  T�S  PQT�T  �  �V  �  �  �  T�U  P�  P�  R�V  R�  QQ�  �#  T�&  V�  �  �  &�5  P�C  Q�  �  T�X  P�C  T�Y  PQQ�  V�  �  ;�Z  �	  P�C  T�W  R�C  T�[  Q�  ;�\  �  T�]  PQ�  ;�^  �Z  �\  T�T  �  �  T�_  P�^  QYYY0�5  P�`  QV�  &�:  P�`  Q�:  P�  PQQV�  .�
  P�`  T�W  �`  T�W  �`  T�T  �`  T�T  Q�  '�:  P�`  Q�:  P�  PQQV�  .�
  P�`  T�W  �`  T�W  �`  T�[  �`  T�[  QYY0�a  P�b  QV�  �  &P�(  T�c  P�  QQV�  ;�d  �  T�e  PQ�  �+  P�  QT�f  P�d  Q�  �d  T�g  P�  T�h  PQT�i  Q�  �d  T�j  �  T�h  PQT�k  T�W  �  �  �  &P�(  T�c  P�  QQ�   V�  �  �  P�  R�  R�  Q�  �   �  YY0�l  P�b  QV�  &�  �	  V�  �  ;�m  �  T�h  PQ�  &P�(  T�c  P�  QQV�  �  �m  T�k  L�  M�  &P�(  T�c  P�  QQV�  �  �m  T�k  L�  M�  &P�(  T�c  P�  QQV�  �  �m  T�k  L�  M�  &P�(  T�c  P�  QQV�  �  �m  T�k  L�  M�  �  T�T  �  �  �  �  T�Y  PQ�  ;�n  �  �  T�Y  PQ�  �  �  �  &P�  T�X  P�  Q�  QV�  �  �  �  �  �  T�o  �  �  �  T�p  P�n  R�b  �  Q�  �  �  T�q  T�k  P�  Q�  �  �  �  �  T�T  �  �b  �  �  �  �  �  �  T�r  P�  R�  T�Q  Q�  &�  T�s  PQV�  �  T�T  �  �  �   �  Y`GDSC   y   "   �   �     ������ڶ   �����ⶶ   ���������޶�   ������������޶��   �����������޶���   ���������޶�   ���������������޶���   ������������Ҷ��   �����������ض���   �������������ض�   ������ƶ   ������������Ҷ��   ������۶   ������۶   ��������Ҷ��   ��������۶��   �����Ķ�   ������������϶��   ��������Ķ��   �������¶���   ���������¶�   �����׶�   �����������Ӷ���   �������������ض�   ������¶   ����������ڶ   ��������ض��   ������������ض��   �������������ض�   ������϶   ���������Ӷ�   �������¶���   ���������Ķ�   ���������۶�   ����Ҷ��   �������������������Ҷ���   ���������������ض���   ���������Ӷ�   ����������������Ӷ��   �������������Ӷ�   �������������ⶶ   ����󶶶   ������������   �������䶶��   �����϶�   ����¶��   �������������Ӷ�   �������������������   �������Ӷ���   ��������Ҷ��   ���������������¶���   ����¶��   ���������������������ض�   ���������ڶ�   ������������������޶   �������ڶ���   ���������޶�   ��������������������ض��   ��������Ӷ��   ��������Ҷ��   ��������������������ض��   ���������������ζ���   �����������   �����������ζ���   ���������������   ��������������������   ������������϶��   ������Ҷ   �������Ӷ���   ����������   �������Ӷ���   ���¶���   ���������׶�   �����������Ҷ���   ��������޶��   ���۶���   �����������������ض�   �������ض���   �ٶ�   �����������������ڶ�   ����������ض   ������ٶ   �������������������Ӷ���   ��������������¶   ������������������¶   ������¶   �涶   �������������Ӷ�   �������������������Ŷ���   ϶��   �������������������Ŷ���   ��¶   ζ��   ��¶   ���������Ҷ�   ����Ӷ��   ̶��   �������¶���   �����������ض���   ����϶��   �������϶���   �����Ķ�   �������Ŷ���   ����׶��   ����������������Ҷ��   �����¶�   �������Ӷ���   ��������Ҷ��   ��������������ض   �������������������۶���   �����ض�   ��������ض��   ����Ŷ��   ���������������Ŷ���   ��������������۶   �������Ҷ���   ��������   �����������������Ӷ�   ��������۶��   �������������Ӷ�   ����������Ķ   ,   res://TopDownTwinStickController/Bullet.tscn                                     ?     �?               
            �������?                   /root/TestScene/RayCast    
   look_right     	   look_left         look_up    	   look_back     �������?   d      Z      �         shoot         /root/        move_up    	   move_back      	   move_left      
   move_right     #   X Differential for Player and Rod:     #   Z Differential for Player and Rod:     &   X Differential for Rod and NonPlayer:      &   Z Differential for Rod and NonPlayer:                                              '      0   	   9   
   B      K      T      ]      f      o      x      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +     ,     -     .     /     0     1   $  2   +  3   2  4   9  5   B  6   I  7   N  8   O  9   V  :   W  ;   ]  <   n  =     >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T      U     V     W     X     Y     Z     [   "  \   (  ]   +  ^   3  _   4  `   =  a   C  b   G  c   L  d   M  e   R  f   ^  g   n  h   t  i   z  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x      y     z     {     |   !  }   (  ~   )     *  �   1  �   ?  �   S  �   a  �   u  �   v  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   #  �   ,  �   2  �   :  �   E  �   I  �   V  �   Z  �   `  �   m  �   y  �   }  �   �  �   �  �   �  �   �  �   �  �     �   S  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY:�  ?PQYY8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�	  �  Y8P�  Q;�
  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �	  YY;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  Y;�  Y;�  Y;�  Y;�  �  PQY;�  �  PQY;�  Y;�  �
  Y;�  �  Y;�  �  PQY;�   �	  Y;�!  �	  Y;�"  �  PQY;�#  �  PQY;�$  �  Y;�%  �  Y;�&  �  Y;�'  �  YY>�(  N�)  R�*  R�+  OYYY0�,  PQV�  �-  T�.  P�-  T�/  Q�  �  �0  P�  Q�  �  �0  P�  Q�  �  �0  P�  Q�  �  �0  P�  Q�  �  �0  P�  Q�  �  �  T�1  P�  Q�  �  �0  P�  Q�  �  W�  YY0�2  P�3  QV�  �  &�3  4�4  V�  ;�5  �-  T�6  P�  Q�-  T�6  P�  Q�  ;�7  �-  T�6  P�  Q�-  T�6  P�  Q�  &�  P�5  Q�&  �  P�7  Q�&  V�  �8  P�  P�5  R�7  QR�(  T�*  Q�  (V�  �  �8  P�"  R�(  T�+  QY�  �  '�3  4�9  V�  &�:  P�3  T�;  PQQ�'  V�  �8  P�3  R�(  T�)  Q�  �  (V�  �  �8  P�"  R�(  T�+  QY�  �  '�3  4�<  �3  T�=  PQ�>  V�  �8  P�3  R�(  T�)  QY�  �  &�3  4�<  V�  /�3  T�?  V�  �@  V�  �   �  �  �A  V�  �   �  �  �   �5  P�   R�  R�  QY�  �  &�3  4�B  �3  T�C  V�  /�3  T�D  V�  �E  V�  �F  PQT�G  PQYY0�8  P�H  R�I  QV�  &�  �	  V�  /�I  V�  �(  T�)  V�  �  ;�J  �  �  ;�K  �  T�L  P�H  T�M  Q�  ;�N  �K  �  T�O  P�H  T�M  Q�J  �  �  T�P  �K  �  �  T�Q  �N  �  �  T�R  PQ�  ;�S  �  T�T  PQ�  �  T�U  P�S  R�  T�V  Q�  ;�W  �  T�X  PQT�Y  �  �  T�Z  P�  P�  R�W  �  R�  QQ�  �(  T�*  V�  �  ;�[  �	  P�H  T�Y  R�H  T�\  Q�  Z�  �[  �  T�X  PQT�Y  �  �[  �  �  �  T�Z  P�  P�  R�[  R�  QQ�  �(  T�+  V�  �  �  &�:  P�H  Q�  �  T�]  P�H  T�^  PQQ�  V�  �  ;�_  �	  P�H  T�\  R�H  T�`  Q�  ;�a  �  T�b  PQ�  ;�c  �_  �a  T�Y  �  �  T�d  P�c  QYYY0�:  P�e  QV�  &�:  P�e  Q�:  P�  PQQV�  .�
  P�e  T�\  �e  T�\  �e  T�Y  �e  T�Y  Q�  '�:  P�e  Q�:  P�  PQQV�  .�
  P�e  T�\  �e  T�\  �e  T�`  �e  T�`  QYY0�f  P�g  QV�  &�  �	  V�  �  &P�-  T�h  P�  QQV�  ;�i  �  T�j  PQ�  �0  P�  QT�k  P�i  Q�  �i  T�l  P�  T�m  PQT�n  Q�  �i  T�o  �  T�m  PQT�p  T�`  �  �  �  �  �  YY0�q  P�g  QV�  &�  �	  V�  �  ;�r  �  T�m  PQ�  &P�-  T�h  P�  QQV�  �  �r  T�p  L�  M�  &P�-  T�h  P�  QQV�  �  �r  T�p  L�  M�  &P�-  T�h  P�  QQV�  �  �r  T�p  L�  M�  &P�-  T�h  P�  QQV�  �  �r  T�p  L�  M�  �  T�Y  �  �  �  �  T�^  PQ�  ;�s  �  �  T�^  PQ�  �  �	  �  &P�  T�]  P�"  Q�  QV�  �  �  �  �  �  T�t  �  �"  �"  T�u  P�s  R�g  �  Q�  �  �  T�v  T�p  P�"  Q�  �  �"  �  �#  T�Y  �  �g  �$  �  �  �#  �  �?  P�  RPP�  T�m  PQT�n  T�\  �  T�\  Q�  T�m  PQT�n  T�\  QQ�  �?  P�  RPP�  T�m  PQT�n  T�`  �  T�`  Q�  T�m  PQT�n  T�`  QQ�  �?  P�   RPP�  T�m  PQT�n  T�\  �  T�\  Q�  T�m  PQT�n  T�\  QQ�  �?  P�!  RPP�  T�m  PQT�n  T�`  �  T�`  Q�  T�m  PQT�n  T�`  QQ�  &PP�  PP�  T�m  PQT�n  T�\  �  T�\  Q�  T�m  PQT�n  T�\  Q	�  QP�  PP�  T�m  PQT�n  T�`  �  T�`  Q�  T�m  PQT�n  T�`  Q	�  Q�  P�  PP�  T�m  PQT�n  T�\  �  T�\  Q�  T�m  PQT�n  T�\  Q	�  QP�  PP�  T�m  PQT�n  T�`  �  T�`  Q�  T�m  PQT�n  T�`  Q	�  QQV�  �  T�w  P�  Q�  �  �  �  �  &�  T�x  PQV�  �#  T�Y  �  �  �%  �  Y`        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Pickups.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]

[node name="Pickup" type="Spatial"]
transform = Transform( 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0 )

[node name="RigidBody" type="RigidBody" parent="."]
contacts_reported = 1
contact_monitor = true
axis_lock_linear_y = true
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="RigidBody"]
shape = SubResource( 1 )

[node name="CSGMesh" type="CSGMesh" parent="RigidBody"]
mesh = SubResource( 2 )
material = SubResource( 3 )

[node name="Timer" type="Timer" parent="RigidBody"]
wait_time = 4.0

[node name="CollisionTimer" type="Timer" parent="RigidBody"]
wait_time = 3.0
[connection signal="body_entered" from="RigidBody" to="RigidBody" method="_on_RigidBody_body_entered"]
[connection signal="timeout" from="RigidBody/Timer" to="RigidBody" method="_on_Timer_timeout"]
[connection signal="timeout" from="RigidBody/CollisionTimer" to="RigidBody" method="_on_CollisionTimer_timeout"]
        GDSC                   �����������Ӷ���   �����϶�                                                 	   	   
   
                                       3YYYYYYYYY0�  PQV�  -YYYYY`          GDSC                   �������ض���   �����϶�                                                 	   	   
   
                                                                                 3YYYYYYYYY0�  PQV�  -�  �  �  �  �  �  YYYYYY`             [gd_scene load_steps=2 format=2]

[ext_resource path="res://TopDownTwinStickController/Controller.gd" type="Script" id=1]

[node name="Controller" type="Spatial"]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0 )
script = ExtResource( 1 )
CameraPath = NodePath("InnerGimbal/Camera")

[node name="InnerGimbal" type="Spatial" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.45646, 0 )

[node name="Camera" type="Camera" parent="InnerGimbal"]
transform = Transform( 1, 0, 0, 0, 1.19249e-08, 1, 0, -0.999999, 1.19249e-08, 0, 7, 0 )
current = true
    GDSC   ,      [   �     ������������϶��   ��������޶�   ��������޶�   �����������޶���   ���������Ӷ�   ������������϶��   �����ⶶ   ������懶���   ������愶���   ���������Ӷ�   懶�   愶�   �����¶�   �������������ض�   �������Ӷ���   �����϶�   �������Ӷ���   �������Ŷ���   ����׶��   ����������懶���   ���������������۶���   �����ض�   ����������ٶ   ����������ض   ����������愶���   ���Ҷ���   ������¶   ζ��   ̶��   �涶   �����¶�   �������Ӷ���   ���������¶�   ��������Ҷ��   ��������������ض   ��������ض��   �������������������۶���   ����Ŷ��   �����¶�   ��¶   ��������������������Ҷ��   ���϶���   ���Ӷ���   �������������������Ҷ���             @      ?   ,   res://TopDownTwinStickController/Bullet.tscn                               Turret        Turret: I've been hit         Player1       Hi P1               Player2       Hi P2         Bye P1        Bye P2                                       '      0      1   	   9   
   :      ;      <      =      >      C      H      M      R      W      Z      ]      b      c      d      j      q      x            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   	  7   
  8   *  9   +  :   4  ;   =  <   >  =   I  >   Y  ?   _  @   c  A   d  B   j  C   o  D   p  E   q  F   r  G   s  H   t  I   {  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   3YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  �  Y8P�  Q;�  �  YY:�  ?P�  QYYYYYY;�  �  Y;�  �  Y;�	  �  Y;�
  VY;�  VY;�  Y;�  Y;�  �  YYY0�  PQV�  �
  �  P�  Q�  �  �  P�  Q�  �  �  P�  Q�  Y0�  P�  QV�  �	  �  �  �  �  �  &P�  �  QV�  �  ;�  �
  T�  T�  T�  PT�  Q�  ;�  �  T�  T�  T�  PT�  Q�  &P�  	�  QV�  �  �  �
  �  (V�  �  �  �  �  'P�  �  QV�  �  �  �
  �  'P�  �  QV�  �  �  �  �  (V�  �  �  �  �	  �  �  �  &P�  �  QV�  &P�	  �  �  �  QV�  �  W�  T�  P�  P�  T�  T�  T�  R�  R�  T�  T�  T�  QR�  T�  Q�  �  ;�  �  T�  PQ�  �   PQT�!  P�  Q�  �  �  T�"  PT�  T�  Q�  �  T�#  W�  T�$  PQT�%  T�  �  �  T�&  �  �  �  �  YY0�'  PQV�  �?  P�	  QYYYYYY0�(  P�)  QV�  &P�)  T�*  �
  QV�  �?  P�  Q�  �  �  �  'P�)  T�*  �  QV�  �?  P�  Q�  �  �  �  YYY0�+  P�)  QV�  &P�)  T�*  �
  QV�  �?  P�  Q�  �  �  �  'P�)  T�*  �  QV�  �?  P�  Q�  �  �  �  -Y`  [gd_scene load_steps=5 format=2]

[ext_resource path="res://TopDownTwinStickController/Turret.gd" type="Script" id=1]

[sub_resource type="SpatialMaterial" id=1]
flags_transparent = true
params_specular_mode = 4
albedo_color = Color( 1, 0, 0, 0.666667 )

[sub_resource type="CylinderShape" id=2]
radius = 0.667794
height = 1.87277

[sub_resource type="CylinderShape" id=3]
radius = 0.5

[node name="Turret" type="KinematicBody"]
script = ExtResource( 1 )
HeadNodePath = NodePath("Head")

[node name="Head" type="Spatial" parent="."]

[node name="Body" type="CSGBox" parent="Head"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.005361, 1.78794, 0.0023888 )
width = 0.341284
height = 0.406379
depth = 0.703169

[node name="Gun" type="CSGCylinder" parent="Head/Body"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0.00479162, 0.000701189, -0.283313 )
radius = 0.0665077
height = 0.542
sides = 12

[node name="BulletContainer" type="CSGBox" parent="Head"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.197668, 1.79145, -0.00428735 )
width = 0.0530955
height = 0.20438
depth = 0.348149
material = SubResource( 1 )

[node name="AntennaConnection" type="CSGCylinder" parent="Head"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.12466, 2.03868, 0.298663 )
radius = 0.0187785
height = 0.263154
sides = 12

[node name="AntennaTop" type="CSGCylinder" parent="Head"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.121319, 2.16978, 0.303526 )
radius = 0.0312649
height = 0.0217706
sides = 12

[node name="Neck" type="CSGBox" parent="."]
transform = Transform( 0.115, 0, 0, 0, -5.02681e-09, -0.315, 0, 0.115, -1.37691e-08, 0, 1.31508, 0 )

[node name="Body" type="CSGBox" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.918294, 0 )
width = 1.03184
height = 0.20108
depth = 1.18407

[node name="Legs" type="Spatial" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.398919, 0 )

[node name="CSGBox" type="CSGBox" parent="Legs"]
transform = Transform( 1, 0, 0, 0, 0.690364, 0, 0, 0, 1, 0.376688, 0.807475, 0.454387 )
width = 0.277362
height = 1.22689
depth = 0.277

[node name="CSGBox2" type="CSGBox" parent="Legs"]
transform = Transform( 1, 0, 0, 0, 0.690364, 0, 0, 0, 1, 0.376688, 0.807475, -0.45268 )
width = 0.277362
height = 1.22689
depth = 0.277

[node name="CSGBox3" type="CSGBox" parent="Legs"]
transform = Transform( 1, 0, 0, 0, 0.690364, 0, 0, 0, 1, -0.377176, 0.807475, -0.45268 )
width = 0.277362
height = 1.22689
depth = 0.277

[node name="CSGBox4" type="CSGBox" parent="Legs"]
transform = Transform( 1, 0, 0, 0, 0.690364, 0, 0, 0, 1, -0.377604, 0.815664, 0.451448 )
width = 0.277362
height = 1.22689
depth = 0.277

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.10112, 0 )
shape = SubResource( 2 )

[node name="Area" type="Area" parent="."]

[node name="CollisionShape" type="CollisionShape" parent="Area"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.00326, 0 )
shape = SubResource( 3 )
[connection signal="body_entered" from="Area" to="." method="_on_Area_body_entered"]
[connection signal="body_exited" from="Area" to="." method="_on_Area_body_exited"]
      [gd_scene load_steps=8 format=2]

[ext_resource path="res://TopDownTwinStickController/TDTS_Controller.tscn" type="PackedScene" id=1]
[ext_resource path="res://TopDownTwinStickController/Skeleton.gd" type="Script" id=2]

[sub_resource type="CapsuleShape" id=1]

[sub_resource type="CapsuleMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
roughness = 0.0

[sub_resource type="PrismMesh" id=4]

[sub_resource type="BoxShape" id=5]
extents = Vector3( 1, 0.914708, 1 )

[node name="Players" type="Spatial"]

[node name="PlayersSkeleton" type="Skeleton" parent="."]
script = ExtResource( 2 )

[node name="Player 1 Joint" type="PhysicalBone" parent="PlayersSkeleton"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3, 0, 0 )
joint_type = 1
joint_offset = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0 )
body_offset = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3, 0, 0 )
mass = 0.0306122
weight = 0.3
joint_constraints/bias = 0.3
joint_constraints/damping = 1.0
joint_constraints/impulse_clamp = 0.0

[node name="P1CollisionJoint" type="CollisionShape" parent="PlayersSkeleton/Player 1 Joint"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Player 1" type="RigidBody" parent="PlayersSkeleton/Player 1 Joint"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0 )
axis_lock_linear_y = true
axis_lock_angular_x = true
axis_lock_angular_y = true
axis_lock_angular_z = true

[node name="P1Collision" type="CollisionShape" parent="PlayersSkeleton/Player 1 Joint/Player 1"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, -3, 0, 0 )
shape = SubResource( 1 )

[node name="Controller" parent="PlayersSkeleton/Player 1 Joint/Player 1" instance=ExtResource( 1 )]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, -3, 0, 0 )
PlayerPath = NodePath("..")
NonPlayerPath = NodePath("../../../Player 2 Joint/Player 2")
MeshInstancePath = NodePath("../Player1Mesh")

[node name="InnerGimbal" parent="PlayersSkeleton/Player 1 Joint/Player 1/Controller" index="0"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )

[node name="Camera" parent="PlayersSkeleton/Player 1 Joint/Player 1/Controller/InnerGimbal" index="0"]
current = false

[node name="Player1Mesh" type="MeshInstance" parent="PlayersSkeleton/Player 1 Joint/Player 1"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, -3, 0, 0 )

[node name="Player1Capsule" type="MeshInstance" parent="PlayersSkeleton/Player 1 Joint/Player 1/Player1Mesh"]
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="Player1Gun" type="MeshInstance" parent="PlayersSkeleton/Player 1 Joint/Player 1/Player1Mesh/Player1Capsule"]
transform = Transform( -0.0335723, 0, -0.498872, 0, 1, 0, 0.498872, 0, -0.0335723, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Player 2 Joint" type="PhysicalBone" parent="PlayersSkeleton"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0 )
joint_type = 1
joint_offset = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3, 0, 0 )
body_offset = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 0 )
mass = 0.0306122
weight = 0.3
joint_constraints/bias = 0.3
joint_constraints/damping = 1.0
joint_constraints/impulse_clamp = 0.0

[node name="P2CollisionJoint" type="CollisionShape" parent="PlayersSkeleton/Player 2 Joint"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Player 2" type="RigidBody" parent="PlayersSkeleton/Player 2 Joint"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3, 0, 0 )
axis_lock_linear_y = true
axis_lock_angular_x = true
axis_lock_angular_y = true
axis_lock_angular_z = true

[node name="P2Collision" type="CollisionShape" parent="PlayersSkeleton/Player 2 Joint/Player 2"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 3, 0, 0 )
shape = SubResource( 1 )

[node name="Controller 2" parent="PlayersSkeleton/Player 2 Joint/Player 2" instance=ExtResource( 1 )]
transform = Transform( 3, 0, 0, 0, 3, 0, 0, 0, 3, 3, 0, 0 )
PlayerPath = NodePath("..")
NonPlayerPath = NodePath("../../../Player 1 Joint/Player 1")
MeshInstancePath = NodePath("../Player2Mesh")
playerNum = 2

[node name="InnerGimbal" parent="PlayersSkeleton/Player 2 Joint/Player 2/Controller 2" index="0"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )

[node name="Player2Mesh" type="MeshInstance" parent="PlayersSkeleton/Player 2 Joint/Player 2"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 3, 0, 0 )

[node name="Player2Capsule" type="MeshInstance" parent="PlayersSkeleton/Player 2 Joint/Player 2/Player2Mesh"]
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="Player2Gun" type="MeshInstance" parent="PlayersSkeleton/Player 2 Joint/Player 2/Player2Mesh/Player2Capsule"]
transform = Transform( -0.0335723, 0, -0.498872, 0, 1, 0, 0.498872, 0, -0.0335723, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Rod Joint" type="PhysicalBone" parent="PlayersSkeleton"]
transform = Transform( 1.08013, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
joint_type = 1
body_offset = Transform( 1.08013, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
gravity_scale = -10.0
joint_constraints/bias = 0.3
joint_constraints/damping = 1.0
joint_constraints/impulse_clamp = 0.0

[node name="RodCollisionJoint" type="CollisionShape" parent="PlayersSkeleton/Rod Joint"]
transform = Transform( 1.86291, 0, 0, 0, 0.292832, 0, 0, 0, 0.291861, 0, 0, 0 )
shape = SubResource( 5 )

[node name="Rod" type="RigidBody" parent="PlayersSkeleton/Rod Joint"]
axis_lock_linear_y = true
axis_lock_angular_x = true
axis_lock_angular_y = true
axis_lock_angular_z = true

[node name="RodBox" type="CSGBox" parent="PlayersSkeleton/Rod Joint/Rod"]
transform = Transform( 1.2582, 0, 0, 0, 0.24643, 0, 0, 0, 0.287369, 0, 0, 0 )
width = 2.91977

[node name="RodCollision" type="CollisionShape" parent="PlayersSkeleton/Rod Joint/Rod"]
transform = Transform( 1.86291, 0, 0, 0, 0.292832, 0, 0, 0, 0.291861, 0, 0, 0 )
shape = SubResource( 5 )

[node name="HingeJoint" type="HingeJoint" parent="."]
nodes/node_a = NodePath("../PlayersSkeleton/Player 1 Joint/Player 1")
nodes/node_b = NodePath("../PlayersSkeleton/Player 2 Joint/Player 2")

[editable path="PlayersSkeleton/Player 1 Joint/Player 1/Controller"]

[editable path="PlayersSkeleton/Player 2 Joint/Player 2/Controller 2"]
        [gd_scene load_steps=6 format=2]

[ext_resource path="res://TopDownTwinStickController/TDTS_Controller.tscn" type="PackedScene" id=1]

[sub_resource type="CapsuleShape" id=1]

[sub_resource type="CapsuleMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
roughness = 0.0

[sub_resource type="PrismMesh" id=4]

[node name="Player" type="KinematicBody"]

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="MeshInstance" type="MeshInstance" parent="MeshInstance"]
transform = Transform( -0.0335723, 0, -0.498872, 0, 1, 0, 0.498872, 0, -0.0335723, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Controller" parent="." instance=ExtResource( 1 )]
PlayerPath = NodePath("..")
MeshInstancePath = NodePath("../MeshInstance")

[editable path="Controller"]
     [gd_scene load_steps=6 format=2]

[ext_resource path="res://TopDownTwinStickController/TDTS_Controller.tscn" type="PackedScene" id=1]

[sub_resource type="CapsuleShape" id=1]

[sub_resource type="CapsuleMesh" id=2]

[sub_resource type="SpatialMaterial" id=3]
roughness = 0.0

[sub_resource type="PrismMesh" id=4]

[node name="Player" type="KinematicBody"]

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
shape = SubResource( 1 )

[node name="Body" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../..")
material/0 = SubResource( 3 )

[node name="Gun" type="MeshInstance" parent="Body"]
transform = Transform( -0.0335723, 0, -0.498872, 0, 1, 0, 0.498872, 0, -0.0335723, 0, 1, -0.5 )
mesh = SubResource( 4 )
material/0 = null

[node name="Controller" parent="." instance=ExtResource( 1 )]
PlayerPath = NodePath("..")
MeshInstancePath = NodePath("../Body")

[editable path="Controller"]
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
sun_energy = 16.0

[resource]
background_mode = 2
background_sky = SubResource( 1 )
GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�      [remap]

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
              GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݚ[�]Gy���5k�˹�Ƿ�LLb'�ǀKBiR��Pn��%ЇJ�Z���
!�����RԷ�T�B���-�N��� N�(!v��؎��g����͚��̺���9>�x�4g]f������g�/=��B�!�ճ�bѺ I2r�����v��:t:Q5�0�$I�b�\#� 
s�.�^�J���')�QB���N��Ft;֏���Z���Z�u�1!@J��Ǵ��x7y��1!��V�Lȵf4N�c T���(�� � I3�$s� E )��0Q����4c����!��Lr�t���-�!�4�8!�
c<�: �DՄoL�Ţr]H�]cA 	�D)���8e4N��G��*wY�хAJ��B� ����(�K�k�LWs)H��;�Y�Y��1Ea��P)�1��x|���K<�xk-*��:E�k!��n����0�v��')��^셨wV ���vC��� � ծ��UN�PDQ�c�H�`4NX�$izR�B
�<G낒� (9�L���`D�tQk;(���p�J)0��)��*�8Q֖,GJA�D�r�0��i��{��X�o�N�x�6ƒe9�qB�fcQJ��u�8eg�@ ���#P�f���(&�R)�u")�x;�
���(
�D�(R�0c�Rz�;*�DC,��Z�T%
EeU ��4t�0�4˝�N�:�"TY�Y��	�X�P��� ���Ie�M��8ɑR����sg΃���A@�����Rx�^���(�;�����B:;!�Xcʍ�:
Ea�x{��T@���Z�p3Ƥ�F
A���1LH�<Ke{<ci0Ck�>�w��L����u�W*�؉Bdi����`�~��
N<����
ǌ&�-�T��y�ZE�F+�6B ��II���4�1�p�Ye��PՌ)�n�Ȏ7z�� X�������;q�^�-�S�u�]��\��9����o֍3����M�޻� p�>�w��4�����!�
(
�`-��`��(%���ek�4�#T�%d������yk/:�t���t �x���U���}Dx���3�h������+g[p�(��"�=��{�0 �
�L�Q�\d��J��@�)ej��%$C`���E8p���X!^@����t?��	�>{ww��|��j�7E:�n;�����*������2���x�����H�@�R:�Bar2]8י$i�.��� p��s�Z�T*@
�K���ҵʍT~�o׎>�Tc7AgiK|�5k�����$ I�7,��کT)���k9O;�s.ԅ�s]�� �LW��a���\��S�2�(]!�܍������Bx�yM��bL4��*���p�E�x�d��5�Ԉ�E�C������LI�a�)�Q����2��\rc�>P+�!��N� T���⟿�c[z2��etW���η����]ʷ�ۙp�;na��8�_��%�s�&�s�����C�ߑ�Q�2�F	Y�[���ms�{#*=�JJ�m�!��	)�����C5�XRnlX��U�;���7~/]��ӏWĮGx���  Kc�[��
$�.(����Fn�1M��:N��/������.���Hb8�����G^�p�5���C����m7!�O�JC�S꾋*5��m��R�&���$��y�D�3͠5]9��|�qn��Q~|�;�9������ήS�.����ܳ���֮kjlJ/A�;(�,����f�(̫�K�RJ�+e�ZG�D�Rr�P	Q��L���Y�p���� ��:�����ް!�u6i���9Hӷ# ��h?��L$�&�
|�lk/Ж�� ��ZD�����C������p��Kt���w�]���������f� �̅>���8u��Y^ EN��3P��rJ�Y��Rss����M�=�M���_�1+����c�|����uD�b�镰��0�c.��X���6f8NH2��$��U�\Op�x�^�NIA��m5�w�a&:�q3��_��c����#�����x�X^T��S��RW��\���
�T�L�s]xwE)}��
��Bi�ɫL���T5�Y�K�m]H��$͙��C�@/�a�����=�ʩ'D�Լ,���e�-/L�JAE����[R�~C����
0-�u�a����4g0t9����Px$cF�5W��[��o^��n'��T��y�Z�*ι6uFi��W
�1袨SD���/�d�:]2e:f���t�]*�2���?�����31/���e�;��a�8|`w{�y�Rcc�8b3]@���n�)K��
뵸t����ؿ����N,PhC�d\^sy|s#��8�ˡ�� O<J�x����&���#W��l
��J7j�XD�hPX��O��ع��V��#^4�D�&߶��<��8IY�ǹ�&};�A�G/�"�5<{މ78ˮ�AkW�ƙgBB+o':��Y� �z[fb��t%��������a8NcFqF��1�1nΏ}�� |��CN���<�����]w+�ZRO�1�յ�,/(LI�S�PI���Uj/�ܠ�<�����	�gh�	�k�C�R26���pb?Ƭ�d�4�'��#ό���γ���\�]�p��n|:��i�Y�����w#�|���)��Z������kH��ߖ�������'1-ך�Q�嵘8�_Lc�R�񾯳P��4E/_<_!i�eg��/q	�da�C�d+�Ŗ�`%Mu�f�mPh'�*�l޴.�3V�ƌ���+���>n��e���!����n���oq� ��$�-�������;()k���,Ź"`3l��I�4�2%3�1�^��6&͊���η%�X�}�|�����F(
�=�}�s�kqF��:�T�*`aΝf��_���H��j�LhV��z�r����m@���Q�����$��|�_��ط��_���e!n_�4+*� �Gr�߉z�Ћ����Yp���kyx�&m�!S�6ɟ�(���b�r�g;9��p��� ����9�;�j��<?`���/�늤�Z� h�Q�=e�u�LU�'a_r�Y�$�Fk3SL�|�2��������a0�?|�՜<����M�����q������!�%䤿o+󴕟"tB_���q�W0��������Z�����޷�C7�ko��Kp�>��UF�r�3Gq��0!N�*o�*��i���f�c���rI��n�C7�@���YA��عͰ���Gk��������퓸o>
9�+d�|М�u�[�٢@�j�ǉO�����!�:k���׳8ߡ7�RP!��N2�Ȭ�4+k#�8���7�_G���O|�^������>	�}����g�d�qݞ%�]w�_��s��ÖES�_����^8��o��⒋�	�G���X8y^8��EK�C.���[���'�?A������{�~��_.��yȮ�����~����]�$Ks��mb��
L2OL���p�A^�۶C')�)�$���1)`�"�  ��҅�{�y��̢�|��9�<���]��pp�b�?����r�0��;!�s��Ӡf-(f��dH=����X�^�����1�Gt��&��Ј>�Ν�����~��֫����^n���p	^��K����%^~��k��
�z��D��~�Ԃ*�H\Z�0�en��M�Z��%Gd �o��[�����E��{�F=VV�L7{`l���.���9ع�}��O�-�.H3W�T@��x����w*`'Hޤ��dמ��0�Љ����,P����8��:`W:����=���?m�6�3BA�1���c�b��R�<��ڕŰ� �)���)o��5`JĔ)SF��>t�X���?�P��|�A�{��d9,�u�6��J2����>t:����,�z�6�{�ܼC��y��֧�.�*�fǤ5%j�U�Rvv-;��p-��+��Z*�L0�9t;��*���]4���!|�_?��?�an��0�`i���)�����L��W'+�Q������7跖��su!��7Az&4OL a�b�(�HA7�^W�ee�>����9x���ot#Hvþ݋0���Tֈ�7�����c��T�#<�A|���/����1"
!�J��C~0֜yy̏�>C ���'R0]��(#��WF���\��1�����o%�x7��g��K���mw(FcEa�<~.��?8˟��5�9k�땊�	�6���hS��pS�x��WT��&���e)-��� 7��=G���\�5<�$#����x��)�7���k��V��@m0�:��J�P�2Xrnk�/;o��O��>�m�aȿ�!����?t�ݹ	�u��Ly�g��,w��P[� �]�1,,�࿏�c^8��1���7�vEh^�\P�B��;�-�.�dnqs�RcpAP��S/�����1DN<�кΕB�.�h��x�5��XC��B�ъ
����]���)�$lT��ܗ�nܬ������ƚk!񯛡k	��f\ ��.SlBɄ�c
�lo���Z�`�U�y��ϫf!I��q�ȩC�Gx����c���r��4lf�M�/�=����z~�}Ix�[l!�;���x��Z��?+3��H-�������f��8`+�p���6n*k-�}��{�"�gY��҉B�@��?�sC�����HwX���L�9�ܐ[o�ߺ5�����8�u���̧��p�`�-|"����"fy���HҺ��>�.�Q�e���"o춖�Ly�-�,g�u�w������N0a�s;q[�c9}�<�����W�N����������u��������3���$Ix��i�������;��K��;���g����0̝뛅kQ�8��/^�[ǎ#�ᯅ��`�!��𕯺�{�q'�s_�$�a4��\^�ɟ�b��ʎYQӯ~�(῾�Dj�~غ
�?���:�*��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/thumbnail.png-3f545d161fd110f6ef4e5b6d4c7c77a7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://thumbnail.png"
dest_files=[ "res://.import/thumbnail.png-3f545d161fd110f6ef4e5b6d4c7c77a7.stex" ]

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
               [remap]

path="res://Pickups.gdc"
              [remap]

path="res://Test Scene/Conjoined_Players.gdc"
         [remap]

path="res://TopDownTwinStickController/Bullet.gdc"
    [remap]

path="res://TopDownTwinStickController/BulletKinematicBody.gdc"
       [remap]

path="res://TopDownTwinStickController/BulletSphere.gdc"
              [remap]

path="res://TopDownTwinStickController/Controller.gdc"
[remap]

path="res://TopDownTwinStickController/Controller_Original.gdc"
       [remap]

path="res://TopDownTwinStickController/Controller_Tom.gdc"
            [remap]

path="res://TopDownTwinStickController/Rod Joint.gdc"
 [remap]

path="res://TopDownTwinStickController/Skeleton.gdc"
  [remap]

path="res://TopDownTwinStickController/Turret.gdc"
    �PNG

   IHDR   @   @   �iq�   sRGB ���   gAMA  ���a   	pHYs  �  ��+  �IDATx^�[{���q�{�u�y�O�������@Bp(�%����!REJT�R�6mS�M�>ժ��j�F�jh�&JPQH��ib�yP1�����}ݽ�{����9���}ٻI������kΜ�9s��}��?>�j-�H��h���	��W�T�P(I�R�Z�&����푞�����,g�R*W����S��R�MIgg�x ��+}A�������%�5G�.���JMiٗyt�d2�2�8�:�u���
'3�ժC�3,�ʒY���Ҳds�+��t5GS�V����*Ұͣ�T��6�/JH�,�S�or+���rN�29Y�du,��2dy5��)IS�	Q*�U���6T��P�*��&$��8�l�X�N$a(�9c�~�/cLϋ�:��U��xʷ��X��xY��k��l�W�,�,C12�E�2y([TE��`��pJs �ݕn���N�b�� ��vKGGR˞�|iX�"1yu��K�K��P1�4'�rr�9Ԩ��C��e7y5���%B���	Z\���]*�,���P��J�� �B�c=wt(#u5����J����:���r��h��XJ��TO��ƕVʓ�ː���g�^� �;��-�4�����K�)�q��Z�#��P�P��tE�3����1 �Uww�)�B&���ʓ.V�a����$SP��3O�1�:D�^C���x=��dpƹ,������a�+*oyLDJ��|�]2��Vn��6���L1�S1�Y7Sd�<;�8��۫��h�8O k�A��L8���<-��T�֡Ѻ w ����4�W�c�-biX�}{XNRx¯��4%2>*r�Ҩ6r)�mOtQt�W��m��۷I.5x�g���C��J��Q���Ny�Q�3�Ϣ'���$<��40��c��r�%c�7���������"&�;�P����r䔹##cv���=��K�,$7�2��=���r)���z�Jt�3�0�<�e�4����x�����"��v�r
����dz�J�d���zz��m{:d����R�cAkr˻v躽~Rd��M����ė�1`�	5�`�dHGe9��%�H��c�;������)��g��fD]FU7p82$�}S��&;8��7A9�)���D6O�� 1��%���wȖ];�Tv��Şc�/s�;�E"�E7�A�"D�7�tI�p�a`.n�9�:�j4�ӟ�+ɨ͵{aN�1�r(3����PH����u0�*�bԦttm5��/O�L��p��nI�3'x. ��'�p<���R.���=��� p���T6��8�尀�~�o2#BRC���~"�p��3p��sJ�>�Bi���\���̞�<{2�t�P����AGDp��0|����S��P �X������te��bF������f�?��?�Swݛ�rm�"�.��	Q�%\�����{w�8&�,��'���a�U�L5�u9����ު�X�a�o	�+�I� ���ˀ�4�m���ϫ���͂O��|^��L����<�g�D��0̸�6�!��{n������\>�i}'��S�X�A��΃ ���#Z!��yC�Eޗ��V8���f��9}�t���v�g!���3Q�W�Qq�W ����T#�_��z�
�!��!�x��6+�Fв����9�Γ/�+��.�}�K�i��{gd�&l���<�(29���X���)�d Ы����`cjֶG=Rcy�B��h�XiL�1�Mk�B0�y������#D�=zL�w��,CS��k���QF�"/_���O�:�7I��\�<"sVIGp	�	J�
�BW~Bc��g�%��j��-�Xi �Q��V��WA�(�@+�ss����n��F�6s3������c.�{�T��%�V�R0C��F�n@#2&��W��r���.V��Σ�k��v�Ǿ�#����=�<�������p�Dx���36��c��b�{�����J��� /�R0�0�����������=��=X��A�	 ��u�U���<��o�l�R ���ҫ�E��w�T%x�L�� ����v ���x��7i{�e�!O41�4��l�y+<���1��y;�"�W��eBv����?��f�=pg[�z�qG� yq�y����y�F���.�6�'TA"C�r��N�c��9�tKS�q����b�6�<<|l܀-r����L�5;n����@?;$?ǲ^~b��}�]���C��Xt�l��/35��kS��m�A��������ӿ�y�ռ���In��X�21*�w��3\�?�
��9�,�>�2�vV�F�!����?K�8eksu�P�"tm?#Rd�omj\���!��p��ق�q
g���E^yM$��*ps�:�(̸��@������.�E�����2�D¢�U�uZ卑��W��ar�Z�z.�^Ϲ6al�w���� &������޽�f��}���d9oo�C��;�7 ��ACV��vԼ%�(ԡ���h��8��!4_d�5�	C"����(��[��X
C"3;E>p��oڣ��g}j�v��m��) ]�I\����@����dQV�Ϸǉ��W�V��� �)_TP�Ŝ3tӾ�>���Yy�/ȶa�m�q��|1a� ���C�4D�~.�H4tb�S���m��|�q	h�G���5���qT�7��k�<�fpu]��ؿ�1�7���#OV�.�~`^P������F�9���p��������<R���ю¬�r4�gl���зD?4#�+ �^6W�y���o�n�y�w��C��ϡ�@��wʶ����sֹ�\��~5�~�ߥ��	�HN�؉ �~`J���ˠ�~a�'6�[!����W�Œ��8�L���j���}U�=!�c�$�z'/G�+�ն������SF0�t�������b����A8pJ��a�і�?�4#����u���"��]�����_��DvN�y�� ��ƃ�����>��=�_���ڙS�?=	jޒ:h*�ٯ���:���/�3�	lʣ�u�=����I?�,�1�O}[^��ȥK�G0$�	���l��4�F����z@\��4�5u	`3��o	����|���٨yٺ��6g�-�D������_9���?x�d
"��P:Yb�YY�^J�sX� qy����(X�˹J�+h�ko�vڳ�+�y8$O������c������"7�>�7�[D�u9�q>�3,.�͖��!8 �^!2�J������\�u�럖��Y�#�u3��-e�Ǧn�-����gd�҈|�W?�_���}�)#�󃌽i=���F�xq�A�C�Ͽt�Y�5��z*[�G����7㴆�9,��1O/2�YĀLVJ�<�ȩ���� 
�!�)D���C҅s�`!�O�<�_�6*lPρ���i}Z���
#�h���?��.ߠ]Ë�Z4T����Ӹ�v�Nl|�=�̵��{��7b0�$�%��AxL�O�3�#L!(�����c"� �8��``㕷;$s�mG������V�-��%@`�#�� B:`�ش��5!�Prʯ���̎���N-�\�dA�L`'�}��:d����bǏ����}XN�F�ω� �~I䩟`\蓬��r��>|��~�ӛ>l�<m!h�ȣBSel��fxzT�O@q(7 �����L�b�p���ʃh��Fia|4-�^19�_y�Pdh����!���I�?c���Y�0���D�}dN.�y��%=�_�y�� |�n0�[�V�o�`���� ��r�^L҈�}P�Jr�)�S̳�!�i ��:x�(?�++�M�C7�vDzx���{6����!ǆ�pJ{S�ۭ��~d�i��)�Ay';[4B�����Fa=���cvz1�S�;~M1��B5Dd�4�F�%��O����`�~XB��"�|�(�ӀPv�O1��>L#�u�O�����B���?A@s|CM��G���n��`nO�����n��=1��s�����W�I�cWX�%7���Cc3r�߳X��#���gen��ǟ����s�g1�������?��ˏ���
pp��u<��K"�����D��S�Ⱥ�!��=�/�)i�*_[��C��t���!�c�|�`�߄�}wl�Ǟ~C�ڿ�g^?���X����Z+O�=jд-��!R�~�0�r~���Yׄ �^N#xc`{�!�5��넇zX����� ��D0:~3�21���
2�݀o|����N�:p1�W$�2T�+�
X�v��Ȩ!h@��<#8a)W��s���j���J�o.�5Ad�Y��!�m:2���6 o�h�ש`;�=�FPz<੆��z��t��{��{������c�?.����9X����̫\�"֗Z��U�e��K� y�$Ď�Tq�42��ӓ�P��]Ӳ�"��!�>��~
���m"��k�<���[��m��Y����n��<-�34�w�z\Bdv6�*�HDo�|kd f��*� �p���/����8�e!�:�ָu���fh�-���v�� ��\�T��y�Fa����5l�KX�Cu"�=����i��#O��4�w�jW��n�[��<��j�@_m�d~�o~�����q/NzW��}�&�_9�*8���"�kQ:���O��3�T�w��Aо�Tq��Wѧ�:=p�a+��K���F�
_E�6`=�.ϸ�Q� � �؆K_[#p�@_CЗAH�M1�+B?h��1����A�b@}wU�%c^j o*Md��3-C�b".�"k팰v���
Q0@ܰV8��1{iItu�8?f�h���q���럝����p%oh?��"�z�چ�ğ��3͔���|����+��<�.E���pa�F��.gK2��,./��g/K�Ҭ^a��x��ܧ�m�nG �h!z(����4���7ɞ]҃K��� [_����E9��%�).�N�?���A<᲼��Y-�����K�||�(��s�`mY?_[���*��xx\����?��<vX�6�wk�Th�&�g��k��r��7���<��!��&hHѵ5�#��-���e�U���<-�:�.�$��ob�s��
��/�3�ֹܰ���	x���xyN���1I�'�ͼ��m�?������}���~��2� ����/,��?}C������־�_���A����    IEND�B`�         ECFG'      _global_script_classes             _global_script_class_icons             application/config/name$         Top Down Twin Stick Shooter    application/run/main_scene(          res://Test Scene/Test Scene.tscn   application/config/icon         res://thumbnail.png    input/ui_acceptx              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index          pressure          pressed           script         input/ui_select(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index         pressure          pressed           script         input/ui_cancel(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index         pressure          pressed           script         input/ui_left(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_right(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_up(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_down(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/move_back�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/look_up�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script         input/look_back�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script         input/look_left�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script         input/look_right�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script         input/shootT              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/rotate_left(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Q      unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index         pressure          pressed           script         input/rotate_right(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   E      unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index         pressure          pressed           script      
   input/jump(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index          pressure          pressed           script         input/ui_leftP2               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script         input/ui_rightP2               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script         input/ui_upP2               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script         input/ui_downP2               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script         input/move_upP2�              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       ��   script         input/move_backP2�              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       �?   script         input/move_leftP2�              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis       
   axis_value       ��   script         input/move_rightP2�              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis       
   axis_value       �?   script         input/look_upP2�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       ��   script         input/look_backP2�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       �?   script         input/look_leftP2�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       ��   script         input/look_rightP2�               deadzone      ?      events              InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       �?   script         input/shootP2�              deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script         input/jumpP2               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index          pressure          pressed           script      )   rendering/environment/default_environment          res://default_env.tres     