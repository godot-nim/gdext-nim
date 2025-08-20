extends "res://test_base.gd"

@onready var node = $GDExtNode

var signal_arg0_executed = false
var signal_arg1_executed = false


# Called when the node enters the scene tree for the first time.
func _ready():

	test_func($FunctionTester)
	test_func(FunctionTester.new())
	test_virtual_func()
	test_grobal_func()
	test_enum($EnumTester)
	test_enum(EnumTester.new())

	exit_with_status()

func test_func(node: FunctionTester):
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
	assert_equal(FunctionTester.varargs_static(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")
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
	RuntimeTest.signal_arg0.connect(_on_nim_signal_arg0)
	RuntimeTest.signal_arg1.connect(_on_nim_signal_arg1)
	RuntimeTest.arg0_noret()
	RuntimeTest.arg1_noret(RuntimeTest.arg1_ret(RuntimeTest.arg0_ret()))
	RuntimeTest.signal_arg0.emit()
	RuntimeTest.signal_arg1.emit("signal")
	RuntimeTest.emit_signal_arg0()
	RuntimeTest.emit_signal_arg1("signal")

	RuntimeTest.exec_checks_use_api_from_toplevel()
	assert_true(signal_arg0_executed and signal_arg1_executed)

func test_enum(node: EnumTester):
	assert_equal(node.echoTestEnumA(EnumTester.EnumA1), EnumTester.EnumA1)
	assert_equal(node.echoTestEnumB(EnumTester.EnumB1), EnumTester.EnumB1)
	assert_equal(node.test_enum_a, EnumTester.EnumA2)
	assert_equal(node.test_enum_b, EnumTester.EnumB2)
	node.test_enum_a = EnumTester.EnumA3
	node.test_enum_b = EnumTester.EnumB3
	assert_equal(node.test_enum_a, EnumTester.EnumA3)
	assert_equal(node.test_enum_b, EnumTester.EnumB3)
	assert_equal(node.echoVector2Axis(Vector2.AXIS_X), Vector2.AXIS_X)

	assert_equal(node.echoTestFlags(EnumTester.Flag1), EnumTester.Flag1)
	assert_equal(node.echoTestFlags(EnumTester.Flag2 | EnumTester.Flag4), EnumTester.Flag2 | EnumTester.Flag4)
	assert_equal(node.test_flags, EnumTester.Flag2)
	node.test_flags = EnumTester.Flag3
	assert_equal(node.test_flags, EnumTester.Flag3)
	node.test_flags = EnumTester.Flag1 | EnumTester.Flag4
	assert_equal(node.test_flags, EnumTester.Flag1 | EnumTester.Flag4)

func _on_nim_signal_arg0():
	signal_arg0_executed = true
func _on_nim_signal_arg1(what):
	assert_equal(what, "signal")
	signal_arg1_executed = true
