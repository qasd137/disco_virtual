# disco_virtual

	A necessidade de automatizar a inicialização de um disco virtual me 
	conduziu a escrever este script que monta automaticamente na pasta em 
	que ele está um link para uma pasta temporaria onde está montado o RAMDISK
	com tamanho desejado no parametro (Megas m, Gigas G) no fedora

		1 ) teste se pastas /tmp/ramdisk existem senão, cria ! 
	
		2 ) monta partição em RAM
		
		3 ) link ramdisk -> /tmp/ramdisk



	ex:  # sh monta_ramdisk.sh 1024m 

											04/2023
