class CalcController < ApplicationController
    #respond_to :json
    #attr_accessor :resultado
    skip_before_action :verify_authenticity_token
    #protect_from_forgery with: :null_session
    #protect_from_forgery unless: -> { request.format.json? }
    #skip_before_action :verify_authenticity_token

    def megasena
        a = []
        begin
        # add 1 because otherwise it gives you numbers from 0-48(na realidade quero de 0-60)
        number = rand(59)+1
        a.push(number) unless a.include?(number)
        end while a.size < 6
        a.sort! {|x, y| x <=> y}
        render json: {resultado: a}
    end

    def loterica

        numero_jogos=params[:numero_jogos]
        tipo_jogo=params[:tipo_jogo]
        dezenas=params[:dezenas]

        if (tipo_jogo==1)
        #if (params[:tipo_jogo]==1)
        #params[:tipo_jogo]=60
        tipo_jogo=60
        elsif (tipo_jogo==2)
        #elsif (params[:tipo_jogo]==2)
        tipo_jogo=25
        #params[:tipo_jogo]=60
        elsif (tipo_jogo==3)
        #elsif (params[:tipo_jogo]==3)
        tipo_jogo=80
        #params[:tipo_jogo]=80
        else puts "Tipo de jogo não permitido!"
        end
        #a=(1..tipo_jogo).to_a.shuffle.take(dezenas)
        (1..numero_jogos.to_i).each do |i|
        #(1..params[:numero_jogos]).each do |i|
        #a
        a=(1..tipo_jogo.to_i).to_a.shuffle.take(dezenas.to_i)
        #a=(1..params[:tipo_jogo]).to_a.shuffle.take(params[:dezenas])
        a.sort! {|x, y| x <=> y}
        end
        #a.sort! {|x, y| x <=> y}
        #numero_jogos=params[:numero_jogos]
        #a_i=[]
        #numero_jogos.times {|i|
        #begin
        #number = rand(59)+1
        #a_i.push(number) unless a_i.include?(number)
        #end  while a_i.size < 5
        #a_i.sort! {|x, y| x <=> y}
        #puts "#{a}"
        #render json:  {resultado: a}
     end
   
    def megasena1
        numero_jogos=params[:numero_jogos]
	if (numero_jogos==1)
        a=[]
	begin
        number = rand(59)+1
        a.push(number) unless a.include?(number)
        end  while a.size < 6
        a.sort! {|x, y| x <=> y}
        render json: {resultado: a}
        elsif (numero_jogos==2)
        a=[]
        b=[]
        begin
        number = rand(59)+1
        number2 = rand(59)+1
        a.push(number) unless a.include?(number)
        b.push(number2) unless b.include?(number2)
        end  while (a.size < 6)and(b.size < 6)
        a.sort! {|x, y| x <=> y}
        b.sort! {|x, y| x <=> y}
        render json: {jogo_1: a , jogo_2: b}
        elsif (numero_jogos==5)
	a=[]
	b=[]
	c=[]
	d=[]
	e=[]
	begin 
	number = rand(59)+1
	number2 = rand(59)+1
	number3 = rand(59)+1
	number4 = rand(59)+1
	number5 = rand(59)+1
	a.push(number) unless a.include?(number)
	b.push(number2) unless b.include?(number2)
	c.push(number3) unless c.include?(number3)
	d.push(number4) unless d.include?(number4)
	e.push(number5) unless e.include?(number5)
	end  while ((a.size < 6)and(b.size < 6)and(c.size < 6)and(d.size < 6)and(e.size < 6))
	a.sort! {|x, y| x <=> y}
	b.sort! {|x, y| x <=> y}
	c.sort! {|x, y| x <=> y}
	d.sort! {|x, y| x <=> y}
	e.sort! {|x, y| x <=> y}
	render json: {jogo_1: a , jogo_2: b , jogo_3: c , jogo_4: d , jogo_5: e}	
        end
    end

	def quina
        numero_jogos=params[:numero_jogos]
        if (numero_jogos==1)
        a=[]
        begin
        number = rand(79)+1
        a.push(number) unless a.include?(number)
        end  while a.size < 5
        a.sort! {|x, y| x <=> y}
        render json: {resultado: a}
        elsif (numero_jogos==2)
        a=[]
        b=[]
        begin
        number = rand(79)+1
        number2 = rand(79)+1
        a.push(number) unless a.include?(number)
        b.push(number2) unless b.include?(number2)
        end  while ((a.size < 5)and(b.size < 5))
        a.sort! {|x, y| x <=> y}
        b.sort! {|x, y| x <=> y}
        render json: {jogo_1: a , jogo_2: b}
        elsif (numero_jogos==5)
        a=[]
        b=[]
        c=[]
        d=[]
        e=[]
        begin
        number = rand(79)+1
	number2 = rand(79)+1
        number3 = rand(79)+1
        number4 = rand(79)+1
        number5 = rand(79)+1
        a.push(number) unless a.include?(number)
        b.push(number2) unless b.include?(number2)
        c.push(number3) unless c.include?(number3)
        d.push(number4) unless d.include?(number4)
        e.push(number5) unless e.include?(number5)
        end  while ((a.size < 5)and(b.size < 5)and(c.size < 5)and(d.size < 5)and(e.size < 5))
        a.sort! {|x, y| x <=> y}
        b.sort! {|x, y| x <=> y}
        c.sort! {|x, y| x <=> y}
        d.sort! {|x, y| x <=> y}
        e.sort! {|x, y| x <=> y}
        render json: {jogo_1: a , jogo_2: b , jogo_3: c , jogo_4: d , jogo_5: e}
        end
    end
	
    #def aleatorio
        #lista = Array.new(6)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        #lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero) 
        #render json: { resultado: lista = [lista[0], lista[1], lista[2], lista[3], lista[4], lista[5]] }
    #end

    
    #def megasena1_falha_repete_numeros
        #lista = Array.new(2)
        #lista = Array.new(5)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        #lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero)
        #if (lista[0]>lista[1])
          #lista=[lista[1], lista[0]]
        #else
          #lista=[lista[0], lista[1]]
        #end
        #(1..5).sort_by{rand}
        #while/if ((lista[0]=!lista[1])and(lista[0]=!lista[2])and(lista[0]=!lista[3])and(lista[0]=!lista[4])and(lista[0]=!lista[5])and(lista[1]=!lista[2])and(lista[1]=!lista[3])and(lista[1]=!lista[4])and(lista[1]=!lista[5])and(lista[2]=!lista[3])and(lista[2]=!lista[4])and(lista[2]=!lista[5])and(lista[3]=!lista[4])and(lista[3]=!lista[5])and(lista[4]=!lista[5]))
        #break
        #lista.sort! {|x, y| x <=> y}
        #end
        #render json: { resultado: lista}
    #end
    

      
      #def aleatorio2
        #lista = Array.new(2)
        #numero = params[:numero]
        #lista[0] = rand(numero)
        #lista[1] = rand(numero)
        #lista[2] = rand(numero)
        ##lista[3] = rand(numero)
        #lista[4] = rand(numero)
        #lista[5] = rand(numero)
        #if (lista[0]>lista[1]&&lista[0]>lista[2]&&lista[1]>lista[2])
          #lista=[lista[1], lista[2],lista[0]]
        #elsif (lista[1]>lista[2]&&lista[1]>lista[0])
          #lista=[lista[0], lista[2], lista[1]]
        #else 
           #lista=[lista[1], lista[2], lista[0]]
        #end
        #render json: { resultado: lista = [lista[0], lista[1], lista[2], lista[3], lista[4], lista[5]] }
        #render json: { resultado: lista}
    #end
   

    def somar
        #n1=0
        #n2=0
        render json: { resultado: params[:n1] + params[:n2] }
    end

    def subtrair
        #n1=0
        #n2=0
        render json: { resultado: params[:n1] - params[:n2] }
    end

    def fatorial
        fatorial = 1
        #numero = 0
        numero = params[:numero]
        for i in (1..numero)
            fatorial *= i
        end
        render json: {resultado: fatorial}
    end
end
