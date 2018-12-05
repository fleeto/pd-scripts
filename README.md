# Scripts for Parallels Pro

## Example

1. Set up a new guest, such as centos, named "template1".
1. Clone it into 3 copies: `prl.build.cluster.sh template1 node 3`, and then there will be 3 instances created.
1. Startup all copies: `prl.start.cluster.sh node`
1. Make snapshots for running copies: `prl.build.snapshot.sh`
1. Rollback snapshots for running copies: `prl.back.snapshot.sh`
1. Reboot all running copies: `prl.reboot.sh`
1. Shutdown all running copies: `prl.shutdown.sh`