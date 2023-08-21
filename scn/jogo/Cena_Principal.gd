extends Node2D

var gerador = RandomNumberGenerator.new()
var pontos = 0

var instNave = preload("res://scn/jogo/nave/nave.tscn")

var instSpace = preload("res://scn/jogo/bg_space/space.tscn")


func _ready():
	$Timer.start()
	$_timer_space.start()
	gerador.randomize()
	
func criarAsteroid():
	var instance
	instance = instNave.instantiate()
			
	instance.position.y = 0
	instance.position.x = 500
	instance.rotation = gerador.randf_range(-1.5,1.5)
	add_child(instance)

func criarSpace():
	var instance_bg
	instance_bg = instSpace.instantiate()
	instance_bg.position.y = 0
	instance_bg.position.x = 560
	add_child(instance_bg)

func _on_Timer_timeout():
	criarAsteroid()
	$Timer.start()
	
func _on__timer_space_timeout():
	criarSpace()
	$_timer_space.start()

func _on_Portal_resgatou_um_animal_com_o_portal():
	pontos += 1
	$Label.text = str(pontos)

func _on_Cena_Principal_draw():
	$ambient.play()


