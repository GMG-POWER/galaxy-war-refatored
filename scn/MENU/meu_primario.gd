extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://CENAS/modo de jogo/modo_de_jogo.tscn")




func _on_potuações_pressed():
	get_tree().change_scene_to_file("res://MENU/control.tscn")




func _on_sair_pressed():
	get_tree().quit() 