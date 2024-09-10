# gdext/core

Helper modules for gdext itself.

* **Don't** export for users

  Modules that users do not need to touch directly belong here. Ideally, modules belonging to this group expose their symbols as much as possible for library development and available for end users to import them as needed.

* **Don't** import surface modules