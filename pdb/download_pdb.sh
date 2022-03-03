for i in $(cat ../pdb_train_list.txt);do
 #       target=$(awk 'NR=="'"$i"'"{print $2}' CASP_CAPRI_testdown_load.list)
#        pdb=$(awk 'NR=="'"$i"'"{print $3}' CASP_CAPRI_testdown_load.list)
	pdb=$i
        wget https://files.rcsb.org/download/${pdb}.pdb 
#        awk '$5=="A"{print $0}' ${pdb}.pdb > ../casp-capri-12-13-14-download/${target}.pdb
done
for i in $(cat ../pdb_test_list.txt);do
 #       target=$(awk 'NR=="'"$i"'"{print $2}' CASP_CAPRI_testdown_load.list)
#        pdb=$(awk 'NR=="'"$i"'"{print $3}' CASP_CAPRI_testdown_load.list)
        pdb=$i
        wget https://files.rcsb.org/download/${pdb}.pdb
#        awk '$5=="A"{print $0}' ${pdb}.pdb > ../casp-capri-12-13-14-download/${target}.pdb
done
