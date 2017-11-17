RPROJROOT <- rprojroot::find_root(rprojroot::has_file("RPROJROOT.md"))
source(file.path(RPROJROOT, "R", "bootstrap.R"))

print(locallib::is_string_with_content('hello'))
print(locallib::is_string_with_content(''))
print(locallib::is_string_with_content(c('')))
