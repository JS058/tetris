extends Node2D

var board = []
var t_block = [
	[0, 1, 0],
	[1, 1, 1],
	[0, 0, 0]
]
var i_block = [
	[0, 0, 0, 0],
	[1, 1, 1, 1],
	[0, 0, 0, 0],
	[0, 0, 0, 0]
]
var o_block = [
	[1, 1],
	[1, 1]
]
var s_block = [
	[0, 1, 1],
	[1, 1, 0],
	[0, 0, 0]
]
var z_block = [
	[1, 1, 0],
	[0, 1, 1],
	[0, 0, 0]
]
var j_block = [
	[1, 0, 0],
	[1, 1, 1],
	[0, 0, 0]
]
var l_block = [
	[0, 0, 1],
	[1, 1, 1],
	[0, 0, 0]
]

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
	for i in range(t_block.size()):
		for j in range(t_block[0].size()):
			if t_block[i][j] == 1:
				draw_rect(Rect2((j+3)*32, i*32, 32, 32),Color(1.0, 0.0, 0.0, 1.0),true)
