	figure
	set(gcf,'name','tendencia extraida de los datos de entrenamiento');
   set(gcf,'menubar','none');
   set(gcf,'color',[1 1 1]);
   set(gcf,'position',[85 80.75 650 420])
   larg=size(tendencia);
ls=minmax((tendencia));   li=minmax((tendencia));
ls=max(ls);							     li=min(li);
plot(tendencia);		
axis([0 larg(2) li ls]);
   title('Tendencia');grid;
    switch tipotend
   case 'Lineal'

      xlabel('Horas')
    case 'Cuadratica'
       xlabel('Horas')
    case 'Logaritmica'
      xlabel('Horas')
     end
