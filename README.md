# disco_virtual

	A necessidade de automatizar a inicialização de um disco virtual me 
	conduziu a escrever este script que monta automaticamente na pasta em 
	que ele está um link para uma pasta temporaria onde está montado o RAMDISK
	com tamanho desejado no parametro (Megas m, Gigas G) no fedora

		1 ) testa se pasta /tmp/ramdisk existem senão, cria ! 
	
		2 ) monta partição em RAM
		
		3 ) link ramdisk -> /tmp/ramdisk



	ex:  # sh monta_ramdisk.sh 1024m 

	
# teste de velocidade de escrita
	$ dd if=/dev/zero of=/tmp/ramdisk/zero bs=4k count=100000

# teste de velocidade de leitura
	$ dd if=/tmp/ramdisk/zero of=/dev/null bs=4k count=100000
	
	
											04/2023
