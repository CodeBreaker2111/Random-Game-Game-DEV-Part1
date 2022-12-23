extends Node2D

var playing = true
var rng = RandomNumberGenerator.new()
var lives = 3
const enimy1 = preload("res://Enimy1.tscn")
const end = preload("res://Level_End.tscn")
signal timesUp

func _process(delta) -> void:
	var levelTime = $Level_Timer.time_left
	$Label.text = String(lives)
	$Level_Time.text = "%.1f" % levelTime
	if lives == 0:
		dead()


func _on_Spawn1():
	if playing == true:
		var thing = enimy1.instance()
		thing.position.x = rng.randi_range(0, 700)
		add_child(thing)
		$Spawn1.start(rng.randi_range(5, 9))
		thing.connect("death", self, "_on_death")

func _ready():
	rng.randomize()
	if Settings.BG == false:
		$Back_Ground.hide()
	if Settings.BG == true:
		$Back_Ground.show()

func _on_death():
	lives -= 1


func _on_Spawn2_timeout():
	if playing == true:
		var thing = enimy1.instance()
		thing.position.x = rng.randi_range(0, 700)
		add_child(thing)
		$Spawn2.start(rng.randi_range(7, 10))
		thing.connect("death", self, "_on_death")


func _time_up():
	playing = false
	get_tree().call_group("enimy", "leave_pls")
	LevelFait.won = true
	LevelFait.lives = lives
	get_tree().change_scene_to(end)

func dead():
	playing = false
	get_tree().call_group("enimy", "leave_pls")
	$Level_Timer.stop()
	LevelFait.won = false
	LevelFait.lives = 0
	get_tree().change_scene_to(end)
