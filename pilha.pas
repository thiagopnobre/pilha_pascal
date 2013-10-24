program Pilha_em_Pascal;

type
  TPessoa = record
    nome: string;
    idade: integer;
    sexo: char;
  end;
  TpNodo = ^TNodo;
  TNodo = record
    pPessoa: TPessoa;
    pProximo: TpNodo;
  end;
  
  var
    pTopo: TpNodo;
    pessoa1, pessoa2: TPessoa;
  
 procedure push(pNodo: TpNodo);
 begin
   pNodo^.pProximo := pTopo;
   pTopo := pNodo;
 end;
 
 function pop(): TpNodo;
 var
   pAux: TpNodo;
 begin
   pAux := pTopo;
   if (pTopo = nil) then
     writeln('Pilha vazia.')
   else
     pTopo := pAux^.pProximo;
   pop := pAux;
 end;
 
 procedure imprimir(pNodo: TpNodo);
 begin
   if (pNodo <> nil) then
     writeln('Nome: ',pNodo^.pPessoa.nome);
 end;
 
 Begin
   pTopo := nil;
   pessoa1.nome := 'Fulana';
   pessoa1.idade := 18;
   pessoa1.sexo := 'F';
   pessoa2.nome := 'Ciclano';
   pessoa2.idade := 20;
   pessoa2.sexo := 'M';
   
   push(@pessoa1);
   push(@pessoa2);
   imprimir(pop());
 End.
