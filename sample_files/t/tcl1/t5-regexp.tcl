#! /usr/bin/wish



# O endereco da janela usada pelo programa dentro da hierarquia(?)
# de janelas eh o da janela corrente, definida por "."



# Lista com a largura de cada linha: quantas celulas ha em cada
# linha da planilha.
global larg_lins
# ID das celulas do canvas que possuem os botoes
global id_botoes



# Aumanta a largura de uma linha da planilha adicionando
# uma celula para entrada de texto, ao final.
# lin - indice que indica qual linha ampliar
#
# Variaveis globais:
# id_botoes - consulta para obter o id do botao associado
#             a linha
proc alarga_linha {lin} {

  global id_botoes

  set id [lindex $id_botoes $lin]
  
  # move o botao para o lado
  .planilha.celulas move $id 206 0

  # cria uma nova celula no lugar
  cria_celula $lin
}



# Adiciona uma nova linha ao final da planilha.
#
# Variaveis globais:
# id_botoes - consulta para obter o id do botao usado para criar
#             linhas alternativas
proc adiciona_nova_linha {} {

  global id_botoes

  set id [lindex $id_botoes end]
  
  # move o botao para baixo
  .planilha.celulas move $id 0 31

  # cria uma nova celula no lugar
  cria_celula [llength $id_botoes]
}



# Adiciona uma celula de entrada à planilha.
# Altera a posicao dos botoes (pode criar novos).
# lin - em qual linha a celula serah colocada
#
# Variaveis globais:
# larg_lins - atualiza com a nova celula
#
# Lin é um índice relativo às células, e não à coordenadas
# cartesianas (contagem inicia em 0).
proc cria_celula {lin} {

    global larg_lins
    global id_botoes

    # quantas celulas ha' na linha onde a celula deve ser criada
    set larg_linha [lindex $larg_lins $lin]

    # verifica se a linha existe
    if { $larg_linha != "" } { # exite

	# define o indice da nova celula na linha
	set col $larg_linha

    } else { # nao existe

	#define em qual linha e coluna criar a celula
	set col 0
	set lin [llength $larg_lins]

	# insere nova indicacao de largura na lista
	lappend larg_lins 0

	# cria botao (e celula) para ampliar largura da linha
	set nome .planilha.celulas.b$lin
	button $nome -text "e também . . ." -command "alarga_linha $lin"
	set id [.planilha.celulas create window 212 [expr 6 + 31 * $lin] -width 200 -height 25 -anchor nw -window $nome]

	# adiciona id do botao criado na lista de ids
	# copia ultimo elemento (id do botao que cria linhas)
	lappend id_botoes [lindex $id_botoes end]
	# atualiza lista
	set id_botoes [lreplace $id_botoes $lin $lin $id ]	
    }
	
    # define dados do controle de edicao da celula
    set nome_controle .planilha.celulas.e$col$lin
    set pos_x [expr 6 + 206 * $col]
    set pos_y [expr 6 + 31  * $lin]

    # cria controle para edicao textual, e a celula
    entry $nome_controle
    .planilha.celulas create window $pos_x $pos_y -width 200 -height 25 -anchor nw -window $nome_controle


    # atualiza lista de larguras de linhas
    set larg_lins [lreplace $larg_lins $lin $lin [expr $col + 1] ]
}



# Cria a janela principal e seus controles básicos.
proc cria_janela {} {

  # se janela nao exitir
  if { ! [winfo exists .] } {
      # cria
      toplevel .
  }

  # define aspectos básicos da janela
  # tamanho
  wm geometry . 600x330
  # de tamanho fixo
  wm resizable . 0 0
  # título
  wm title . "Teste 5"

  # reserva um espaço no topo, definindo uma margem superior
  frame .topo
  pack .topo -side top -fill x -pady 10

  # cria planilha

  # define controles: canvas (área das celulas) e barras de rolagem
  frame .planilha
  scrollbar .rol_h -orient horiz -command ".planilha.celulas xview"
  scrollbar .rol_v -command ".planilha.celulas yview"
  canvas .planilha.celulas -relief flat \
      -scrollregion {0 0 2066 316} \
      -xscrollcommand ".rol_h set" \
      -yscrollcommand ".rol_v set"

  # posiciona controles
  # posiciona conjunto no topo, grudado à margem
  pack .planilha -side top -fill both
  # posiciona celulas no topo do conjunto
  pack .planilha.celulas -side top -fill both

  # define 3 divisoes para a planilha; coloca um controle em cada divisao
  grid rowconfig    .planilha 0 -weight 1
  grid columnconfig .planilha 0 -weight 1
  grid .planilha.celulas -in .planilha -row 0 -column 0 -padx 4 -pady 4 -sticky nesw
  grid .rol_h -in .planilha -row 1 -column 0 -padx 4 -sticky ew
  grid .rol_v -in .planilha -row 0 -column 1 -pady 4 -sticky ns

  # cria botoes de controle geral
  frame .botoes
  pack .botoes -side top -fill x -pady 10
  button .botoes.fechar -text "Fechar" -width 20 -command "destroy ."
  button .botoes.procurar -text "Procurar" -width 20 -command "executa_busca"
  pack .botoes.procurar .botoes.fechar -side left -padx 10
}



# Inicia a aplicacao, atribui valores iniciais para certas
# variaveis e controles.
#
# Variaveis globais:
# larg_lins - define conteudo inicial da lista
# id_botoes - define conteudo inicial da lista
proc inicia_aplicativo {} {

  global larg_lins
  global id_botoes

  # define listas como vazias
  set larg_lins {}
  set id_botoes {}

  # inicia interface

  cria_janela

  # cria botao que insere novas linhas na planilha
  button .planilha.celulas.b_lin -text "ou . . ." -command "adiciona_nova_linha"
  set id [.planilha.celulas create window 6 37 -width 200 -height 25 -anchor nw -window .planilha.celulas.b_lin]
  lappend id_botoes $id

  # cria a primeira celula da planilha
  cria_celula 0
}



# Faz a busca pela expressao definida na planilha.
# Concatena os textos das celulas para criar
# uma expressao regular de busca conforme a sintaxe do PERL.
#
# Variaveis globais:
# larg_lins - indica em quais celulas procurar conteudo
proc executa_busca {} {

    global larg_lins

    # Monta a expressao de busca com o conteudo
    # das variaveis associadas às celulas de entrada textual.
    set expressao ""

    # para cada linha
    for {set lin 0} {$lin < [llength $larg_lins]} {incr lin} {

	# largura da linha
	set larg [lindex $larg_lins $lin]

	# se eh a primeira linha, omite operando
	if {$lin != 0} {
	    set expressao [join [list $expressao "|"] ""]
	}

	# para cada celula da linha
	for {set col 0} {$col < $larg} {incr col} {

	    # define conteudo da celula
	    set nome_cel .planilha.celulas.e$col$lin
	    set conteudo [$nome_cel get]

	    # concatena, se houver conteudo
	    if { $conteudo != "" } {

		# se eh a primeira celula, omite operando
		if {$col != 0} {
		    set expressao [join [list $expressao ".*"] ""]
		}

		set expressao [join [list $expressao $conteudo] ""]
	    }
	}
    }

    puts $expressao
}




inicia_aplicativo



# cria novas celulas ao lado, se for o caso
#bind .planilha.celulas.e1 <Enter> "puts aaa"
