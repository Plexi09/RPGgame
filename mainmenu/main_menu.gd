class_name MainMenu
extends Control

@onready var load_game_button = $"MarginContainer/HBoxContainer/VBoxContainer/Charger_une_partie" as Button
@onready var new_game_button = $"MarginContainer/HBoxContainer/VBoxContainer/Nouvelle_partie" as Button
@onready var settings_button = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quitter as Button

@onready var load_game_menu = preload("res://mainmenu/load_game.tscn")
@onready var new_game_menu = preload("res://mainmenu/new_game.tscn")
@onready var settings_menu = preload("res://mainmenu/settings.tscn")

func _ready():
	new_game_button.button_down.connect(on_load_button_down)
	load_game_button.button_down.connect(on_new_button_down)
	exit_button.button_down.connect(on_exit_pressed)
	settings_button.button_down.connect(on_settings_pressed)


func on_load_button_down() -> void:
	get_tree().change_scene_to_packed(load_game_menu)	


func on_new_button_down() -> void:
	get_tree().change_scene_to_packed(new_game_button)


func on_settings_pressed() -> void:
	get_tree().change_scene_to_packed(settings_button)


func on_exit_pressed() -> void:
	print("Good Bye !")
	get_tree().quit()
