% Graficas de los datos por semanas y su perfil medio
	figure;   							     subplot(2,1,1);
   tam=size(transpose(serie1));       larg=tam(1);
   plot(transpose(serie1));           axis([0 larg li ls]);
   ylabel(ulabel);                      xlabel('Hora de la semana');
   title('datos de entrenamiento');   grid;
	subplot(2,1,2); 					     
   tam=size((media));					  largo=tam(2);
   ls=minmax(media);						  li=minmax(media);
   ls=max(ls);								  li=min(li);
   plot(media);							  axis([0 larg li ls]);
   ylabel(ulabel);                      xlabel('Hora de la semana');
	title('ciclo');      grid;
	set(gcf,'name','datos de entrenamiento');
   set(gcf,'menubar','none');         set(gcf,'color',[1 1 1]);
   set(gcf,'position',[85 80.75 650 420]);    
   % colocación de las etiquetas de días
   text(14.5,li+10,vect(1,:)); text(34.5,li+10,vect(2,:)); 
   text(64.5,li+10,vect(3,:)); text(84.5,li+10,vect(4,:)); 
   text(104.5,li+10,vect(5,:));text(130.5,li+10,vect(6,:));
   text(154.5,li+10,vect(7,:));