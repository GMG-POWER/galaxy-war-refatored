extends Node2D

var gerador = RandomNumberGenerator.new()
var pontos = 0

var instMeteoro = preload("res://scn/jogo/objetos/meteoro.tscn")
#var instMissel = preload("res://scn/jogo/nave/lazer.tscn")
var instSpace = preload("res://scn/jogo/bg_space/space.tscn")


func _ready():
	$Timer.start()
	gerador.randomize()
	
func criarAsteroid():
	var instance
	instance = instMeteoro.instantiate()
	instance.position.y = 0
	instance.position.x = 535
	add_child(instance)

func _on_Timer_timeout():
	$Timer.wait_time = 4.5
	criarAsteroid()
	$Timer.start()

func _on_Portal_resgatou_um_animal_com_o_portal():
	pontos += 1
	$Label.text = str(pontos)

func _on_Cena_Principal_draw():
	$ambient.play()

func __on_vector_resgatou_um_animal_com_o_portal():
	pontos += 1
	$Label.text = str(pontos)

func _on_button_pressed():
	
	if $Label2.text == $TextEdit.text:
		pass
	else:
		print("As strings são diferentes.")
	$TextEdit.text=""
