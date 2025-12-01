TITLE Test1
 
    .model small
    .stack 64
    
    .data
    ;these three variable for drawing values of the squares
    
    x_start dw ?
    x_end dw ?

    y_start dw ?
    y_end dw ?
    


     
    .code
        main proc
        mov ax,@data
        mov ds,ax
    
    ; draw a  pixel tutorial 
    ;;    
    ;;    ; set the video mode 320 * 200 pixl mode 13h
    ;;    mov ax,0013h      ; put function code for moving to video mode
    ;;    int 10h           ; int 10 convert to video mode
    ;;    
    ;;    ; draw the pixel 160 column and 100 row red
    ;;    mov ah, 0ch       ; function code for drawing pixels
    ;;    mov cx , 160      ; cx contain the X value in the screen
    ;;    mov dx , 100      ; dx contain the Y value in the screen
    ;;    mov al , 48       ; al contain the color in mode 13  'mode 13 colors : https://en.wikipedia.org/wiki/File:VGA_palette_with_black_borders.svg "
    ;;    int 10h           ; in 10 draw the pixel 
    ;;    
        

    ; set video mode 
    mov ax,0013h
    int 10h
    

    ; draw the grid 
    mov ah , 0ch
    mov al , 26
    ; draw the first column
    mov cx ,101
    mov dx,0    

    draw_pixel_in_frist_column:
    int 10h
    inc dx
    cmp dx,200
    jl draw_pixel_in_frist_column
    inc cx
    mov dx,0
    cmp cx , 105
    jl draw_pixel_in_frist_column

    ;draw second column 
    
  
    mov cx ,211
    mov dx,0    

    draw_pixel_in_second_column:

    
    int 10h
    inc dx
    cmp dx,200
    jl draw_pixel_in_second_column
    inc cx
    mov dx,0
    cmp cx , 215
    jl draw_pixel_in_second_column

; draw first raw 
 
    mov cx ,0
    mov dx,63   

    draw_pixel_in_frist_raw:
    int 10h
    inc cx
    cmp cx,320

    jl draw_pixel_in_frist_raw
    inc dx
    mov cx,0
    cmp dx , 68
    jl draw_pixel_in_frist_raw
    
    ; draw second raw 
 
    mov cx ,0
    mov dx,131   

    draw_pixel_in_second_raw:

    
    int 10h
    inc cx
    cmp cx,320
    jl draw_pixel_in_second_raw
    inc dx
    mov cx,0
    cmp dx , 135

    jl draw_pixel_in_second_raw
    
    
    
    ;draw an O
    
    mov al , 10
    
    mov x_start , 23
    mov y_start , 2
    
    add x_start , 24
    
    mov bx,x_start
    mov x_end,bx
    add x_end , 12
    
      mov bx,y_start
      mov y_end,bx
      add y_end , 20
      
      mov cx,x_start
      mov dx,y_start 
      
  draw_o_line1:
        int 10h
        
        inc cx
        
        mov bx, x_end
        cmp cx,bx
        jl draw_o_line1
        
        dec x_start
        mov cx,x_start
        dec x_end
        inc dx
        
        mov bx,y_end
        cmp dx,bx
        jl draw_o_line1
        
        
        
        mov cx,x_start
        mov x_end,cx
        add x_end , 6
        add y_end,18
        
        
        
        dec dx
        inc cx
    draw_o_line2:
        int 10h
        inc cx
        
        
        mov x_end,bx
        cmp cx,bx
        jl draw_o_line2
        mov cx,x_start
        inc dx
        
        mov bx,y_end
        cmp dx,bx
        jl draw_o_line2
        
        
        
        mov cx , x_start
        
        mov x_end,cx
        add x_end ,13
        
        mov dx ,y_end
        add y_end,20
        
        
        
        draw_o_line3:
        int 10h
        inc cx
        
        mov bx,x_end
        
        cmp cx,bx
        
        jl draw_o_line3
        inc dx
        inc x_start
        inc x_end
        
        mov cx,x_start
        
        mov bx,y_end
        cmp dx,bx
        jl draw_o_line3
        
        
        
    
        add x_start ,10  
        add x_end ,10
        
        sub y_end ,20
        
        mov cx ,x_start
        
        
        dec dx
        
    draw_o_line4:
       int 10h
       inc cx
       mov bx,x_end
       cmp cx,bx
       jl draw_o_line4
       
       inc x_start 
       inc x_end
       dec dx
       
       mov cx,x_start
       
       mov bx,y_end
       cmp dx,bx
       
       ja draw_o_line4
    

       
       sub y_end ,18
       mov cx,x_start
       
   draw_o_line5:
       int 10h
       inc cx
       
       mov bx,x_end
       cmp cx,bx
       jl draw_o_line5
       
       dec dx
       mov cx,x_start
       mov bx ,y_end
       cmp dx,bx
       ja draw_o_line5
       
       
       
       sub y_end ,21
       mov cx,x_start
       
   draw_o_line6:
       int 10h 
       inc cx
       
       mov bx,x_end 
       cmp cx,bx
       jl draw_o_line6
       
       dec x_start
       dec x_end
       dec dx
       mov cx,x_start
       
       mov bx,y_end
       cmp dx,bx
       ja draw_o_line6
       
       
       
       
       sub x_start,7
       add dx, 3
       add y_end ,12
       mov cx,x_start
       
       
      
   draw_o_line7:
       int 10h 
       inc cx
       
       mov bx,x_end
       cmp cx,bx
       jl draw_o_line7
       
       inc dx

       mov cx,x_start
       
       mov bx,y_end 
       cmp dx,bx
       jl draw_o_line7
       
       add  y_end , 45
       add dx,37
       mov cx ,x_start
       
   draw_o_line8:
       int 10h
       inc cx
       
       mov bx,x_end
       cmp cx,bx
       jl draw_o_line8
       inc dx
       mov cx,x_start
       
       
       mov bx,y_end
       cmp dx,bx
       jl draw_o_line8
       
       
   
    

    
    
    
    
    ;;;end of the program
       
        ; stop screen until pressing any key     
        mov ah, 00h 
        int 16h
                    
        ; terminate the program 
        mov ah,4ch
        int 21h
        
           
            
            
            
           main endp 
    end main 