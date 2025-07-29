FROM registry.suse.com/bci/bci-base:15.7


RUN rpm --import https://download.opensuse.org/repositories/network/SLE_15/repodata/repomd.xml.key

RUN zypper -n addrepo https://download.opensuse.org/repositories/network/SLE_15/network.repo
RUN zypper -n refresh
RUN zypper -n install tor

