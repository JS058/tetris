extends Node2D

var board = []

func _ready():
	for i in range(20):
		board.append([])
		for j in range(10):
			board[i].append(0)
			
	print(board)

func _draw():
	for i in range(board.size()):
		for j in range(board[0].size()):
			draw_rect(Rect2(j*32, i*32, 32, 32),Color(0.2, 0.2, 0.2, 1.0),false,2.0)
