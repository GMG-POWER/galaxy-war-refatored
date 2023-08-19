extends Node2D



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://scn/Cena_Principal.tscn")




func _on_potuações_pressed():
	get_tree().change_scene_to_file("res://scn/Cena_pontuacao.tscn")




func _on_sair_pressed():
	get_tree().quit() 
