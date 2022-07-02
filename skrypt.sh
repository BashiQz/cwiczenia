help()
{
echo "Lista dostępnych opcji: "
<<<<<<< HEAD
echo "--date / -d #wyświetli dzisiejszą datę"
echo "--logs / -l utworzy automatycznie 100 plików logx.txt x-nrpliku od 1 do100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--logs a / -l a utworzy automatycznie a plików logx.txt x-nr pliku od 1 do 100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--help / -h wyświetli listę dostępnych opcji"
=======
echo "--date #wyświetli dzisiejszą datę"
echo "--logs utworzy automatycznie 100 plików logx.txt x-nrpliku od 1 do100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--logs a utworzy automatycznie a plików logx.txt x-nr pliku od 1 do 100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--error utworzy automatycznie 100 plików errorx.txt x-nrpliku od 1 do100 pli>"
echo "--errors a utworzy automatycznie a plików errorx.txt x-nr pliku od 1 do 100 p>"
echo "--help wyświetli listę dostępnych opcji"
>>>>>>> helpBranch
}
while [ "$1" != "" ];
do
	case $1 in
		--date|-d)
			shift
			date;;
		--logs|-l)
			z=$2
			if [ $# -eq 2 ];
			then
				shift
				for i in {1..$z}; 
				do
					echo "log$i.txt">>log$i.txt
					echo "skrypt.sh">>log$i.txt
					echo date>>log$i.txt
				done
			else
				for i in `seq 1 100`; do
					touch log$i.txt
					echo "log$i.txt">>log$i.txt
					echo "skrypt.sh">>log$i.txt
					echo date>>log$i.txt
				done
			fi;;
		--help|-h)
				shift
				help;;
                --error|-e)
                        z=$2
                        if [ $# -eq 2 ];
                        then
                                shift
                                for i in {1..$z};
                                do
                                        echo "error$i.txt">>error$i.txt
                                        echo "skrypt.sh">>error$i.txt
                                        echo date>>error$i.txt
                                done
                        else
                                for i in `seq 1 100`; do
                                        touch error$i.txt
                                        echo "errror$i.txt">>error$i.txt
                                        echo "skrypt.sh">>error$i.txt
                                        echo date>>error$i.txt
                                done
                        fi;;

 *);; 
	esac
done
