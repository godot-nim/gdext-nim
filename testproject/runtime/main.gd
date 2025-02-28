extends "res://test_base.gd"

@onready var node = $GDExtNode

var signal_arg0_executed = false
var signal_arg1_executed = false


# Called when the node enters the scene tree for the first time.
func _ready():
	test_func()
	test_virtual_func()
	test_grobal_func()
	test_enum()
	exit_with_status()

func test_func():
	node.arg0_noret()
	assert_equal(node.arg0_noret_result, "arg0_noret()")

	node.arg1_noret(node.arg1_ret(node.arg0_ret()))
	assert_equal(node.arg1_noret_result, "arg1_noret(arg1_ret(arg0_ret()))")

	assert_equal(node.default_value_simple(), "default_value_simple(default)")
	assert_equal(node.default_value_simple("custom"), "default_value_simple(custom)")

	assert_equal(node.default_value_complex("a", "b"), "default_value_complex(a b default value)")
	assert_equal(node.default_value_complex("a", "b", "c"), "default_value_complex(a b c value)")
	assert_equal(node.default_value_complex("a", "b", "c", "d"), "default_value_complex(a b c d)")

	assert_equal(node.varargs_simple(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")
	assert_equal(GDExtNode.varargs_static(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")
	assert_equal(node.varargs_concrete(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")

	assert_equal(node.most_complex("a", "b", "c", "d", "e", "f", "g"), "a b c d e f g")

func test_virtual_func():
	# $VirtualNode01.virtualMethod()
	assert_equal($InheritedNode01.virtualMethod("from GDScript"),
	"virtualMethod of InheritedNode01 is called from GDScript")
	# $VirtualNode02.virtualMethod()
	assert_equal($InheritedNode02.virtualMethod("from GDScript"),
	"virtualMethod of InheritedNode02 is called from GDScript")

func test_grobal_func():
	NimMain.signal_arg0.connect(_on_nim_signal_arg0)
	NimMain.signal_arg1.connect(_on_nim_signal_arg1)
	NimMain.arg0_noret()
	NimMain.arg1_noret(NimMain.arg1_ret(NimMain.arg0_ret()))
	NimMain.signal_arg0.emit()
	NimMain.signal_arg1.emit("signal")

	NimMain.exec_checks_use_api_from_toplevel()
	assert_true(signal_arg0_executed and signal_arg1_executed)

func test_enum():
	assert_equal(node.echoTestEnumA(GDExtNode.EnumA1), GDExtNode.EnumA1)
	assert_equal(node.echoTestEnumB(GDExtNode.EnumB1), GDExtNode.EnumB1)
	assert_equal(node.test_enum_a, GDExtNode.EnumA2)
	assert_equal(node.test_enum_b, GDExtNode.EnumB2)
	node.test_enum_a = GDExtNode.EnumA3
	node.test_enum_b = GDExtNode.EnumB3
	assert_equal(node.test_enum_a, GDExtNode.EnumA3)
	assert_equal(node.test_enum_b, GDExtNode.EnumB3)
	assert_equal(node.echoVector2Axis(Vector2.AXIS_X), Vector2.AXIS_X)

	assert_equal(node.echoTestFlags(GDExtNode.Flag1), GDExtNode.Flag1)
	assert_equal(node.echoTestFlags(GDExtNode.Flag2 | GDExtNode.Flag4), GDExtNode.Flag2 | GDExtNode.Flag4)
	assert_equal(node.test_flags, GDExtNode.Flag2)
	node.test_flags = GDExtNode.Flag3
	assert_equal(node.test_flags, GDExtNode.Flag3)
	node.test_flags = GDExtNode.Flag1 | GDExtNode.Flag4
	assert_equal(node.test_flags, GDExtNode.Flag1 | GDExtNode.Flag4)

func _on_nim_signal_arg0():
	signal_arg0_executed = true
func _on_nim_signal_arg1(what):
	assert_equal(what, "signal")
	signal_arg1_executed = true
