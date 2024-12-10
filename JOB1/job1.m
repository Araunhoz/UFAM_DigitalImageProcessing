%Disciplina: Processamento Digital de Imagem 
%Ministrado: Professora Drª Marly Guimarães F. Costa
%Curso: Engenharia da Computação
% Aluno: Paulo Henrique Araújo Munhoz nº 21104569


%--------------------------------------------------------------------------------------------------------------------

%1)

f =imread ('C:\Users\henri\Documents\PDI\cktboard_200dpi_gl.jpg');      % Leitura da imagem e colocada na variável f.
t = ('C:\Users\henri\Documents\PDI\cktboard_200dpi_gl.jpg');

[M N] = size(f)                                                         % Captura do tamanho de imagem: linnhas x colunas.

summer = sum((sum(f))/(M*N));                                           % Se A é uma matriz, então a soma(A) retorna a vetor de linhas contendo a soma de cada coluna.
media = summer/(M*N);                                                   % Média é o somatório dos valores pela dimensão de Linhas por colunas. 


x=sprintf('The media is : %f', media );                                   % Armazena num variável o que aparecera na tela.
disp(x);                                                                % Coloca na tela o que há na variavel x. 

%----------------------------------------------------------------------------------------------------------------------

%2)

q = imfinfo(t);                                                         % Obtém-se as informações da imagem. 
number_bit = 2^q.BitDepth;                                              % O número de bits a serem armazenados é o calculo de 2^k.                                 

y=sprintf('Number of bits : %d',number_bit);                            % Armazena numa variável o que aparecerá na tela.
disp(y);                                                                % Coloca na tela o que há na variável y. 

%---------------------------------------------------------------------------------------------------------------------

%3)

p = imfinfo(t);                                                         % Obtém-se as informações da imagem. 

image_bytes = p.Width*p.Height*p.BitDepth/8;                            % Número de bytes na imagem.
compressed_bytes = p.FileSize;                                          % Bytes compressados.
compression_ratio = image_bytes/compressed_bytes;                       % Relação que a compressão ratio = imagem de bytes/ bytes compressado.

w = sprintf('Compression ratio : %f ', compression_ratio);              % Armazenando numa variável o resultado da compressão.
disp(w);                                                                % Coloca na tela o que há na váriavel w
imshow(f)                                                               % Abri uma janela alto nível com a imagem

%--------------------------------------------------------------------------------------------------------------------

%add
%pode-ser modificar lendo a imagem e reescre-lá num novo formato.


%imwrite(f,'C:\Users\henri\Documents\PDI\NewImage.tif');                 % Escrevendo uma imagem no formato tif.
%v = imread('C:\Users\henri\Documents\PDI\NewImage.tif');                % Lendo a imagem no novo formato.
%imshow(v);                                                              % Abrindo a imagem em uma janela

                                                                        
                                                              
                                                                       
                                                                      
                                                                     
















