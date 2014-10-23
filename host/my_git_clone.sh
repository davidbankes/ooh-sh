Domain=$1
source ../config.sh
ThisProjectPath="${ProjectsPath}/${Domain}"
git clone dbankes@dev01.spiiider.com:/var/git/$Domain "$ThisProjectPath"
#cp /home/git/hooks/* /home/dbankes/projects/$Domain/.git/hooks
