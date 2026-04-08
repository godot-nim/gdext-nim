extends "res://test_base.gd"

@onready var node = $GDExtNode

var signal_arg_0_executed = false
var signal_arg_1_executed = false


# Called when the node enters the scene tree for the first time.
func _ready():

	test_func($FunctionTester)
	call_deferred("test_rpc_func", $FunctionTester)
	test_func(FunctionTester.new())
	test_virtual_func()
	test_grobal_func()
	test_enum($EnumTester)
	test_enum(EnumTester.new())
	test_rename()
	test_resource()
	test_exported_ref($ExportedPropRefTester)

	call_deferred("exit_with_status")

func test_resource():
	assert_true(GdExtResource.nimtest())
	var resource = GdExtResource.create()
	assert_equal(resource.get_reference_count(), 1)

func test_rename():
	assert_true(RenameTestSnakeCaseNoPragma.new() != null)
	assert_true(rename_test_pascal_case_to_snake_case.new() != null)
	assert_true(GDRenameTestClosurePrefix.new() != null)
	assert_true(RenameTestNameAndRename.new() != null)

	var tester := RenameTester.new()

	assert_true(tester.rename_test_func_pascal_case_no_pragma())
	assert_true(tester.RenameTestFuncSnakeCaseToPascalCase())
	assert_true(tester.gd_rename_test_func_closure_prefix())
	assert_true(tester.rename_test_func_name_and_rename())


func test_func(node: FunctionTester):
	node.arg_0_noret()
	assert_equal(node.get_arg_0_noret_result(), "arg0_noret()")

	node.arg_1_noret(node.arg_1_ret(node.arg_0_ret()))
	assert_equal(node.get_arg_1_noret_result(), "arg1_noret(arg1_ret(arg0_ret()))")

	assert_equal(node.default_value_simple(), "default_value_simple(default)")
	assert_equal(node.default_value_simple("custom"), "default_value_simple(custom)")

	assert_equal(node.default_value_complex("a", "b"), "default_value_complex(a b default value)")
	assert_equal(node.default_value_complex("a", "b", "c"), "default_value_complex(a b c value)")
	assert_equal(node.default_value_complex("a", "b", "c", "d"), "default_value_complex(a b c d)")

	assert_equal(node.varargs_simple(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")
	assert_equal(FunctionTester.varargs_static(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")
	assert_equal(node.varargs_concrete(1, 2, 3, 4, 5), "1, 2, 3, 4, 5")

	assert_equal(node.most_complex("a", "b", "c", "d", "e", "f", "g"), "a b c d e f g")

func test_rpc_func(node: FunctionTester):
	node.test_nim_rpc()
	node.rpc("rpc_func", "GDScriptRPC")
	assert_equal(node.rpc_result, "GDScriptRPC")

func test_virtual_func():
	# $VirtualNode01.virtualMethod()
	assert_equal($InheritedNode01._virtual_method("from GDScript"),
	"virtualMethod of InheritedNode01 is called from GDScript")
	# $VirtualNode02.virtualMethod()
	assert_equal($InheritedNode02._virtual_method("from GDScript"),
	"virtualMethod of InheritedNode02 is called from GDScript")

func test_grobal_func():
	RuntimeTest.signal_arg_0.connect(_on_nim_signal_arg_0)
	RuntimeTest.signal_arg_1.connect(_on_nim_signal_arg_1)
	RuntimeTest.arg_0_noret()
	RuntimeTest.arg_1_noret(RuntimeTest.arg_1_ret(RuntimeTest.arg_0_ret()))
	RuntimeTest.signal_arg_0.emit()
	RuntimeTest.signal_arg_1.emit("signal")
	RuntimeTest.emit_signal_arg_0()
	RuntimeTest.emit_signal_arg_1("signal")

	RuntimeTest.exec_checks_use_api_from_toplevel()
	assert_true(signal_arg_0_executed and signal_arg_1_executed)

func test_enum(node: EnumTester):
	assert_equal(node.echo_test_enum_a(EnumTester.ENUM_A_1), EnumTester.ENUM_A_1)
	assert_equal(node.echo_test_enum_b(EnumTester.ENUM_B_1), EnumTester.ENUM_B_1)
	assert_equal(node.test_enum_a, EnumTester.ENUM_A_2)
	assert_equal(node.test_enum_b, EnumTester.ENUM_B_2)
	node.test_enum_a = EnumTester.ENUM_A_3
	node.test_enum_b = EnumTester.ENUM_B_3
	assert_equal(node.test_enum_a, EnumTester.ENUM_A_3)
	assert_equal(node.test_enum_b, EnumTester.ENUM_B_3)
	assert_equal(node.echo_vector_2_axis(Vector2.AXIS_X), Vector2.AXIS_X)

	assert_equal(node.echo_test_flags(EnumTester.FLAG_1), EnumTester.FLAG_1)
	assert_equal(node.echo_test_flags(EnumTester.FLAG_2 | EnumTester.FLAG_4), EnumTester.FLAG_2 | EnumTester.FLAG_4)
	assert_equal(node.test_flags, EnumTester.FLAG_2)
	node.test_flags = EnumTester.FLAG_3
	assert_equal(node.test_flags, EnumTester.FLAG_3)
	node.test_flags = EnumTester.FLAG_1 | EnumTester.FLAG_4
	assert_equal(node.test_flags, EnumTester.FLAG_1 | EnumTester.FLAG_4)

func test_exported_ref(node: ExportedPropRefTester):
	assert_not_equal(node.clsProp, null)
	var isSmall = true if node.clsProp.get_reference_count() < 10 else false
	assert_true(isSmall)

func _on_nim_signal_arg_0():
	signal_arg_0_executed = true
func _on_nim_signal_arg_1(what):
	assert_equal(what, "signal")
	signal_arg_1_executed = true
