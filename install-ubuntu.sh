function echoColorEmptyLine() {
  echo -e "${green}\n";
  echo >> $log;
}

function aptUpdate() {
  cmd sudo apt update;
}

function aptInstall() {
  cmd sudo apt install -y "$@";
}

function gitClone() {
  cmd git clone "$@";
}

echoColorEmptyLine;
cmd echo "Hello, fellow programmer! Welcome to Abraao's";
cmd echo;

cmd echo "██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗";
cmd echo "██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝";
cmd echo "██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗";
cmd echo "██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║";
cmd echo "██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║";
cmd echo "╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝";

cmd echo -e "                                              install script.";
cmd echo;
cmd echo "This script will automatically install";
cmd echo "some dev and utility stuff, which I use in my main machine.";
cmd echo;
cmd echo "It may ask you something in the middle of the proccess.";
cmd echo;
cmd echo "Now sit back and relax. It'll take some time, but when done,";
cmd echo "you'll have a much more simpler, focused  system.";
cmd echo;
cmd echo "-Abraao";
echoNoColorEmptyLine;

read -p "Press Enter to continue...";

echoSectionTitle "Updating system";
cmd aptUpdate & sudo apt -y upgrade;

echoColorEmptyLine;
echo "██████╗ ███████╗██████╗ ███████╗███╗   ██╗██████╗ ███████╗███╗   ██╗ ██████╗██╗███████╗███████╗";
echo "██╔══██╗██╔════╝██╔══██╗██╔════╝████╗  ██║██╔══██╗██╔════╝████╗  ██║██╔════╝██║██╔════╝██╔════╝";
echo "██║  ██║█████╗  ██████╔╝█████╗  ██╔██╗ ██║██║  ██║█████╗  ██╔██╗ ██║██║     ██║█████╗  ███████╗";
echo "██║  ██║██╔══╝  ██╔═══╝ ██╔══╝  ██║╚██╗██║██║  ██║██╔══╝  ██║╚██╗██║██║     ██║██╔══╝  ╚════██║";
echo "██████╔╝███████╗██║     ███████╗██║ ╚████║██████╔╝███████╗██║ ╚████║╚██████╗██║███████╗███████║";
echo "╚═════╝ ╚══════╝╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚═╝╚══════╝╚══════╝";
echoNoColorEmptyLine;

# echoSectionTitle "Installing curl";
# cmd aptInstall curl;

# echoSectionTitle "Installing build-essential";
# cmd aptInstall build-essential;

# echoSectionTitle "Installing apt dependencies";
# aptInstall software-properties-common;

# echoSectionTitle "Installing dconf";
# aptInstall dconf-editor;

# echoSectionTitle "Installing Git";
# aptInstall git;

echoColorEmptyLine;
cmd echo "████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗     ";
cmd echo "╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║     ";
cmd echo "   ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║     ";
cmd echo "   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║     ";
cmd echo "   ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗";
cmd echo "   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝";
echoNoColorEmptyLine;

echoSectionTitle "Installing Zsh";
aptInstall zsh;

echoSectionTitle "Installing Oh-My-Zsh";
cmd wget https://raw.githubusercontent.com/rupa/z/master/z.sh;
cmd mv z.sh .z.sh;


echoSectionTitle "Installing Powerlevel10k";
# mkdir -p $config;
# echoHighlight "$config folder created";
cmd gitClone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k;


echoSectionTitle "Installing zsh-autosuggestions";
gitClone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions;

echoSectionTitle "Installing zsh-completions";
gitClone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions;


