%Disciplina: Processamento Digital de Imagem 
%Ministrado: Professora Dr� Marly Guimar�es F. Costa
%Curso: Engenharia da Computa��o
% Aluno: Paulo Henrique Ara�jo Munhoz n� 21104569


%--------------------------------------------------------------------------------------------------------------------

function [r,c,v] =cursorValues4e(f)
   
         figure,imshow(f);                                                       % Cria uma nova imagem para o imshow n�o finaliza nenhuma que esteja em segundo plano.
         H=gcf;                                                                  % H obtem o novo nome da imagem.
         [c,r] = ginput(1);                                                      % r -> linha e c -> coluna s�o extraidos pelo evento do click do cursor do mouse.
         v = pixVal4e(f,r,c);                                                    % Valor do Pixel de uma imagem de r -linha e c - colunas. 
         close(H);                                                               % Finaliza o imshow da imagem recente.
    
end

%--------------------------------------------------------------------------------------------------------------------
