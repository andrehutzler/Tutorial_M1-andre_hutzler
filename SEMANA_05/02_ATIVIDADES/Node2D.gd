extends Node2D

var teste = false
#var valor = 0 não está sendo usada
var numero = 0 #tirei o "´"
var lista = [] #coloquei var
var nome #adicionei para não ter erros na linha 14



func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #coloque o "$" na frente de LineEdit
	numero = $LineEdit.text #não tinha a var nome e inverti o $LineEdit.text com o nome
	nome = int($Button/LineEdit2.text)
	nome = $LineEdit2.text


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
# warning-ignore:shadowed_variable
	for i in range(10):
		numero += i #tirei o N maiúsculo
		lista.append(numero) #tirei o N maiúsculo
	$Label.text = String(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var i = 0#adicionei var i para não ter erros na função on_Button3_pressed
	var cont #adicionei var cont para não ter erros na função on_Button3_pressed
	while(i < len(lista)):
		cont=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
			i = i + 1 #esse comando para a conta
			
		$Label2.text = String(nome)
		
