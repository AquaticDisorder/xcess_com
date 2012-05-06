api = 2
core = 6.x

; Use Pressflow instead of Drupal core:
projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://files.pressflow.org/pressflow-6-current.tar.gz"

projects[xcess_com][type] = "profile"
projects[xcess_com][download][type] = "git"
projects[xcess_com][download][url] = "git://github.com/AquaticDisorder/xcess_com.git"
projects[xcess_com][download][branch] = "master"

; Libraries
libraries[jquery.ui][download][type] = "get"
libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery.ui][directory_name] = "jquery.ui"
libraries[jquery.ui][destination] = "libraries/jquery_ui"

libraries[cycle][download][type] = "get"
libraries[cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
libraries[cycle][directory_name] = "cycle"
libraries[cycle][destination] = "libraries"

libraries[easing][download][type] = "get"
libraries[easing][download][url] = "http://gsgd.co.uk/sandbox/jquery/easing/jquery.easing.compatibility.js"
libraries[easing][directory_name] = "easing"
libraries[easing][destination] = "libraries"

; CKEditor
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.3/ckeditor_3.6.3.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"