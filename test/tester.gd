extends Node

@onready var node = $GDExtNode

var signal_arg0_executed = false
var signal_arg1_executed = false


# Called when the node enters the scene tree for the first time.
func _ready():
	test_func()
	test_grobal_func()

func test_func():
	node.arg0_noret()
	assert(node.arg0_noret_result == "arg0_noret()")

	node.arg1_noret(node.arg1_ret(node.arg0_ret()))
	assert(node.arg1_noret_result == "arg1_noret(arg1_ret(arg0_ret()))")

	assert(node.default_value_simple() == "default_value_simple(default)")
	assert(node.default_value_simple("custom") == "default_value_simple(custom)")

	assert(node.default_value_complex("a", "b") == "default_value_complex(a b default value)")
	assert(node.default_value_complex("a", "b", "c") == "default_value_complex(a b c value)")
	assert(node.default_value_complex("a", "b", "c", "d") == "default_value_complex(a b c d)")

func test_grobal_func():
	GdextTester.signal_arg0.connect(_on_nim_signal_arg0)
	GdextTester.signal_arg1.connect(_on_nim_signal_arg1)
	GdextTester.arg0_noret()
	GdextTester.arg1_noret(GdextTester.arg1_ret(GdextTester.arg0_ret()))
	GdextTester.signal_arg0.emit()
	GdextTester.signal_arg1.emit("signal")

	GdextTester.exec_checks_use_api_from_toplevel()
	assert(signal_arg0_executed and signal_arg1_executed)

func _on_nim_signal_arg0():
	signal_arg0_executed = true
func _on_nim_signal_arg1(what):
	assert(what == "signal")
	signal_arg1_executed = true
