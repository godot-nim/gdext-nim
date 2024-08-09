extends GodotSideTester


# Called when the node enters the scene tree for the first time.
func _ready():
	test_helloworld()
	test_int_value()
	test_float_value()

func test_helloworld():
	assert(helloworld() == "Hello, World!")

func test_int_value():
	assert(get_int_value() == 0)
	set_int_value(10)
	assert(get_int_value() == 10)
	int_value = 20
	assert(int_value == 20)

func test_float_value():
	assert(get_float_value() == 0)
	set_float_value(10)
	assert(get_float_value() == 10)
	float_value = 20
	assert(float_value == 20)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_tester_nim_custom_signal(value):
	assert(value == 10)
