#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [

	{sep => 'OpenBSD'},

    #          COMMAND                 					LABEL              ICON
    {item => ['pcmanfm',          					'File Manager', 'system-file-manager']},
    {item => ['sakura',            					'Terminal',     'terminal']},
    {item => ['dmenu_run -fn Ubuntu-11 -nb "#1F2326" -sb "#207487"',	'Run command',  'system-run']},
	{beg => ['Screenshot',	'digikam']}, 
    	{item => ['scrot -q 90 -d 1 -e "mv $f ~/Pictures/"',	'Now',                   		'digikam']},
	{item => ['scrot -q 90 -d 10 -e "mv $f ~/Pictures/"',  	'In 10 seconds...',      		'digikam']},
	{item => ['scrot -q 90 -d 20 -e "mv $f ~/Pictures/"',  	'In 20 seconds...',      		'digikam']},
        {item => ['scrot -q 90 -s -e "mv $f ~/Pictures/"',	'Area (drag the mouse)',     		'digikam']},
        {item => ['scrot -q 90 -s -b -e "mv $f ~/Pictures/"',   'Window (click the window)',		'digikam']},
    	{end => undef},

    {sep => 'Applications'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    {sep => 'System'},
      {beg => ['Openbox', 'openbox']},
        {item => ['openbox --reconfigure',               'Reconfigure Openbox', 'view-refresh']},
        {item => ['openbox --restart',                   'Restart Openbox',     'livepatch']},
	{sep => undef},
        {item => ["$editor ~/.config/openbox/autostart", 'autostart',           'text-editor']},
        {item => ["$editor ~/.config/compton.conf",      'compton.conf',        'text-editor']},
        {item => ["$editor ~/.config/openbox/rc.xml",    'rc.xml',              'text-editor']},
      {end => undef},

      {beg => ['Accessories', '/usr/local/share/images/accessories.svg']},
        {item => ['doas pcmanfm',	'PCManFM (as root)',			    '/usr/local/share/images/root-fm.png']},
        {item => ['doas lxappearance',  'Customize Look and Feel (root account)',   '/usr/local/share/images/root-theme.png']},
      {end => undef},

      {beg => ['Obmenu-Generator', 'menu-editor']},
        {item => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', 'text-editor']},
        {item => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', 'text-editor']},

        {sep  => undef},
        {item => ['obmenu-generator -s -c',    'Generate a static menu',             'system-run']},
        {item => ['obmenu-generator -s -i -c', 'Generate a static menu with icons',  'system-run']},
        {sep  => undef},
        {item => ['obmenu-generator -p',       'Generate a dynamic menu',            'system-run']},
        {item => ['obmenu-generator -p -i',    'Generate a dynamic menu with icons', 'system-run']},
        {sep  => undef},
        {item => ['obmenu-generator -d', 'Refresh icon cache', 'view-refresh']},
      {end => undef},

    {sep => 'Session'},
    {item => ['slock', 'Lock', 'system-lock-screen']},

      {beg => ['Exit', 'system-shut-down']},
	{item => ['doas shutdown -p now',  	'Shutdown',	'system-shut-down']},
	{item => ['doas reboot',		'Reboot',	'system-reboot']},
	{item => ['openbox --exit',		'Logout',	'system-log-out',]},
      {end => undef},
]
