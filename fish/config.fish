if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

fish_add_path $path


# Set initial paths
set -x CPLUS_INCLUDE_PATH /home/void/.arduino15/packages/arduino/hardware/avr/1.8.6/cores/arduino \
                          /home/void/.arduino15/packages/arduino/hardware/avr/1.8.6/variants/standard \
                          /home/void/.arduino15/packages/arduino/tools/avr-gcc/7.3.0-atmel3.6.1-arduino7/avr/include/

for dir in /home/void/Arduino/libraries/*/src
    set -x CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH $dir
end

for dir in /home/void/.arduino15/packages/arduino/hardware/avr/1.8.6/libraries/*/src
    set -x CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH "$dir"
end

# Export the CPLUS_INCLUDE_PATH variable
export CPLUS_INCLUDE_PATH

# Print the result (for debugging purposes)
echo "CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH"


function ls
    exa $argv
end

clear

oh-my-posh init fish --config ~/.config/oh-my-posh/config.json | source
fastfetch
