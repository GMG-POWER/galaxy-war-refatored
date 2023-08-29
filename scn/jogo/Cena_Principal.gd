extends Node2D

var pontos = 0

var instMeteoro = preload("res://scn/jogo/objetos/meteoro.tscn")
var instShot = preload("res://scn/jogo/projetil/plasma_shot.tscn")
var instSpace = preload("res://scn/jogo/bg_space/space.tscn")
var cena_recarregada = preload("res://scn/jogo/projetil/plasma_shot.tscn").instantiate()

func _ready():
	$Plasma.queue_free()
	$Timer.start()
	
func criarAsteroid():
	var instance
	instance = instMeteoro.instantiate()
	instance.position.y = 0
	instance.position.x = 576
	add_child(instance)
	
func AtirarPlasma():
	if get_node_or_null(NodePath("Plasma")):
		$Plasma.visible = 1
		$Plasma.freeze = 0

func _on_Timer_timeout():
	$Timer.wait_time = 4.5
	criarAsteroid()
	$Timer.start()

func _on_Cena_Principal_draw():
	#$ambient.play()
	pass
	
func _on_nave_meteoro_atingi_nave():
	pontos -= 1
	$Label.text = str(pontos)
	
func _on_button_pressed():
	if $Label2.text == $TextoOriginal.text:
		pass
	else:
		print("As strings são diferentes.")
		
func _on_btn_editar_texto_pressed():
	if $Label2. == $TextoOriginal.text:
		pass
	else:
		print("As strings são diferentes.")

func _on_plasma_plasma_atinge_meteoro():
	pontos += 1
	$Label.text = str(pontos)
	cena_recarregada.queue_free()
	


