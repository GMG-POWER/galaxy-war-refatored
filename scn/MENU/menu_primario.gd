extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_jogar_dificuldade_pressed():
	#get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_jogar_dificuldade").disabled = 1
	#get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_pontuacao").disabled = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_jogar_dificuldade").visible = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_pontuacao").visible = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_sair").visible = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_jogar_dificuldade").mouse_filter = 2
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_historia").position = Vector2(0.0,155.0)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_historia").visible = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_casual").position = Vector2(0.0,107.0)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_casual").visible = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_voltar").position = Vector2(0.0,203.0)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_voltar").visible = 1
	get_node("HBoxContainer/Label").text = "teste"

func _on__voltar_pressed():
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_jogar_dificuldade").visible = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_pontuacao").visible = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_sair").visible = 1
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_jogar_dificuldade").mouse_filter = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_historia").visible = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_casual").visible = 0
	get_node("VBoxContainer/HBoxContainer/VBoxContainer_/_voltar").visible = 0
	
func _button_pressed():
	print("Hello world!")
	#get_tree().change_scene_to_file("res://scn/MENU/modo_jogo/modo_jogo.tscn")




func _on_potuações_pressed():
	get_tree().change_scene_to_file("res://MENU/control.tscn")





func _on_sair_pressed():
	get_tree().quit()
