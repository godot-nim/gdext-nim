# begin Nimble config (version 2)
when withDir(thisDir(), system.fileExists("nimble.paths")):
  include "nimble.paths"
# end Nimble config

# begin gdext config
when withDir(thisDir(), system.fileExists("bootstrapconf.nims")):
  include "bootstrapconf.nims"
# end gdext config

# ===============================================================
# Edit your workspace-local settings here

--path: src