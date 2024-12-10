%Disciplina: Processamento Digital de Imagem 
%Ministrado: Professora Drª Marly Guimarães F. Costa
%Curso: Engenharia da Computação
% Aluno: Paulo Henrique Araújo Munhoz nº 21104569


%--------------------------------------------------------------------------------------------------------------------

function v = pixVal4e(f,r,c)                                                       %  pixVal4e -> Valor do Pixel de uma imagem de r -linha e c - colunas.
         
           x = imread(f);                                                          %  Lê a imagem. 
           v = x(round(r),round(c));                                               %  Faz um 'cast' de arrendodamento na linha e coluna e informa o numero de linhas e colunas. 
end

%--------------------------------------------------------------------------------------------------------------------