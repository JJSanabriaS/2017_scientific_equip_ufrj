% Grafica de la componente de irregularidad
tamano=size(irregularidad);
larg=tamano(2);
figure
	set(gcf,'name','irregularidad de los datos');
   set(gcf,'menubar','none');
   set(gcf,'color',[1 1 1]);
   set(gcf,'position',[85 80.75 650 420])
   subplot(2,1,1);
   ls=minmax((irregularidad));        li=minmax((irregularidad));  
   ls=max(ls);							     li=min(li);
   ls=max(ls); %limites nax 
   li=min(li); % limites min de la irreg
   plot((irregularidad));       axis([0 larg li ls]);
   xlabel('Horas');
   title('irregularidad');grid;
     
   switch Botonexp
   case 'Si'
   
   %etiquetas con los días correspondientes
   subplot(2,1,2);
   ls=minmax((pr2));     li=minmax((pr2));  
   ls=max(ls);			    li=min(li);
   ls=max(ls); %limites nax 
   li=min(li); % limites min de la irreg
   plot((pr2));      axis([0 larg li(1) ls(1)]);
   xlabel('Horas');title('irregularidad suavizada exponencialmente');grid;
   
	case 'No'  
   title('irregularidad ');grid;
   %etiquetas con los días correspondientes
 end
