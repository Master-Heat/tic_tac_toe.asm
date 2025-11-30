TITLE Test1
 
    .model small
    .stack 64
    
    .data
    
     
    .code
        main proc
        
        ; set the video mode 320 * 200 pixl mode 13h
        mov ax,0013h      ; put function code for moving to video mode
        int 10h           ; int 10 convert to video mode
        
        ; draw the pixel 160 column and 100 row red
        mov ah, 0ch       ; function code for drawing pixels
        mov cx , 160      ; cx contain the X value in the screen
        mov dx , 100      ; dx contain the Y value in the screen
        mov al , 48       ; al contain the color in mode 13  'mode 13 colors : https://en.wikipedia.org/wiki/File:VGA_palette_with_black_borders.svg "
        int 10h           ; in 10 draw the pixel 
        
        
       
        ; stop screen until pressing any key     
        mov ah, 00h 
        int 16h
                    
        ; terminate the program 
        mov ah,4ch
        int 21h
        
           
            
            
            
           main endp 
    end main 