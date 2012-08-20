api = 2
core = 6.x

; Use Pressflow instead of Drupal core:
projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://files.aegir.cc/dev/pressflow-6.26.2.tar.gz"

projects[xcess_com][type] = "profile"
projects[xcess_com][download][type] = "git"
projects[xcess_com][download][url] = "git://github.com/AquaticDisorder/xcess_com.git"
projects[xcess_com][download][branch] = "master"

; Libraries
libraries[jquery.ui][download][type] = "get"
libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery.ui][directory_name] = "jquery.ui"
libraries[jquery.ui][destination] = "libraries"

libraries[cycle][download][type] = "get"
libraries[cycle][download][url] = "http://github.com/AquaticDisorder/xcess_com/js/cycle/jquery.cycle.min.js"
libraries[cycle][directory_name] = "cycle"
libraries[cycle][destination] = "libraries"

libraries[easing][download][type] = "get"
libraries[easing][download][url] = "http://github.com/AquaticDisorder/xcess_com/js/easing/jquery.easing.1.3.js"
libraries[easing][directory_name] = "easing"
libraries[easing][destination] = "libraries"

; CKEditor
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.3/ckeditor_3.6.3.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"