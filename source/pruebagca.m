

%red=1;fentre=3;fapre=2;nc=8
%tc1=2;tc2=2;tc3=2;tc4=2;
%tc5=2;tc6=2;tc7=2;tc8=2;
%fc1=2;fc2=2;fc3=2;fc4=2;
%fc5=2;fc6=2;fc7=2;fc8=2;
%periodo=2;
%pause
dlmwrite('resultpruebagca.csv',' ');dlmwrite('resultpruebagca.doc',' ');dlmwrite('red.txt',' ')
  fid=fopen('resultpruebagca.csv','a+');
   fprintf(fid,'Entrenada el ');
   fprintf(fid,',');
   fprintf(fid,'Inicio de datos');
   fprintf(fid,',');
   fprintf(fid,'fin de datos ');
   fprintf(fid,',');
   fprintf(fid,'Festivos','\r');
   fprintf(fid,',');
   fprintf(fid,'Tendencia');
   fprintf(fid,',');
   fprintf(fid,'Suavizado');
   fprintf(fid,',');
   fprintf(fid,'Tipo de red ');
   fprintf(fid,',');
   fprintf(fid,'Función de entrenamiento  ');
   fprintf(fid,',');
   fprintf(fid,'Función de aprendizaje  ');
   fprintf(fid,',');
   fprintf(fid,'Numero de capas  ');
   fprintf(fid,',');
   fprintf(fid,'Neuronas por capa 1');
   fprintf(fid,',');
   fprintf(fid,'Neuronas por capa 2');
   fprintf(fid,',');
fprintf(fid,'Neuronas por capa 3');
fprintf(fid,',');
fprintf(fid,'Neuronas por capa 4');
fprintf(fid,',');
fprintf(fid,'Neuronas por capa 5');
fprintf(fid,',');
fprintf(fid,'Función de transferencia usada',','); 
fprintf(fid,',');
fprintf(fid,'MAD en entrenamiento');
fprintf(fid,',' );
fprintf(fid,'MSE en entrenamiento');
fprintf(fid,',' );
fprintf(fid,'MAPE en entrenamiento (%)  ');
fprintf(fid,',' );
fprintf(fid,'Cantidad de épocas empleadas ');
fprintf(fid,',');
fprintf(fid,'MAD en validación');
fprintf(fid,',' );
fprintf(fid,'MSE en validación ');
fprintf(fid,',' );
fprintf(fid,'MAPE en validación (%)  ');
fprintf(fid,',' );
fprintf(fid,'Cantidad de épocas empleadas ');
%fprintf(fid,'Cantidad de épocas empleadas:  ');
fprintf(fid,',');
%fprintf(fid,'Cantidad de épocas empleadas: ');
%fprintf(fid,',');
fclose(fid);
%  se inica la simulacion de todos los modelos
% usando función de transfe logsig
for tred=3:1:3  %1-3
 for fentre=4:1:4 %1-4
  for fapre=2:1:2 %1-2
     nc=0;
     for nc=1:1:numc %1-10 manual en todos se tabajaran con cinco capas
   tc1=0;fc1=0;tc2=0;fc2=0;tc3=0;fc3=0;tc4=0;fc4=0;tc5=0;fc5=0;tc6=0;fc6=0;tc7=0;fc7=0;tc8=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
   p=1;   disp('SE ACABA DE INICAR NUEVAMENTE EL PROCESO');
   close all
   nc
   switch nc
      case 1
         for i=1:1:tmaxc %15
       tc1=i;    fc1=1;j=0;
       tc2=0; tc3=0;tc4=0;tc5=0;tc6=0;tc7=0;tc8=0;tc11=0;tc12=0;tc13=0;tc14=0;tc15=0;
       fc2=0;fc3=0;fc4=0;fc5=0;fc6=0;fc7=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;fc11=0;fc12=0;
       fc13=0;fc14=0;fc15=0;     disp('se utiliza 1 capa');
       tred;    fentre;   fapre;entre;
       disp('se termino el proceso');       savegca;
       clear red1 red parametrosred net e e1; close all
                end
        case 2
          i=1;j=1;
           for j=1:1:tmaxc %15
              tc1=j;  fc1=1;
              for i=1:1:tmaxc
     tc2=i;    fc2=1;       tc1;
     tc3=0;tc4=0;tc5=0;tc6=0;tc7=0;tc8=0;tc11=0;tc12=0;tc13=0;tc14=0;tc15=0;
     fc7=0;fc3=0;fc4=0;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
     tred;    fentre;   fapre;  entre; disp('se termino el proceso');
     savegca;      clear red1 red parametrosred net e e1; close all
           end   
         end    
     case 3
        i=1;j=1;
        for j=1:1:tmaxc %15
          tc1=j;fc1=1;
            for i=1:1:tmaxc
               tc2=i; fc2=1;
               for k=1:1:tmaxc
         tc3=k;tc4=0;tc5=0;tc6=0;tc7=0;tc8=0;fc7=0;fc3=1;fc4=0;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
        tred;    fentre;   fapre;    entre;disp('se termino el proceso');
        savegca;clear red1 red parametrosred net e e1; close all
              end
           end
        end
     case 4
         i=1;j=1;
          for j=1:1:tmaxc %15
          tc1=j;fc1=1;
            for i=1:1:tmaxc
               tc2=i; fc2=1;
               for k=1:1:tmaxc
                  tc3=k;fc3=1;
                  for h=1:1:tmaxc
     tc4=h;tc5=0;tc6=0;tc7=0;tc8=0;fc7=0;fc4=1;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
     tred;    fentre;   fapre;     entre;disp('se termino el proceso');  savegca;
              clear red1 red parametrosred net e e1; close all
       end
       end
     end
     end
     
     case 5
         i=1;j=1;
          for j=1:1:tmaxc %15
          tc1=j;fc1=1;
            for i=1:1:tmaxc
               tc2=i; fc2=1;
               for k=1:1:tmaxc
                  tc3=k;fc3=1;
                  for h=1:1:tmaxc
                     tc4=h;fc4=1;
                     for l=1:1:tmaxc
                        tc5=l;
tc6=0;tc7=0;tc8=0;fc7=0;fc5=1;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
tred;    fentre;   fapre;entre;disp('se termino el proceso');savegca;
 clear red1 red parametrosred net e e1; close all
              end
           end
        end
     end
  end
      end  % fin del case
   end % fin de nc
      end % fin de fapre
   end % fin de fentre
end % fin de tred

%%%%%%%%%%%%%------------------------------------
%Todoslos modelos con tansig
disp('se inician las redes tansig');
for tred=3:1:3  %1-3
   for fentre=4:1:4 %1-4
      for fapre=2:1:2 %1-2
         nc=0;
         for nc=1:1:numc %1-10 manual en todos se tabajaran con cinco capas
   tc1=0;fc1=0;tc2=0;fc2=0;tc3=0;fc3=0;tc4=0;fc4=0;tc5=0;fc5=0;
   p=1;   disp('SE ACABA DE INICAR NUEVAMENTE EL PROCESO');
   close all
   switch nc
      case 1
        for i=1:1:tmaxc %15
      tc1=i;    fc1=2;j=0;
       tc2=0; tc3=0;tc4=0;tc5=0;
       fc2=0;fc3=0;fc4=0;fc5=0;fc6=0;fc7=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;fc11=0;fc12=0;
       fc13=0;fc14=0;fc15=0;     disp('se utiliza 1 capa');
       tred;    fentre;   fapre;entre;
       disp('se termino el proceso');       savegca;
       clear red1 red parametrosred net e e1; close all
                end
        case 2
          i=1;j=1;
           for j=1:1:tmaxc %15
              tc1=j;  fc1=2;
              for i=1:1:tmaxc
     tc2=i;    fc2=2;       tc1;
     tc3=0;tc4=0;tc5=0;tc6=0;tc7=0;tc8=0;tc11=0;tc12=0;tc13=0;tc14=0;tc15=0
     fc7=0;fc3=0;fc4=0;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
     tred;    fentre;   fapre;  entre; disp('se termino el proceso');
     savegca;      clear red1 red parametrosred net e e1; close all
           end   
         end    
     case 3
        i=1;j=1;
        for j=1:1:tmaxc %15
          tc1=j;fc1=2;
            for i=1:1:tmaxc
               tc2=i; fc2=2;
               for k=1:1:tmaxc
         tc3=k;tc4=0;tc5=0;tc6=0;tc7=0;tc8=0;fc7=0;fc3=2;fc4=0;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
        tred;    fentre;   fapre;    entre;disp('se termino el proceso');
        savegca;clear red1 red parametrosred net e e1; close all
              end
           end
        end
     case 4
         i=1;j=1;
          for j=1:1:tmaxc %15
          tc1=j;fc1=2;
            for i=1:1:tmaxc
               tc2=i; fc2=2;
               for k=1:1:tmaxc
                  tc3=k;fc3=2;
                  for h=1:1:tmaxc
     tc4=h;tc5=0;tc6=0;tc7=0;tc8=0;fc7=0;fc4=2;fc5=0;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
     tred;    fentre;   fapre;     entre;disp('se termino el proceso');  savegca;
              clear red1 red parametrosred net e e1; close all
       end
       end
     end
     end
     
     case 5
         i=1;j=1;
          for j=1:1:tmaxc %15
          tc1=j;fc1=2;
            for i=1:1:tmaxc
               tc2=i; fc2=2;
               for k=1:1:tmaxc
                  tc3=k;fc3=2;
                  for h=1:1:tmaxc
                     tc4=h;fc4=2;
                     for l=1:1:tmaxc
                        tc5=l;
  tc6=0;tc7=0;tc8=0;fc7=0;fc5=2;fc6=0;fc8=0;fc9=0;fc10=0;tc9=0;tc10=0;
 tred;    fentre;   fapre;entre;disp('se termino el proceso');savegca;
  clear red1 red parametrosred net e e1; close all
              end
           end
        end
     end
  end
 end  % fin del case
  end % fin de nc
      end % fin de fapre
   end % fin de fentre
end % fin de tred

%%%%%%%%%%%%%%%%%%%%5
% captura de los datos de excel

close all
dos u4;
[var1,var2,var3,var4,var5,var6,var7,var8,var9,var10,var11,var12,var13,var14,var15,var16,var17,var18,var19,var20,var21,var22,var23,var24,var25]=textread('red.txt','%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s');
tred=char(var8(1,:));
fentre=char(var9(1,:));
fapre=char(var10(1,:));
nc=str2num(char(var11(1,:)));
tc1=str2num(char(var12(1,:)));
tc2=str2num(char(var13(1,:)));
tc3=str2num(char(var14(1,:)));
tc4=str2num(char(var15(1,:)));
tc5=str2num(char(var16(1,:)));
fc1=(char(var17(1,:)));

 if fc1=='logsig';   fc1=1;
    elseif fc1=='tansig'; fc1=2;
  		   else fc1=3;			  
        end 																	 
fc2=fc1; fc3=fc1; fc4=fc1; fc5=fc1;
% preparación para realizar entrenamiento nuevamente
p=2;
switch tred
   case 'newelm'
   tred=str2num('1');
  case 'newff'
   tred=str2num('2');
case 'newcf' 
   tred=str2num('3');
end
switch fentre   
case 'traingd';fentre=str2num('1');
case 'trainlm';fentre=str2num('2');
case 'trainrp';fentre=str2num('3');
case 'traingdm';fentre=str2num('4');
end

switch fapre
  case 'learngd';fapre=str2num('1');
  case 'learngdm';fapre=str2num('2');
  end
entre;

% diseño de la captura de los parametros optimos en Delphi
