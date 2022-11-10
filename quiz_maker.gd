extends Node2D


func _ready():
	add_items()

onready var correct_answer = $bg/label_correct_answer/correct_answer
onready var previous_button = $buttons/previous
onready var save_button = $buttons/save
onready var next_button = $buttons/next
onready var ques_number = $bg/question_number

var counter = 1
var max_questions = 10

func add_items():
	correct_answer.add_item("A")
	correct_answer.add_item("B")
	correct_answer.add_item("C")
	correct_answer.add_item("D")


func _on_save_pressed():
	#SAVE JSON FUNCTION HERE
	if counter<max_questions:
		next_button.disabled = false


func _on_next_pressed():
	if counter<max_questions:
		counter+= 1
		ques_number.text = str(counter)
		next_button.disabled = true


func _on_previous_pressed():
	if counter>1:
		counter-= 1
		ques_number.text = str(counter)


func _on_cancel_pressed():
	get_tree().quit()
