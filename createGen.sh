# Install NVM 
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source $HOME/.bashrc

# Install NVM LTS
nvm install --lts
nvm use --lts

# Create Folder
mkdir -p Node-0/data/keystore
mkdir -p Node-1/data/keystore
mkdir -p Node-2/data/keystore
mkdir -p Node-3/data/keystore

# Installing Quorum Tools
npx quorum-genesis-tool \
--consensus raft \
--chainID 10 \
--blockperiod 2 \
--requestTimeout 10 \
--epochLength 30000 \
--emptyBlockPeriod 60 \
--difficulty 1 \
--gasLimit '0xFFFFFF' \
--coinbase '0x0000000000000000000000000000000000000000' \
--accountPassword "231196joy" \
--validators 4 \
--members 0 \
--bootnodes 0 \
--outputPath 'artifacts'