switch recuperacion   
  case 'Si' % grafica de los datos orig,serie compuesta y superposición
  figure 
  set(gcf,'name','Recuperación de la serie');
  set(gcf,'menubar','none');
  set(gcf,'color',[1 1 1]);
  set(gcf,'position',[0 35 650 420])
  recuperacio=pr2.*ct;
  subplot(3,1,1);
  larg=size(recuperacio);
  ls=minmax((recuperacio));           li=minmax((recuperacio));  
  ls=max(ls);							     li=min(li);
  ls=max(ls); %limites nax 
  li=min(li); % limites min de la irreg
  plot(recuperacio,'r');axis([0 larg(2) li ls]);ylabel('MW');
  title('serie obtenida de la recomposicion')
  subplot(3,1,2)
  ls=minmax((seriecompleta));        li=minmax((seriecompleta));  
  ls=max(ls);							    li=min(li);
  ls=max(ls); %limites nax 
  li=min(li);
  plot(seriecompleta);axis([0 larg(2) li ls]);ylabel('MW');
  title('serie original');             subplot(3,1,3)
  plot(recuperacio,'r');              hold
  plot(seriecompleta);axis([0 larg(2) li ls]);ylabel('MW');
  title('superposición')
end
xlabel('Horas');
