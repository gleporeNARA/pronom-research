#! /usr/bin/wish

# O endereco da janela usada pelo programa dentro da hierarquia(?)
# de janelas eh o da janela corrente, definida por "."

# se janela nao existir
if { ! [winfo exists .] } {
    # cria
    toplevel .
}

# define aspectos básicos da janela
# tamanho
wm geometry . 500x300
# de tamanho fixo
wm resizable . 0 0
# título
wm title . "Teste 2"

# cria controles da janela

# reserva um espaço no topo, definindo uma margem superior
frame .topo
pack .topo -side top -fill x -pady 10

# cria planilha
# define controles
frame .planilha
scrollbar .rol_h -orient horiz -command ".planilha.celulas xview"
scrollbar .rol_v -command ".planilha.celulas yview"
canvas .planilha.celulas -relief sunken -borderwidth 2 \
    -scrollregion {0 0 2000 500} \
    -xscrollcommand ".rol_h set" \
    -yscrollcommand ".rol_v set"
# posiciona controles: canvas e barras de rolagem
# posiciona conjunto no topo, grudado à margem
pack .planilha -side top -fill both
# posiciona celulas no topo do conjunto
pack .planilha.celulas -side top -fill both
# define 3 divisoes para uma tabela e coloca em cada uma um controle
grid rowconfig    .planilha 0 -weight 1
grid columnconfig .planilha 0 -weight 1
grid .planilha.celulas -in .planilha -row 0 -column 0 -padx 4 -pady 4 -sticky nesw
grid .rol_h -in .planilha -row 1 -column 0 -padx 4 -sticky ew
grid .rol_v -in .planilha -row 0 -column 1 -pady 4 -sticky ns

.planilha.celulas create line 1 1 100 100
.planilha.celulas create line 1 100 100 1

