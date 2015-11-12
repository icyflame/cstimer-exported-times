mv ~/Downloads/cstimer* ./
counter=0;
for i in `ls cstimer*`; do
	mv $i "./cstimer-exported/`date '+%Y-%m-%d-%H-%M-%S'`-$counter.txt"
	((counter++))
done;
git add .
git commit -a -m "Add exported files (`date '+%Y-%m-%d'`)"
