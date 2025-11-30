TITLE Test1
 
    .model small
    .stack 64
    
    .data
    ;these three variable for drawing values of the squares
    x_index db ?
    x_start db ?
    x_end db ?

    y_index db ?
    y_start db ?
    y_end db ?
    


     
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
    mov al , 25
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


    
    
    ;;;end of the program
       
        ; stop screen until pressing any key     
        mov ah, 00h 
        int 16h
                    
        ; terminate the program 
        mov ah,4ch
        int 21h
        
           
            
            
            
           main endp 
    end main 