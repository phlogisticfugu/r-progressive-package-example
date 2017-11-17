RPROJROOT <- rprojroot::find_root(rprojroot::has_file("RPROJROOT.md"))
source(file.path(RPROJROOT, "R", "bootstrap.R"))

print('this is just another script')
