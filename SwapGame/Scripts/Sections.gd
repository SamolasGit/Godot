extends Node2D

var section1 = preload("res://Scenes/Section.tscn")
var section2 = preload("res://Scenes/Section2.tscn")
var section3 = preload("res://Scenes/Section3.tscn")
var section4 = preload("res://Scenes/Section4.tscn")
var section5 = preload("res://Scenes/section_5.tscn")
var section6 = preload("res://Scenes/Section_6.tscn")
var section7 = preload("res://Scenes/Section7.tscn")
var height = 0
var len = 350


var max_ob = 100

func _ready() -> void:
	for i in range(max_ob):
		var randomic = randi_range(1,7)
		print(randomic)
		if randomic == 1:
			var Obstacle_scene = section1.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 2:
			var Obstacle_scene = section2.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 3:
			var Obstacle_scene = section3.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 4:
			var Obstacle_scene = section4.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 5:
			var Obstacle_scene = section5.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 6:
			var Obstacle_scene = section6.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			height -= 48
			print(self.get_child_count())
			print(Obstacle_scene.global_position)
		elif randomic == 7:
			var Obstacle_scene = section7.instantiate()
			Obstacle_scene.global_position= Vector2(len *(i+1),height)
			self.add_child(Obstacle_scene)
			print(self.get_child_count())
			print(Obstacle_scene.global_position)

