
if [ "$OSTYPE" = "darwin19.0" ];
then
    #fpath=(/usr/local/Brew/share/zsh-completions $fpath)

    #bindkey -v
    #bindkey '^R' history-incremental-search-backward

    #bindkey '^[^[[A' beginning-of-line
    #bindkey '^[^[[B' end-of-line
    #bindkey '^[^[[C' forward-word
    #bindkey '^[^[[D' backward-word

    function mitogen() {
      alias ansible="ANSIBLE_STRATEGY_PLUGINS=\"\$(python -c 'from __future__ import print_function; import sysconfig; print(sysconfig.get_path(\"purelib\"))')/ansible_mitogen/plugins/\" ansible"
      alias ansible-playbook="ANSIBLE_STRATEGY_PLUGINS=\"\$(python -c 'from __future__ import print_function; import sysconfig; print(sysconfig.get_path(\"purelib\"))')/ansible_mitogen/plugins/\" ansible-playbook"
      export ANSIBLE_STRATEGY=mitogen_linear
    }

    #alias code="~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
    #export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH/"
    function p() {
      export REQUESTS_CA_BUNDLE="${HOME}/dev/byp/infrastructure/submodule_roles/by_tls/files/rootca-2016-07.crt"
    }
    function unp() {
      unset REQUESTS_CA_BUNDLE
    }
    function an() {
      export ANSIBLE_REMOTE_USER=kvni
      export ANSIBLE_BECOME_ASK_PASS=True
      export ANSIBLE_BECOME=True
    }
    function unan() {
      unset ANSIBLE_REMOTE_USER
      unset ANSIBLE_BECOME_ASK_PASS
      unset ANSIBLE_BECOME
    }
    function jb() {
      docker run --rm --volume $(pwd):$(pwd) --workdir $(pwd) --tty --interactive "hub.z.westeurope.blue-yonder.cloud/by/debian_9_jenkins:stable" /bin/bash
    }
    function sb() {
      docker run --rm --volume $(pwd):$(pwd) --workdir $(pwd) --tty --interactive "hub.z.westeurope.blue-yonder.cloud/by/debian_9_stratosphere:stable" /bin/bash
    }
fi

compdef -d ansible-vault
