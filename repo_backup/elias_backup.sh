source ./utils.sh
#!/bin/bash #the first line of the bash script
#commands used: 1 adding devopsPlayground to ubuntu by using command : git clone https://github.com/alonitac/devOpsPlayground
#2:compressing by: tar -czvf repo_backup.tar.gz ~/git_workspace/devOpsPlayground (MY PC)
#git clone  https://github.com/alonitac/devOpsPlayground #for does who don't have the repo inside their ubuntu

function compress {
tar -czvf repo_backup.tar.gz ./DevOpsplayGound
stat [ -f repo_backup.tar.gz ]

  echo "Back up Files  $(total_files)
  echo "Backup Dic" $(total_directories)

  echo "By $(whoami) in Date $(date)"
}

if  [ -d 'repo_backup.tar.gz' /tmp ]; then
  echo "repo_backup.tar.gz exist"
  else
mkdir repo_back_up
  echo "backup Directory have been created"
fi