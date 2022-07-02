help()
{
echo "Lista dostępnych opcji: "
echo "--date / -d #wyświetli dzisiejszą datę"
echo "--logs / -l utworzy automatycznie 100 plików logx.txt x-nrpliku od 1 do100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--logs a / -l a utworzy automatycznie a plików logx.txt x-nr pliku od 1 do 100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--help / -h wyświetli listę dostępnych opcji"
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
 *);; 
	esac
done
