#---------------------------------------------------------------------
# Contents of This .bash_profile
#
# Sections:
#
# 1. ENVIRONMENT CONFIGURATION
#    1.1 Prompt Setting
#    1.2 Colours Setting for Command Lines & ls
#    1.3 Paths Setting
#        1.3.0 Fundamental PATH
#        1.3.1 Python 2.7
#        1.3.2 MacPorts
#
# 2. TERMINAL COMMANDS IMPROVEMENT
#
# Source of Reference: https://natelandau.com/my-mac-osx-bash_profile/
# Or: https://gist.github.com/natelandau/10654137
#---------------------------------------------------------------------



#-----------------------------
# 1. ENVIRONMENT CONFIGURATION
#-----------------------------

#-------------------
# 1.1 Prompt Setting
#-------------------

# MEANINGS OF ABBREVIATIONS
#
#        \@ <Display current time in am/pm format.>
#        \u <Display the current username.> 
#        \H <Display FQDN hostname.> (\h <Display the hostname.>)
#        \W <Print the base of current working directory.>
#        \$ <Display # if effective UID = 0, otherwise $.>
# \e[  \e[m <Colour scheme.>
#       x;y <Colour pair to use.>

# COLOUR CODES
#
# 30<Black>  31<Red>  32<Green> 33<Yellow>
# 34<Purple> 35<Pink> 36<Blue>  37<White>

export PS1="\e[35m\]\@ \e[37m\]\u \e[36m\]\H \e[33;1m\]\W \e[m\]\$"
export PS2=""
export PS3=""
export PS4=""

#-------------------------------------------
# 1.2 Colours Setting for Command Lines & ls
#-------------------------------------------

# ORDER OF DISTRIBUTION
#
# 1.Directory > 2.Symbolic Link > 3.Socket > 4.Pipe > 5.Executable > 
# 6.Block Special > 7.Character Special > 
# 8.Executable (Setuid Bit Set) > 9.Executable (No Setuid Bit Set) >
# 10.Directory Writable to Others (Sticky Bit) > 
# 11.Directory Writable to Others (No Sticky Bit)

# COLOUR DESIGNATORS
#
# A/a<Black>  B/b<Red>      C/c<Green>  D/d<Yellow> 
# E/e<Blue>   F/f<Magenta>  G/g<Cyan>   H/h<White>
# 
# *Capital Letters for Boldness
#
# x<Default Foreground/Background>

export CLICOLOR=1
export LSCOLORS=DxCxHxGxBxFcFeBcBeDcDe

#------------------
# 1.3 Paths Setting
#------------------

# PATHS FOR BINARIES
#
# /bin            <Essential Command Binaries>
#                 e.g. cat, ls, cp
# /sbin           <Essential System Binaries>
#                 e.g. init, ip, mount
#
# /usr/bin        <Non-essential Command Binaries; for All Users>
# /usr/sbin       <Non-essential System Binaries>
#
# /usr/local      <Usually Includes bin/, lib/, share/>
# /usr/local/bin  <Additional Commands>
# /usr/local/sbin <?>
#
# *bin Stands for Binaries
# *More Details: https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard

# FILE CONDITIONALS
#
# -d "the file"   <True if the file is a directory>
# -e "the file"   <True if the file exists>
#                 *note that this is not particularly portable, thus -f is generally used
# -f "the file"   <True if the provided string is a file>
# -g "the file"   <True if the group id is set on a file>
# -r "the file"   <True if the file is readable>
# -s "the file"   <True if the file has a non-zero size>
# -u              <True if the user id is set on a file>
# -w              <True if the file is writable>
# -x              <True if the file is an executable>
# -n "the string" <True if the string is not null>
# -z "the string" <True if the string is null>

#------------------------------------------------------------------------------------------------------------------
# 1.3.0 Fundamental PATH
# Priority Principle: bin type > sbin type; x > /usr/x > /usr/local/x > /opt/local/x
# CAUTION!: Somewhere in the following may make duplications in the PATH so modification is needed in short future.
#------------------------------------------------------------------------------------------------------------------

export PATH="/bin:/usr/bin:/usr/local/bin:/opt/local/bin:/sbin:/usr/sbin:/opt/local/sbin"

#------------------------------------------------------
# 1.3.1 Python 2.7
# The original version is saved in .bash_profile.pysave
#------------------------------------------------------

PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8 

#------------------------------------------------------------------------------------------------------------------
# 1.3.2 MacPorts
# MacPorts Installer addition on 2016-07-13_at_15:31:44: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.
#------------------------------------------------------------------------------------------------------------------

export PATH="/opt/local/bin:/opt/local/sbin:${PATH}"
export INSTALL_DIR=${HOME}/install



#---------------------------------
# 2. TERMINAL COMMANDS IMPROVEMENT 
#---------------------------------

alias ls="ls -AFGhlp"

alias cd..2="cd ../.."
alias cd..3="cd ../../.."
alias cd..4="cd ../../../.."
alias cd..5="cd ../../../../.."
alias cd..6="cd ../../../../../.."

#----------------------END OF .bash_profile---------------------------
