function SavePretty(h,filename_base)
    saveas(h,filename_base,'fig');
    export_fig( filename_base,  '-png' , '-nocrop' , '-a1' , '-transparent' , '-q101' , '-p20',h)
return
end