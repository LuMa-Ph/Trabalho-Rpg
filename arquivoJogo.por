
programa {

	inclua biblioteca Texto --> t
	inclua biblioteca Util  --> u
	
	cadeia ataqueEspadachim[3] = {"Chama Cortante", "Golpe Veloz", "Corte Preciso"}
	cadeia ataqueArqueiro[3]   = {"Tiro Rápido", "Flecha Relâmpago", "Flecha Penetrante"}
	cadeia ataqueMago[3]       = {"Bola de Fogo", "Raio Congelante", "Escudo Arcano"}
	cadeia frasesNPC1[3] = {"Olá viajante, vejo que está ferido", "Posso lhe oferecer uma cura ou um conselho", "O que deseja? "}
	cadeia frasesNPC2[4] = {"Olá viajante, vejo que em sua bolsa tem algo brilhando", "Posso olhar o que é?", "Veja só, você possui um pedra aumentadora de poder...", "Deseja utilizá-la?"}
	
	cadeia  classe = ""
	inteiro hpinimigo = 100
	inteiro velocidadeEscrita = 15
	inteiro ataqueinimigo
	inteiro hp = 100
	inteiro caminho
	inteiro quantidade = 0
	inteiro faseNPC = 0
	cadeia status = ""
	cadeia status2 = ""
	cadeia status3 = ""
	inteiro turnosCongelado = 0
	inteiro fase = 1
	logico ataque = falso
	
	funcao inicio()
	{
		cadeia nome
		inteiro op, opitem, opcoleta
		cadeia introFinalizada
		cadeia qualquerTecla

		escreva(">>===============================================================<<\n")
		escreva("||                                                               ||\n")
		escreva("||   ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ███████╗    ||\n")
		escreva("||  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██╔════╝    ||\n")
		escreva("||  ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║█████╗      ||\n")
		escreva("||  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║██╔══╝      ||\n")
		escreva("||  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝██║         ||\n")
		escreva("||   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝ ╚═╝         ||\n")
		escreva("||                                                               ||\n")
		escreva("||  ███████╗██╗  ██╗ █████╗ ██████╗  ██████╗ ██╗    ██╗███████╗  ||\n")
		escreva("||  ██╔════╝██║  ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔════╝  ||\n")
		escreva("||  ███████╗███████║███████║██║  ██║██║   ██║██║ █╗ ██║███████╗  ||\n")
		escreva("||  ╚════██║██╔══██║██╔══██║██║  ██║██║   ██║██║███╗██║╚════██║  ||\n")
		escreva("||  ███████║██║  ██║██║  ██║██████╔╝╚██████╔╝╚███╔███╔╝███████║  ||\n")
		escreva("||  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝  ||\n")
		escreva("||                                                               ||\n")
		escreva(">>===============================================================<<\n")


		escreva("\n\n- Pressione enter para começar -\n\n")
		leia(qualquerTecla)
		limpa()
		
		escrevaMaquina(" Olá, viajante! Nesse novo mundo que voce está prestes a entrar, voce será um grande heroi.\nNovos caminhos serão descobertos, e você será atacado por criaturas selvagens.\nTenha coragem e continue\n\n", velocidadeEscrita)
		escrevaMaquina("Vamos começar com o seu nome. Como se chama?(escreva em caixa alta)\n", velocidadeEscrita)
		leia(nome)
		
		faca {
		escrevaMaquina("De qual dessas classes voce gostaria de ser?\n\n", velocidadeEscrita)
		escrevaMaquina("Escolha uma opção:\n\n", velocidadeEscrita)
		escrevaMaquina("1 - Arqueiro \n\n", velocidadeEscrita)
		escrevaMaquina("2 - Espadachim \n\n", velocidadeEscrita)
		escrevaMaquina("3 - Mago \n\n", velocidadeEscrita)
		leia(op)
					
		escolha (op) {
		 caso 1:
		     escrevaMaquina("Agora você é " + nome + ", o ARQUEIRO! \n\n", velocidadeEscrita)
		     classe = "ARQUEIRO"
		     introFinalizada = "s"
		     escrevaMaquina("Seus ataques são: " + ataqueArqueiro[0] + " - " + ataqueArqueiro[1] + " - " + ataqueArqueiro[2] + "\n\n", velocidadeEscrita)
		     pare
		
		 caso 2:
		     escrevaMaquina("Agora você é " + nome + ", o ESPADACHIM! \n\n", velocidadeEscrita)
		     classe = "ESPADACHIM"
		     introFinalizada = "s"
		     escrevaMaquina("Seus ataques são: " + ataqueEspadachim[0] + " - " + ataqueEspadachim[1] + " - " + ataqueEspadachim[2] + "\n\n", velocidadeEscrita)
		     pare
		
		 caso 3:
		     escrevaMaquina("Agora você é " + nome + ", o MAGO! \n\n", velocidadeEscrita)
		     classe = "MAGO"
		     introFinalizada = "s"
		     escrevaMaquina("Seus ataques são: " + ataqueMago[0] + " - " + ataqueMago[1] + " - " + ataqueMago[2] + "\n\n", velocidadeEscrita)
		     pare
		
		 caso contrario:
		     escreva("Opção inválida.\n\n")
		     introFinalizada = "n"
		     pare
		}
		} enquanto (introFinalizada == "n")
		
		escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		
		escrevaMaquina("\n\n- História - \n\n", velocidadeEscrita)
		escrevaMaquina(nome + " estava de passagem na região de Eldrion,\n uma passagem estratégica entre dois grandes Reinos.\n Porém, Eldrion está sob ataque pelo exército do Rei das Sombras, que deseja conquistar\n território para ampliar seu dominio e libertar forças obscuras há muito tempo aprisionadas.", velocidadeEscrita)
		escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		
		escrevaMaquina("Você embarcou em sua jornada para achar o Rei das sombras.\nEntre na Floresta de Veldora e enfrente seus desafios.\n\n\n\n", velocidadeEscrita)
		escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		
		escrevaMaquina("Ao andar pela floresta você encontra alguns baús antigos no caminho", velocidadeEscrita)
		escrevaMaquina("\nDeseja Abrir o Baú?\n(1- Sim  2- Não)\n\n", velocidadeEscrita)
		leia(opitem)
		
		se (opitem == 1) {
			escrevaMaquina("\nAo abrir os baús você encontra algumas poções de cura\nDeseja coletar?\n(1- Sim  2- Não)\n\n", velocidadeEscrita)
			leia(opcoleta)
			limpa()
			
		se (opcoleta == 1) {
			 quantidade = u.sorteia(2, 3)
			 escrevaMaquina("Você coleta ", velocidadeEscrita)
			 escreva(quantidade)
			 escrevaMaquina(" poções\n", velocidadeEscrita)
			 escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			 leia(qualquerTecla)
			 limpa()
		} senao {
			 escrevaMaquina("\nVocê ignora as poções e segue sua jornada", velocidadeEscrita)
			 escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			 leia(qualquerTecla)
			 limpa()
		}
		} senao {
			escrevaMaquina("\nVocê ignora os baús e segue sua jornada...\n\n", velocidadeEscrita)
			escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			leia(qualquerTecla)
			limpa()
		}
		
		escrevaMaquina("Ao continuar sua jornada você encontra uma bifurcação\n\n", velocidadeEscrita)
		
		
		
		faca {
			escrevaMaquina("O lado esquerdo te levará por um pântano denso. O lado direito te levará a um caminho com proteções e estacas\nQual deseja seguir?\n", velocidadeEscrita)
			escrevaMaquina("(1- Esquerdo  2- Direito)\n\n", velocidadeEscrita)
			leia(caminho)
		
		escolha (caminho) {
		 caso 1:
		     escrevaMaquina("Você escolheu o caminho da esquerda, o pântano denso.", velocidadeEscrita)
		     caminho = 1
		     escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		     leia(qualquerTecla)
		     pare
		
		 caso 2:
		     escrevaMaquina("Você escolheu o caminho da direita, um caminho com proteções e estacas.", velocidadeEscrita)
		     caminho = 2
		     escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		     leia(qualquerTecla)
		     pare
		
		 caso contrario:
		     escrevaMaquina("Opção inválida \n\n", velocidadeEscrita)
		     caminho = 3
		}
		} enquanto (caminho == 3)
		
		limpa()
		
		
		se (caminho == 1) {
			escrevaMaquina("Uau! Ao caminhar pelo pântano denso, você encontra um grupo de Trolls!\nVocê não pode fugir da luta\n\n", velocidadeEscrita)
		} senao {
			escrevaMaquina("Uau! Ao caminhar pelo caminho fortificado, você encontra um grupo de Goblins!\nVocê não pode fugir da luta\n\n", velocidadeEscrita)
		}
		
		hp = 100
		hpinimigo = 100
		
		batalha()
		
		se (hp <= 0) {
			escreva(">>==============================================================================<<\n")
			escreva("||                                                                              ||\n")
			escreva("||   ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗   ||\n")
			escreva("||  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗  ||\n")
			escreva("||  ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝  ||\n")
			escreva("||  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗  ||\n")
			escreva("||  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║  ||\n")
			escreva("||   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝  ||\n")
			escreva("||                                                                              ||\n")
			escreva(">>==============================================================================<<\n")

			retorne
		}
		
		se (hpinimigo <= 0) {
			escrevaMaquina("\nVocê respira fundo após a batalha...\n", velocidadeEscrita)
			escrevaMaquina("A floresta parece silenciosa, mas uma nova ameaça se aproxima.\n", velocidadeEscrita)
		}

		escrevaMaquina("\n\n - Pressione Enter para continuar sua Jornada -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		faseNPC = 1

		encontroNPC1()


		escrevaMaquina("\n\n" + nome + ", em sua jornada para encontrar o Rei das Sombras, entra em uma floresta escura... \nLá, ele encontra uma cabana abandonada, onde pretende passar a noite." , velocidadeEscrita)
		escrevaMaquina("\n\n - Pressione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		escrevaMaquina("Você tenta dormir, mas escuta ruídos vindo de outros comôdos... Então você decide explorar." , velocidadeEscrita)
		escrevaMaquina("\n\n - Pressione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		escrevaMaquina("Ao andar pela cabana, você encontra alguns baús em um dos comôdos.", velocidadeEscrita)
		escrevaMaquina("\nDeseja Abrir o Baú?\n(1- Sim  2- Não)\n\n", velocidadeEscrita)
		leia(opitem)
		limpa()
		
		se (opitem == 1) {
			escrevaMaquina("\nAo abrir os baús você encontra mais algumas poções de cura\nDeseja coletar?\n(1- Sim  2- Não)\n\n", velocidadeEscrita)
			leia(opcoleta)
			
		se (opcoleta == 1) {
			 escrevaMaquina("Você coleta 5 poções\n", velocidadeEscrita)
			 quantidade = quantidade + 5
			 escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			 leia(qualquerTecla)
			 limpa()
		} senao {
			 escrevaMaquina("\nVocê ignora o baú, e continua procurando a causa dos sons...", velocidadeEscrita)
			 escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			 leia(qualquerTecla)
			 limpa()
		}
		} senao {
			escrevaMaquina("Você ignora o baú, e continua procurando a causa dos sons...", velocidadeEscrita)
			escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
			leia(qualquerTecla)
			limpa()
		}

		escrevaMaquina("Você encontra a sala de onde estão vindo os barulhos... Então, vocẽ cria coragem e finalmente decide abrir a porta...", velocidadeEscrita)
		escrevaMaquina("\n\n- Pressione enter para abrir a porta... -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		escreva("BAM! A porta é aberta bruscamente pelos lacaios do Rei das Sombras!\n")
		escrevaMaquina("Eles parecem estar segurando uma pedra preciosa... vamos ter que lutar para\n descobrir o que é!", velocidadeEscrita)
		escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		fase = 2
		hpinimigo = 100
		limpa()
		
		batalha()
		
		
		 se (hp <= 0) {
			escreva(">>==============================================================================<<\n")
			escreva("||                                                                              ||\n")
			escreva("||   ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗   ||\n")
			escreva("||  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗  ||\n")
			escreva("||  ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝  ||\n")
			escreva("||  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗  ||\n")
			escreva("||  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║  ||\n")
			escreva("||   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝  ||\n")
			escreva("||                                                                              ||\n")
			escreva(">>==============================================================================<<\n")

			retorne
		}
		
		se (hpinimigo <= 0) {
			escrevaMaquina("\nConsequentemente, derrubam a pedra no chão. Você a guarda em sua bolsa\n", velocidadeEscrita)
			escrevaMaquina("Agora, você finalmente pode voltar a dormir em paz... Para se preparar para\nas próximas ameaças que se aproximam.", velocidadeEscrita)
			escrevaMaquina("\n\n - Precione Enter para continuar sua Jornada -\n\n", velocidadeEscrita)
			leia(qualquerTecla)
			limpa()

			

			
		}
		escrevaMaquina("Após finalmente conseguir dormir, você termina de explorar a cabana mas não encontra mais nada dentro.\nEntão decide sair para continuar até seu objetivo final.", velocidadeEscrita)
		encontroNPC2()

		escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		escrevaMaquina("Você chega no fim da floresta...\nOnde encontra um caminho subindo uma montanha, que está cheia de placas dizendo para não subir\nVocê as ignora pois sabe que o rei das sombras está lá no topo, esperando a sua chegada...", velocidadeEscrita)
		escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		escrevaMaquina("Enquanto sobe a montanha, você percebe que está ficando com uma certa dificuldade de respirar.\nE ve que mais para frente você estará dentro de uma névoa densa...\n", velocidadeEscrita)
		escrevaMaquina("Mesmo relutante você não desiste, pois sabe que esse reino depende de você para ser libertado das garras do Rei da Sombras\nSem mais enrolação você adentra na névoa.", velocidadeEscrita)
		escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()

		escrevaMaquina("Você finalmente chega até o castelo, pensa em uma maneira de entrar com estilo, mas ignora seus pensamentos e entra de qualquer jeito.\n", velocidadeEscrita)
		escrevaMaquina("Lá está ele, sentado em cima de um trono, rodeado de lacaios...\nApenas te esperando...", velocidadeEscrita)
		escrevaMaquina("\nEntão você grita\n\n\n REI DAS SOMBRAS, EU ME CHAMO " + nome + ", O " + classe + ", E ESTOU AQUI PARA TE DERROTAR!!!", velocidadeEscrita)
		fase = 3
		escrevaMaquina("\n\n - Precione Enter para batalhar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		
		batalhaFinal()

		 se (hp <= 0) {
			escreva(">>==============================================================================<<\n")
			escreva("||                                                                              ||\n")
			escreva("||   ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗   ||\n")
			escreva("||  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗  ||\n")
			escreva("||  ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝  ||\n")
			escreva("||  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗  ||\n")
			escreva("||  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║  ||\n")
			escreva("||   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝  ||\n")
			escreva("||                                                                              ||\n")
			escreva(">>==============================================================================<<\n")

			retorne
		}
		se (hpinimigo <= 0) {
			escrevaMaquina("\nFinalmente tudo acaba, você derrota ele.\n", velocidadeEscrita)
			escrevaMaquina("Agora, você finalmente voltar para Veldron, onde será visto como herói por ter libertado esse reino das garras do Rei das Sombras", velocidadeEscrita)
			escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
			leia(qualquerTecla)
			limpa()			
		}

		escrevaMaquina("Você finalmente retorna...\n\nÉ recebido por uma multidão que chega até você e o joga para cima como comemoração.\n", velocidadeEscrita)
		escrevaMaquina("Depois de uma grande comemoração, eles te colocam no chão, então o ancião do reino chega e o parabeniza pela vitória.\nEntão você finalmente pode descançar...", velocidadeEscrita)
		escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()	

		escrevaMaquina("\n████████╗██╗  ██╗███████╗    ███████╗███╗   ██╗██████╗ \n", 10)
		escrevaMaquina("╚══██╔══╝██║  ██║██╔════╝    ██╔════╝████╗  ██║██╔══██╗\n", 10)
		escrevaMaquina("   ██║   ███████║█████╗      █████╗  ██╔██╗ ██║██║  ██║\n", 10)
		escrevaMaquina("   ██║   ██╔══██║██╔══╝      ██╔══╝  ██║╚██╗██║██║  ██║\n", 10)
		escrevaMaquina("   ██║   ██║  ██║███████╗    ███████╗██║ ╚████║██████╔╝\n", 10)
		escrevaMaquina("   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝  ╚═══╝╚═════╝ \n", 10)


		
	}
	
		funcao escrevaMaquina(cadeia texto, inteiro velocidade)
		{
			para (inteiro i = 0; i < t.numero_caracteres(texto); i++) {
			escreva(t.obter_caracter(texto, i))
			u.aguarde(velocidade)
			}
		}
		
	
		funcao batalha()
{

		    inteiro acao = 0
		    inteiro probabilidade
		    cadeia qualquerTecla
		    logico escudoAtivo = falso
		
		    enquanto (hp > 0 e hpinimigo > 0) {
		
		        escreva("HP: ", hp, " | HP Inimigos: ", hpinimigo, "\n\n")
		        escrevaMaquina("Escolha sua ação:\n\n", velocidadeEscrita)
		        escrevaMaquina("Ataques:\n", velocidadeEscrita)
		
		        se (classe == "ARQUEIRO") {
		            escreva(" 1 - ", ataqueArqueiro[0], "  2 - ", ataqueArqueiro[1], "  3 - ", ataqueArqueiro[2], "\n")
		        }
		        se (classe == "ESPADACHIM") {
		            escreva(" 1 - ", ataqueEspadachim[0], "  2 - ", ataqueEspadachim[1], "  3 - ", ataqueEspadachim[2], "\n")
		        }
		        se (classe == "MAGO") {
		            escreva(" 1 - ", ataqueMago[0], "  2 - ", ataqueMago[1], "  3 - ", ataqueMago[2], "\n")
		        }
		
		        escrevaMaquina(" 4 - Usar poção de cura\n", velocidadeEscrita)
		        escreva("Você possui ", quantidade, " poções\n\n")
		        leia(acao)
		
		        escolha (acao) {
		            caso 1:
		                se (classe == "ARQUEIRO") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueArqueiro[0], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 80) {
		                        escrevaMaquina("\nVários tiros, nenhuma chance! Tiro Rápido!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 15
		                    } senao {
		                        escrevaMaquina("Mas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao se (classe == "ESPADACHIM") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueEspadachim[0], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 90) {
		                        escrevaMaquina("\nQueime com a lâmina ardente do meu juramento! Chama Cortante!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 25
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao { // Mago - Bola de Fogo (slot 1)
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueMago[0], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 90) {
		                        se (status == "congelado" ou turnosCongelado > 0) {
								    escrevaMaquina("\nO inimigo já estava congelado... A mistura de fogo e gelo causa um choque térmico devastador!\n\n", velocidadeEscrita)
								    hpinimigo = hpinimigo - 50
								    turnosCongelado = 0   
								} senao {
								    escrevaMaquina("\nIncendeiem-se nas chamas do meu poder! Bola de Fogo!\n\n", velocidadeEscrita)
								    hpinimigo = hpinimigo - 25
								    status2 = "fogo"
								}
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                }
		                pare
		
		            caso 2:
		                se (classe == "ARQUEIRO") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueArqueiro[1], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 75) {
		                        escrevaMaquina("\nQue os céus trovejem com minha fúria! Flecha Relâmpago!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 30
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao se (classe == "ESPADACHIM") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueEspadachim[1], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 75) {
		                        escrevaMaquina("\nVocê nem vai ver de onde veio! Golpe Veloz!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 20
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao { // Mago - Raio Congelante (slot 2)
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueMago[1], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 30) {
							    escrevaMaquina("\nSeu destino está selado... em gelo eterno! Raio Congelante!\n\n", velocidadeEscrita)
							    hpinimigo = hpinimigo - 20
							    turnosCongelado = 2   
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                }
		                pare
		
		            caso 3:
		                se (classe == "ARQUEIRO") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueArqueiro[2], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 75) {
		                        escrevaMaquina("\nNada escapa da flecha que perfura o destino! Flecha Penetrante!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 30
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao se (classe == "ESPADACHIM") {
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueEspadachim[2], "\n")
		                    probabilidade = u.sorteia(0, 100)
		                    se (probabilidade <= 75) {
		                        escrevaMaquina("\nNão há defesa contra minha precisão absoluta! Corte Preciso!\n\n", velocidadeEscrita)
		                        hpinimigo = hpinimigo - 30
		                    } senao {
		                        escrevaMaquina("\nMas você erra o ataque...\n", velocidadeEscrita)
		                    }
		                } senao { // Mago - Escudo Arcano (slot 3)
		                    escrevaMaquina("Você usa ", velocidadeEscrita)
		                    escreva(ataqueMago[2], "\n")
		                    escrevaMaquina("\nNada romperá minha magia! Escudo Arcano!\n\nVocê não será atingido neste turno.\n", velocidadeEscrita)
		                    escudoAtivo = verdadeiro
		                }
		                pare
		
		            caso 4:
		                se (quantidade > 0 e hp < 100) {
		                    escrevaMaquina("Você usa uma poção para aumentar seu HP.\n", velocidadeEscrita)
		                    quantidade = quantidade - 1
		                    hp = hp + 25
		                    se (hp > 100) {
		                        hp = 100
		                    }
		                } senao {
		                    escrevaMaquina("Você não pode usar poções agora...\n", velocidadeEscrita)
		                }
		                pare
		
		            caso contrario:
					escrevaMaquina("Opção inválida.\n\n", velocidadeEscrita)
		        }
		
		        
		        se (hpinimigo < 0) { hpinimigo = 0 }
		        se (hp < 0) { hp = 0 }
		
		        se (hpinimigo <= 0) {
		            escrevaMaquina("\nOs inimigos foram derrotados!\n", velocidadeEscrita)
		            pare
		        }
		
		        
		        se (escudoAtivo) {
		            escudoAtivo = falso
		            escrevaMaquina("O ataque inimigo é anulado pelo Escudo Arcano!\n", velocidadeEscrita)
		    }   senao se (turnosCongelado > 0) {
				    escrevaMaquina("O inimigo perde o turno, está congelado!\n", velocidadeEscrita)
				    turnosCongelado = turnosCongelado - 1
				} senao {
				    ataqueGoblin()
				}
		

		        se (hp <= 0) { hp = 0 }
		        se (hp <= 0) {
		            escrevaMaquina("\nVocê foi derrotado...\n", velocidadeEscrita)
		            pare
		        }

        escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
        leia(qualquerTecla)
        limpa()
    }
}
		
		
	funcao ataqueGoblin()
	{
		
	se(fase== 1){
		se (caminho == 2) {
			se (hpinimigo <= 0) {
				escrevaMaquina("\n\nOs Goblins são derrotados, caindo no chão.\n", velocidadeEscrita)
				retorne
			}
			
			escrevaMaquina("\nOs Goblins tentam te atacar", velocidadeEscrita)
			ataqueinimigo = u.sorteia(1, 3)
			
			se (ataqueinimigo == 1) {
				escrevaMaquina(", usando rajada de dardos!\n\n", velocidadeEscrita)
				hp = hp - 15
			} senao se (ataqueinimigo == 2) {
				escrevaMaquina(", usando estilingue de pedras!\n\n", velocidadeEscrita)
				hp = hp - 20
			} senao {
				escrevaMaquina(", mas erram o ataque...\n", velocidadeEscrita)
			}
			
		} senao { 
			se (hpinimigo <= 0) {
				escrevaMaquina("\n\nOs Trolls são derrotados, caindo no chão.\n", velocidadeEscrita)
			 retorne
			}
			
			escrevaMaquina("\nOs Trolls tentam te atacar", velocidadeEscrita)
			ataqueinimigo = u.sorteia(1, 3)
			
			se (ataqueinimigo == 1) {
				escrevaMaquina(", usando soco sísmico!\n\n", velocidadeEscrita)
				hp = hp - 20
			} senao se (ataqueinimigo == 2) {
				escrevaMaquina(", usando tormenta de lama!\n\n", velocidadeEscrita)
				hp = hp - 15
			} senao {
				escrevaMaquina(", mas erram o ataque...\n", velocidadeEscrita)
			}
		}
	}


			senao se(fase == 2){
				se (hpinimigo <= 0) {
				escrevaMaquina("\n\nOs Lacaios são derrotados, caindo no chão.\n", velocidadeEscrita)
				retorne
			}
			
			escrevaMaquina("\nOs Lacaios do Rei das Sombras tentam te atacar", velocidadeEscrita)
			ataqueinimigo = u.sorteia(1, 3)
			
			se (ataqueinimigo == 1) {
				escrevaMaquina(", usando o poder da pedra misteriosa!\n\n", velocidadeEscrita)
				hp = hp - 25
			} senao se (ataqueinimigo == 2) {
				escrevaMaquina(", usando golpe de espadas!\n\n", velocidadeEscrita)
				hp = hp - 20
			} senao {
				escrevaMaquina(", mas erram o ataque...\n", velocidadeEscrita)
			}
			
		} 
	}


	funcao encontroNPC1(){

		inteiro escolhas
		cadeia qualquerTecla

		se(faseNPC == 1){
			escrevaMaquina("Você encontra o Gleisson\n Um curandeiro\n\nEle fala...\n", velocidadeEscrita)
		}
		

		para(inteiro i=0; i < 3; i++){
			escrevaMaquina(frasesNPC1[i], velocidadeEscrita)
			escreva("\n")
		}


        faca{

		escrevaMaquina("\n1 - Receber Cura\n", velocidadeEscrita)
	   	escrevaMaquina("2 - Receber Conselho\n", velocidadeEscrita)
	   	escrevaMaquina("3 - Ignorar e seguir viagem\n\n", velocidadeEscrita)
	   
	   	leia(escolhas)

		escolha(escolhas){
			caso 1:
				escreva("\n")
				escrevaMaquina("Gleisson cura suas feridas", velocidadeEscrita)
				hp = 100
				escrevaMaquina("\nHP: " + hp, velocidadeEscrita)
				pare
				
			caso 2:
				escreva("\n")
				escrevaMaquina("Gleisson sussura...\nUse suas poções com sabedoria. Guardá-las para o momento certo pode salvar sua vida.", velocidadeEscrita)
				pare
			caso 3:
				escreva("\n")
				escrevaMaquina("Você segue seu caminho...", velocidadeEscrita)
				pare

			caso contrario:
				escrevaMaquina("Opção inválida", velocidadeEscrita)
		}
		
		}enquanto(escolhas != 1 e  escolhas != 2 e escolhas != 3)
		
	}

	funcao encontroNPC2(){
		
		inteiro escolhas
		cadeia qualquerTecla

		escrevaMaquina("Ao continuar sua jornada você vê uma figura estranha na floresta...\n\n", velocidadeEscrita)
		escrevaMaquina("\n\n - Precione Enter para ver quem era a figura estranha -\n\n", velocidadeEscrita)
		leia(qualquerTecla)
		limpa()
		
		escrevaMaquina("Você encontra o Veigo\n Um senhor estranho\n\nEle fala...\n", velocidadeEscrita)

		

		para(inteiro i=0; i < 4; i++){
			escrevaMaquina(frasesNPC2[i], velocidadeEscrita)
			escreva("\n")
		}


        faca{

		escrevaMaquina("\n1 - Melhorar seus ataques\n", velocidadeEscrita)
	   	escrevaMaquina("2 - Ignorar e seguir viagem\n\n", velocidadeEscrita)
	   
	   	leia(escolhas)

		escolha(escolhas){
			caso 1:
				escreva("\n")
				escrevaMaquina("Veigo lhe ensina a melhorar seus ataques\nAgora você está mais forte e pronto para enfrentar seu maior inimigo", velocidadeEscrita)
				ataque = verdadeiro
				pare
			caso 2:
				escreva("\n")
				escrevaMaquina("Você segue seu caminho...", velocidadeEscrita)
				pare

			caso contrario:
				escrevaMaquina("Opção inválida", velocidadeEscrita)
		}
		
		}enquanto(escolhas != 1 e  escolhas != 2)
		
	}


	funcao batalhaFinal()
	{
	    hp = 100
	    inteiro acao = 0
	    inteiro probabilidade
	    cadeia qualquerTecla
	    logico escudoAtivo = falso
	    inteiro hpBoss = 100
	
	    enquanto (hp > 0 e hpBoss > 0) {
	
	        escreva("HP: ", hp, " | HP Rei das Sombras: ", hpBoss, "\n\n")
	        escrevaMaquina("Escolha sua ação:\n\n", velocidadeEscrita)
	        escrevaMaquina("Ataques:\n", velocidadeEscrita)
	
	        se (classe == "ARQUEIRO") {
	            escreva(" 1 - ", ataqueArqueiro[0], "  2 - ", ataqueArqueiro[1], "  3 - ", ataqueArqueiro[2], "\n")
	        }
	        se (classe == "ESPADACHIM") {
	            escreva(" 1 - ", ataqueEspadachim[0], "  2 - ", ataqueEspadachim[1], "  3 - ", ataqueEspadachim[2], "\n")
	        }
	        se (classe == "MAGO") {
	            escreva(" 1 - ", ataqueMago[0], "  2 - ", ataqueMago[1], "  3 - ", ataqueMago[2], "\n")
	        }
	
	        escrevaMaquina(" 4 - Usar poção de cura\n", velocidadeEscrita)
	        escreva("Você possui ", quantidade, " poções\n\n")
	        leia(acao)
	
	        escolha (acao) {
	            caso 1:
	                se (classe == "ARQUEIRO") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 80 e ataque == verdadeiro) {
	                        escrevaMaquina("\n Voce usa o ataque tiro rapido, muito eficiente, varias flechas vao em direcao ao Rei das Sombras!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 25
	                        
	                    }senao se(probabilidade <= 80 e ataque == falso){
	                    	 escrevaMaquina("\n Voce usa o ataque tiro rapido, muito eficiente, varias flechas vao em direcao ao Rei das Sombras!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 15
	                    }
	                     senao {
	                        escrevaMaquina("Voce tenta acertar o Rei das Sombras com tiro rapido, mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao se (classe == "ESPADACHIM") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 90 e ataque == verdadeiro) {
	                        escrevaMaquina("\nVoce encendeia sua espada com sua chama inteiror, vai em direcao ao Rei das Sombras, e utiliza o ataque chama cortante!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 35
	                    }senao se(probabilidade <= 90 e ataque == falso){
	                    	 escrevaMaquina("\nVoce encendeia sua espada com sua chama inteiror, vai em direcao ao Rei das Sombras, e utiliza o ataque chama cortante!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 25
	         
	                    } senao {
	                        escrevaMaquina("\nVoce tenta acertar o Rei das Sombras com chama cortante mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao { // Mago - Bola de Fogo (slot 1)
	                    escrevaMaquina("Você usa ", velocidadeEscrita)
	                    escreva(ataqueMago[0], "\n")
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 90 e ataque == verdadeiro) {
	                        se (status == "congelado" ou turnosCongelado > 0) {
							    escrevaMaquina("\nVoce ataca com bola de fogo! O Rei se encontra congelado, entao voce o causa um choque termico.\nCuidado ele vai revidar!!\n\n", velocidadeEscrita)
							    hpBoss = hpBoss - 60
							    turnosCongelado = 0
							    }senao se(probabilidade <= 90 e ataque == falso){
	                    	 escrevaMaquina("\nVoce ataca com bola de fogo! O Rei se encontra congelado, entao voce o causa um choque termico!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 50   
							} senao {
							    escrevaMaquina("\nVoce ataca o Rei das Sombras com uma poderosa bola de fogo!!\n\n", velocidadeEscrita)
							    hpBoss = hpBoss - 35
							    status2 = "fogo"
							}
	                    } senao {
	                        escrevaMaquina("\nVoce tenta atacar o Rei das Sombras com uma bola de fogo mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                }
	                pare
	
	            caso 2:
	                se (classe == "ARQUEIRO") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 75 e ataque == verdadeiro) {
	                        escrevaMaquina("\nVoce invoca uma tempestade de raios e os transferem para seu arco! Voce usa flecha relampago!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 40
	                        }senao se(probabilidade <= 75 e ataque == falso){
	                    	 escrevaMaquina("\nVoce invoca uma tempestade de raios e os transferem para seu arco! Voce usa flecha relampago!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 30
	                    } senao {
	                        escrevaMaquina("\nVoce tenta atacar o Rei das Sombras com uma flecha relampago mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao se (classe == "ESPADACHIM") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 75 e ataque == verdadeiro) {
	                        escrevaMaquina("\nVoce corre em alta velocidade e pula em direcao ao Rei das Sombras, faz um corte tao rapido que ele nao ve, voce utiliza corte rapido!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 30
	                        }senao se(probabilidade <= 75 e ataque == falso){
	                    	 escrevaMaquina("\nVoce corre em alta velocidade e pula em direcao ao Rei das Sombras, faz um corte tao rapido que ele nao ve, voce utiliza corte rapido!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 20 
	                    } senao {
	                        escrevaMaquina("\nVoce tenta utilizar o corte rapido mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao { // Mago - Raio Congelante (slot 2)
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 30 e ataque == verdadeiro) {
						    escrevaMaquina("\nO ar fica gelado, voce olha para o Rei das Sombras e o congela em um grande bloco de gelo, raio congelante!!\n\n", velocidadeEscrita)
						    hpBoss = hpBoss - 20
						    turnosCongelado = 2   
						    }senao se(probabilidade <= 30 e ataque == falso){
	                    	 escrevaMaquina("\nO ar fica gelado, voce olha para o Rei das Sombras e o congela em um grande bloco de gelo, raio congelante!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 15		                    
	                    } senao {
	                        escrevaMaquina("\nVoce tenta lancar um raio congelante mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                }
	                pare
	
	            caso 3:
	                se (classe == "ARQUEIRO") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 75 e ataque == verdadeiro) {
	                        escrevaMaquina("\nVoce puxa a corda de seu arco com sua forca maxima, atira uma flecha tao forte que penetra qualquer defesa, voce usa fleca penetrante!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 40
	                        }senao se(probabilidade <= 75 e ataque == falso){
	                    	 escrevaMaquina("\nVoce puxa a corda de seu arco com sua forca maxima, atira uma flecha tao forte que penetra qualquer defesa, voce usa fleca penetrante!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 30
	                    } senao {
	                        escrevaMaquina("\nVoce tenta usar a fleca penetrante mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao se (classe == "ESPADACHIM") {
	                    probabilidade = u.sorteia(0, 100)
	                    se (probabilidade <= 75 e ataque == verdadeiro) {
	                        escrevaMaquina("\nVoce respira fundo e presta atencao em todos os movimentos do Rei das Sombras e vai em sua direcao sabendo onde mirar, ataca ele com corte preiso!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 40
	                        }senao se(probabilidade <= 75 e ataque == falso){
	                    	 escrevaMaquina("\nVoce respira fundo e presta atencao em todos os movimentos do Rei das Sombras e vai em sua direcao sabendo onde mirar, ataca ele com corte preiso!!\n\n", velocidadeEscrita)
	                        hpBoss = hpBoss - 30
	                    } senao {
	                        escrevaMaquina("\nVoce tenta acertar o Rei das Sombras com precisao maxima mas você erra o ataque...\n", velocidadeEscrita)
	                    }
	                } senao { // Mago - Escudo Arcano (slot 3)
	                    escrevaMaquina("Você usa ", velocidadeEscrita)
	                    escreva(ataqueMago[2], "\n")
	                    escrevaMaquina("\nVoce cria um escudo de magia, posiciona em frente do ataque do Rei das Sombras e consegue defender, voce usa escudo arcano!!\n", velocidadeEscrita)
	                    escudoAtivo = verdadeiro
	                }
	                pare
	
	            caso 4:
	                se (quantidade > 0 e hp < 100) {
	                    escrevaMaquina("Você usa uma poção para aumentar seu HP.\n", velocidadeEscrita)
	                    quantidade = quantidade - 1
	                    hp = hp + 25
	                    se (hp >= 100) {
	                        hp = 100
	                    }senao se(hp >= 200){
	                    	hp = 200
	                    	
	                    }
	                    
	                } senao {
	                    escrevaMaquina("Você não pode usar poções agora...\n", velocidadeEscrita)
	                }
	                pare
	
	            caso contrario:
				escrevaMaquina("Opção inválida.\n\n", velocidadeEscrita)
	        }
	
	        
  			   se (hpBoss < 0) { hpBoss = 0 }
		        se (hp < 0) { hp = 0 }
		
		        se (hpBoss <= 0) {
		        	escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
				leia(qualquerTecla)
				limpa()
		          escrevaMaquina("\n\nO Rei das Sombras é finalmente derrotado, caindo de joelhos no chão.\n\n", velocidadeEscrita)
		          pare
		        }
	
	        
	        se (escudoAtivo) {
	            escudoAtivo = falso
	            escrevaMaquina("O ataque inimigo é anulado pelo Escudo Arcano!\n", velocidadeEscrita)
	    }   senao se (turnosCongelado > 0) {
			    escrevaMaquina("O inimigo perde o turno, está congelado!\n", velocidadeEscrita)
			    turnosCongelado = turnosCongelado - 1
			} senao {
			    ataqueBossFinal()
			}

	        se (hp <= 0) { hp = 0 }
	        se (hp <= 0) {
	            escrevaMaquina("\nVocê foi derrotado...\n", velocidadeEscrita)
	            pare
	        }

  		 escrevaMaquina("\n\n- Pressione enter para continuar -\n\n", velocidadeEscrita)
   		leia(qualquerTecla)
   		limpa()
		}
	}
	funcao ataqueBossFinal(){
		inteiro hpBoss = 100
		cadeia qualquerTecla
		
		se(fase == 3){
			se (hpBoss <= 0) {
				escrevaMaquina("\n\n - Precione Enter para continuar -\n\n", velocidadeEscrita)
				leia(qualquerTecla)
				limpa()
				escrevaMaquina("\n\nO Rei das Sombras é finalmente derrotado, caindo de joelhos no chão.\n", velocidadeEscrita)
				retorne
			}
			escrevaMaquina("\nO Rei das Sombras tenta te atacar", velocidadeEscrita)
			ataqueinimigo = u.sorteia(1, 4)
			
			se (ataqueinimigo == 1) {
				escrevaMaquina(", ele desfere um corte envolto em trevas puras, liberando ondas que consomem tudo em seu caminho.Corte das Trevas Eternas!!\n\n", velocidadeEscrita)
				hp = hp - 40
			} senao se (ataqueinimigo == 2) {
				escrevaMaquina(", Uma tempestade maldita se forma sobre o alvo, crescendo em poder até explodir em pura energia sombria.Ruína Sombria!! \n\n", velocidadeEscrita)
				hp = hp - 35
			}senao se (ataqueinimigo == 3){
				escrevaMaquina(", Correntes negras emergem do solo, prendendo os inimigos enquanto drenam lentamente sua essência.Correntes do Abismo!! \n\n", velocidadeEscrita)
				hp = hp - 30
			}senao {
				escrevaMaquina(", mas erra o ataque...\n", velocidadeEscrita)
			}
			
		} 
    }
	
}
 
