---
layout: default
title: gdextwiz Manual
---

* TOC
{:toc}

This document may not reflect the latest version of **gdextwiz**.  
For the most accurate and up-to-date information, please run:

```bash
gdextwiz --help
```

---

# 🔖 Definition of Terms

## bootstrap.nim

The **bootstrap.nim** file serves as the entry point for your GDExtension module.  
It defines which classes should be registered with the engine.  
Compiling this file produces the dynamic library that implements your GDExtension logic.

---

# 🔧 Command Reference

## gdextwiz new-extension [name]

```command
gdextwiz new-extension MyExtension
```

Generates a template for a new GDExtension project.

This command is mainly intended for beginners or quick prototyping.  
If you're already familiar with GDExtension and the necessary compiler options, you may not need to use this command.

---

## gdextwiz build [compiler-arguments...] [project-path]

```command
gdextwiz build
```

```command
gdextwiz build path/to/project
```

```command
gdextwiz build -d:platform:web path/to/project
```

```command
gdextwiz build -d:platform:windows -d:mingw
```

Searches upward from the current directory to find the nearest **bootstrap.nim** and compiles it.

If a **project.godot** file is found before **bootstrap.nim**, this command automatically delegates to **build-all**.

---

## gdextwiz build-all [compiler-arguments...] [project-path]

Searches upward from the current directory for a **project.godot** file, then finds and builds all **bootstrap.nim** files under that project root.

This is useful for projects with multiple extensions.

---

## gdextwiz editor [project-path]

```command
gdextwiz editor
```

```command
gdextwiz editor path/to/project
```

Searches upward for a **project.godot** file and launches the Godot editor using:

```bash
godot --editor
```

---

## gdextwiz run [compiler-arguments...] [project-path]

Equivalent to:

```bash
gdextwiz build && godot
```

However, if the .godot/ directory is missing, it falls back to run-editor.

---

## gdextwiz run-editor [compiler-arguments...] [project-path]

Equivalent to:

```bash
gdextwiz build && gdextwiz editor
```