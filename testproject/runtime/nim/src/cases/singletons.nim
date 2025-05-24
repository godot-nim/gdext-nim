import gdext
import classes/gdSingleton
import testutils

runtime: suite "Custom singletons":
  test "use custom singletons":
    Singleton.singleton.value1 = 10
    check Singleton.singleton.value1 == 10

    Singleton.set_value2 10
    check Singleton.get_value2 == 10
