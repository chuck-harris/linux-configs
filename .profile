# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# Most applications support several languages for their output.
# To make use of this feature, simply uncomment one of the lines below or
# add your own one (see /usr/share/locale/locale.alias for more codes)
# This overwrites the system default set in /etc/sysconfig/language
# in the variable RC_LANG.
#
#export LANG=de_DE.UTF-8	# uncomment this line for German output
#export LANG=fr_FR.UTF-8	# uncomment this line for French output
#export LANG=es_ES.UTF-8	# uncomment this line for Spanish output
export LC_TIME="C"


# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)

if [ -x /usr/bin/fortune ] ; then
    echo
    /usr/bin/fortune
    echo
fi

#xinput --set-prop --type=int --format=8 "Primax Kensington Eagle Trackball" "Evdev Middle Button Emulation" "1"
#xinput --set-prop --type=int --format=8 "Primax Kensington Eagle Trackball" "libinput Middle Emulation Enabled" "1"


#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/home/charris/.jenv/bin/jenv-init.sh" ]] && source "/home/charris/.jenv/bin/jenv-init.sh" && source "/home/charris/.jenv/commands/completion.sh"
