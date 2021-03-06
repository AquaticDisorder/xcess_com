<?php
// $Id: xcess.profile


// Define the default WYSIWYG editor
define('xcess_EDITOR', 'ckeditor');

// Define the allowed filtered html tags
define('xcess_FILTERED_HTML', '<a> <img> <br> <em> <p> <strong> <cite> <sub> <sup> <span> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd> <pre> <address> <h2> <h3> <h4> <h5> <h6>');

// Define the "manager" role name
define('xcess_MANAGER_ROLE', 'manager');

// Define fusion base theme
define('xcess_THEME_BASE_0', 'fusion');

// Define acquia_prosper base theme
define('xcess_THEME_BASE_1', 'acquia_prosper');

// Define the default theme
define('xcess_THEME', 'xcess_acquia_prosper');

// Define base admin theme
define('xcess_THEME_ADMIN_BASE', 'tao');

// Define admin theme
define('xcess_THEME_ADMIN', 'rubik');

// Define the default frontpage
define('xcess_FRONTPAGE', 'node/1');

/**
 * Return an array of the modules to be enabled when this profile is installed.
 *
 * @return
 *   An array of modules to enable.
 */
function xcess_com_profile_modules() {
   $modules = array(
  // Drupal core
     'color',
     'comment',
     'contact',
     'help',
     'locale',
     'menu',
     'openid',
     'path',
     'profile',
     'search',
     'statistics',
     'taxonomy',
     'trigger',
     'update',
     'upload',
  // Custom modules
     'install_profile_api',
     'libraries',
     'jquery_update',
     'jquery_ui',
     'token',
     'token_actions',
     'pathauto',

  // CCK
     'content',
     'content_copy',
     'fieldgroup',
     'filefield',
     'imagefield',
     'link',
     'nodereference',
     'number',
     'optionwidgets',
     'text',
  // Date and calender
     'date_api',
     'date',
     'date_locale',
     'date_popup',
     'date_repeat',
     'date_timezone',
     'date_tools',
     'calendar',
     'calendar_ical',
     'calendar_multiday',
  // Images
     'imageapi',
     'imageapi_gd',
     'image',
     'img_assist',
     'imagecache',
     'lightbox2',
     'galleria',
     'taxonomy_image',
     'jcarousel',
  // Other
     'hide_submit',
     'pathauto',
     'simplenews',
     'simplenews_action',
     'site_map',
     'tagadelic',
     'transliteration',
  // Ubercart core
     'uc_cart',
     'ca',
     'uc_order',
     'uc_product',
     'uc_store',
  // Ubercart core optional
     'uc_attribute',
     'uc_catalog',
     'uc_payment',
     'uc_reports',
     'uc_roles',
     'uc_shipping',
     'uc_quote',
     'uc_tax_report',
     'uc_taxes',
  // Ubercart extra
     'uc_cart_links',
     'uc_googleanalytics',
     'uc_product_kit',
     'uc_stock',
  // Ubercart contrib
     'uc_gift_order',
     'uc_option_image',
     'uc_out_of_stock',
     'uc_wishlist',
  // Ubercart fulfillment
     'uc_flatrate',
  // Ubercart payment
     'uc_credit',
     'uc_google_checkout',
     'uc_payment_pack',
     'uc_paypal',
     'uc_payment',
     'test_gateway',
  // User
     'ckeditor',
     'email_registration',
     'fblikebutton',
  // Views, ctools, panels
     'ctools',
     'panels',
     'views',
     'views_galleriffic',
     'views_showcase',
  // Voting
     'votingapi',
     'fivestar',
     'fivestar_comment',
  // Developer modules
     'admin_menu',
     'advanced_help',
     'backup_migrate',
     'context',
     'context_layouts',
     'devel',
     'features',
     'googleanalytics',
     'skinr',
  // Enable some ui's
     'imagecache_ui',
     'views_ui',
     'context_ui',
   );

  return $modules;
}

/**
 * Return a description of the profile for the initial installation screen.
 *
 * @return
 *   An array with keys 'name' and 'description' describing this profile,
 *   and optional 'language' to override the language selection for
 *   language-specific profiles.
 */
function xcess_com_profile_details() {
  return array(
    'name' => 'Xcessorized',
    'old_short_name' => 'default',
    'description' => 'Select this profile to enable Xcessorized profile.',
  );
}

/**
 * Return a list of tasks that this profile supports.
 *
 * @return
 *   A keyed array of tasks the profile will perform during
 *   the final stage. The keys of the array will be used internally,
 *   while the values will be displayed to the user in the installer
 *   task list.
 */
function xcess_com_profile_task_list() {
  global $conf;
  $conf['site_name'] = 'Xcessorized.com';
  
  return $tasks;
}

/**
 * Perform any final installation tasks for this profile.
 *
 * The installer goes through the profile-select -> locale-select
 * -> requirements -> database -> profile-install-batch
 * -> locale-initial-batch -> configure -> locale-remaining-batch
 * -> finished -> done tasks, in this order, if you don't implement
 * this function in your profile.
 *
 * If this function is implemented, you can have any number of
 * custom tasks to perform after 'configure', implementing a state
 * machine here to walk the user through those tasks. First time,
 * this function gets called with $task set to 'profile', and you
 * can advance to further tasks by setting $task to your tasks'
 * identifiers, used as array keys in the hook_profile_task_list()
 * above. You must avoid the reserved tasks listed in
 * install_reserved_tasks(). If you implement your custom tasks,
 * this function will get called in every HTTP request (for form
 * processing, printing your information screens and so on) until
 * you advance to the 'profile-finished' task, with which you
 * hand control back to the installer. Each custom page you
 * return needs to provide a way to continue, such as a form
 * submission or a link. You should also set custom page titles.
 *
 * You should define the list of custom tasks you implement by
 * returning an array of them in hook_profile_task_list(), as these
 * show up in the list of tasks on the installer user interface.
 *
 * Remember that the user will be able to reload the pages multiple
 * times, so you might want to use variable_set() and variable_get()
 * to remember your data and control further processing, if $task
 * is insufficient. Should a profile want to display a form here,
 * it can; the form should set '#redirect' to FALSE, and rely on
 * an action in the submit handler, such as variable_set(), to
 * detect submission and proceed to further tasks. See the configuration
 * form handling code in install_tasks() for an example.
 *
 * Important: Any temporary variables should be removed using
 * variable_del() before advancing to the 'profile-finished' phase.
 *
 * @param $task
 *   The current $task of the install system. When hook_profile_tasks()
 *   is first called, this is 'profile'.
 * @param $url
 *   Complete URL to be used for a link or form action on a custom page,
 *   if providing any, to allow the user to proceed with the installation.
 *
 * @return
 *   An optional HTML string to display to the user. Only used if you
 *   modify the $task, otherwise discarded.
 */
function xcess_com_profile_tasks(&$task, $url) {

  // Insert default user-defined node types into the database. For a complete
  // list of available node type attributes, refer to the node type API
  // documentation at: http://api.drupal.org/api/HEAD/function/hook_node_info.
  $types = array(
    array(
      'type' => 'page',
      'name' => st('Page'),
      'module' => 'node',
      'description' => st("A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site's initial home page."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
    array(
      'type' => 'story',
      'name' => st('Story'),
      'module' => 'node',
      'description' => st("A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site's initial home page, and provides the ability to post comments."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
  );

  foreach ($types as $type) {
    $type = (object) _node_type_set_defaults($type);
    node_type_save($type);
  }

  // Default page to not be promoted and have comments disabled.
  variable_set('node_options_page', array('status'));
  variable_set('comment_page', COMMENT_NODE_DISABLED);

  // Don't display date and author information for page nodes by default.
  $theme_settings = variable_get('theme_settings', array());
  $theme_settings['toggle_node_info_page'] = FALSE;
  variable_set('theme_settings', $theme_settings);

  // Set homepage
  variable_set('site_frontpage', 'node/1');

  // Set site_footer value.
  variable_set('site_footer', st('&copy; Copyright 2012 Xcessorized.com, All rights reserved.'));

  // Update the menu router information.
  menu_rebuild();
}

/**
 * Configure theme
 */
function xcess_config_theme() {
  // Disable garland
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme' and name = '%s'", 'garland');

  // Enable Tao
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' and name = '%s'", xcess_THEME_ADMIN_BASE);
  
  // Enable Rubik
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' and name = '%s'", xcess_THEME_ADMIN);

  // Enable Fusion
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' and name = '%s'", xcess_THEME_BASE_0);

  // Enable Acquia_prosper
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' and name = '%s'", xcess_THEME_BASE_1);
  
  // Enable Xcess_acquia_prosper theme
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' and name = '%s'", xcess_THEME);
  
  // Set Rubik theme as the default
  variable_set('admin_theme', xcess_THEME_ADMIN);
  
  // Set xcess_acquia_prosper theme as the default
  variable_set('theme_default', xcess_THEME);

  // Refresh registry
  list_themes(TRUE);
  drupal_rebuild_theme_registry();
}

/**
 * Implementation of hook_form_alter().
 *
 * Allows the profile to alter the site-configuration form. This is
 * called through custom invocation, so $form_state is not populated.
 */
function xcess_default_form_alter(&$form, $form_state, $form_id) {
  if ($form_id == 'install_configure') {
    // Set default for site name field.
    $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  }
}
