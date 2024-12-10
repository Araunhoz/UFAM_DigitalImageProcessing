%Disciplina: Processamento Digital de Imagem 
%Ministrado: Professora Dr� Marly Guimar�es F. Costa
%Curso: Engenharia da Computa��o
% Aluno: Paulo Henrique Ara�jo Munhoz n� 21104569


%--------------------------------------------------------------------------------------------------------------------

%1)

f =imread ('C:\Users\henri\Documents\PDI\cktboard_200dpi_gl.jpg');      % Leitura da imagem e colocada na vari�vel f.
t = ('C:\Users\henri\Documents\PDI\cktboard_200dpi_gl.jpg');

[M N] = size(f)                                                         % Captura do tamanho de imagem: linnhas x colunas.

summer = sum((sum(f))/(M*N));                                           % Se A � uma matriz, ent�o a soma(A) retorna a vetor de linhas contendo a soma de cada coluna.
media = summer/(M*N);                                                   % M�dia � o somat�rio dos valores pela dimens�o de Linhas por colunas. 


x=sprintf('The media is : %f', media );                                   % Armazena num vari�vel o que aparecera na tela.
disp(x);                                                                % Coloca na tela o que h� na variavel x. 

%----------------------------------------------------------------------------------------------------------------------

%2)

q = imfinfo(t);                                                         % Obt�m-se as informa��es da imagem. 
number_bit = 2^q.BitDepth;                                              % O n�mero de bits a serem armazenados � o calculo de 2^k.                                 

y=sprintf('Number of bits : %d',number_bit);                            % Armazena numa vari�vel o que aparecer� na tela.
disp(y);                                                                % Coloca na tela o que h� na vari�vel y. 

%---------------------------------------------------------------------------------------------------------------------

%3)

p = imfinfo(t);                                                         % Obt�m-se as informa��es da imagem. 

image_bytes = p.Width*p.Height*p.BitDepth/8;                            % N�mero de bytes na imagem.
compressed_bytes = p.FileSize;                                          % Bytes compressados.
compression_ratio = image_bytes/compressed_bytes;                       % Rela��o que a compress�o ratio = imagem de bytes/ bytes compressado.

w = sprintf('Compression ratio : %f ', compression_ratio);              % Armazenando numa vari�vel o resultado da compress�o.
disp(w);                                                                % Coloca na tela o que h� na v�riavel w
imshow(f)                                                               % Abri uma janela alto n�vel com a imagem

%--------------------------------------------------------------------------------------------------------------------

%add
%pode-ser modificar lendo a imagem e reescre-l� num novo formato.


%imwrite(f,'C:\Users\henri\Documents\PDI\NewImage.tif');                 % Escrevendo uma imagem no formato tif.
%v = imread('C:\Users\henri\Documents\PDI\NewImage.tif');                % Lendo a imagem no novo formato.
%imshow(v);                                                              % Abrindo a imagem em uma janela

                                                                        
                                                              
                                                                       
                                                                      
                                                                     
















