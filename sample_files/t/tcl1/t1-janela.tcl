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
wm title . "Teste 1"

# cria controles da janela

# reserva um espaço no topo, definindo uma margem superior
frame .topo
pack .topo -side top -fill x -pady 10

# cria plano
frame .plano
pack .plano -side top -fill both -padx 1 -pady 1
canvas .plano.conteudo -relief sunken -borderwidth 2
pack .plano.conteudo -side top -fill both -padx 1 -pady 1

.plano.conteudo create line 1 1 100 100
