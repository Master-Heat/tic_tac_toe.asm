TITLE Test1
 
    .model small 
    
    .stack 64
    
    .data   
    
    
    ;; welcom message
        mwelcom db "Welcome to Tic Tac Toe!",0ah,0dh
            db 0ah,0dh,"You will play against me (the computer).",0ah,0dh,0ah,0dh,"$"
            
        game_mechanics db 0ah,0dh,"To make a move, select a number from 1 to 9 indicating the position as follows:",0ah,0dh
                       db 0ah,0dh,"   1 - Top left corner",0ah,0dh
                       db "   2 - Top middle",0ah,0dh
                       db "   3 - Top right corner",0ah,0dh
                       db 0ah,0dh,"   4 - Middle left",0ah,0dh
                       db "   5 - Center",0ah,0dh
                       db "   6 - Middle right",0ah,0dh
                       db 0ah,0dh,"   7 - Bottom left",0ah,0dh
                       db "   8 - Bottom middle",0ah,0dh
                       db "   9 - Bottom right",0ah,0dh, "$"
                       
                       
        tell_the_player_to_play db 0ah,0dh,"Enter your move: $"
     ;;error message for not valid input ( not between 1 to 9)                  
        eminvalid_input db 0ah,0dh,"you should enter a number between 1 and 9 do you want to see how to play again do you me to tell you how to play again Y/n $"
        
         mplayer_already_here db 0ah,0dh,"You already played in this place, so you can't play here ",0ah,0dh,"$"   
        mcomputer_already_here db 0ah,0dh,"I already played in this place, so you can't play here ",0ah,0dh,"$"  
        
        mplayagain db 0ah,0dh," Do you want to play again Y/n $"  
        
      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; winning and losing messages ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----------------------------
; Winning messages for player
; ----------------------------

; First row
mpwinrow1 db 0ah,0dh,"  Congratulations! You collected the first row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Second row
mpwinrow2 db 0ah,0dh,"  Congratulations! You collected the second row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Third row
mpwinrow3 db 0ah,0dh,"  Congratulations! You collected the third row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

; First column
mpwincol1 db 0ah,0dh,"  Congratulations! You collected the first column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Second column
mpwincol2 db 0ah,0dh,"  Congratulations! You collected the second column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Third column
mpwincol3 db 0ah,0dh,"  Congratulations! You collected the third column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

; Diagonal top-left to bottom-right
mpwindia1 db 0ah,0dh,"  Congratulations! You collected the diagonal top-left to bottom-right  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Diagonal top-right to bottom-left
mpwindia2 db 0ah,0dh,"  Congratulations! You collected the diagonal top-right to bottom-left  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                          YOU WIN!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

; ----------------------------
; Losing messages for computer
; ----------------------------

; First row
mcwinrow1 db 0ah,0dh,"  Hard luck! I collected the first row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Second row
mcwinrow2 db 0ah,0dh,"  Hard luck! I collected the second row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Third row
mcwinrow3 db 0ah,0dh,"  Hard luck! I collected the third row  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

; First column
mcwincol1 db 0ah,0dh,"  Hard luck! I collected the first column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Second column
mcwincol2 db 0ah,0dh,"  Hard luck! I collected the second column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Third column
mcwincol3 db 0ah,0dh,"  Hard luck! I collected the third column  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

; Diagonal top-left to bottom-right
mcwindia1 db 0ah,0dh,"  Hard luck! I collected the diagonal top-left to bottom-right  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"
; Diagonal top-right to bottom-left
mcwindia2 db 0ah,0dh,"  Hard luck! I collected the diagonal top-right to bottom-left  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                YOU LOSE!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"

mdraw db   0ah,0dh,"  No places left to play in  ",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"                                DRAW!",0ah,0dh,0ah,0dh,0ah,0dh,0ah,0dh,"$"





                    
                    
       ;;;;;;;;;;; the board ;;;;;;;;;;;;;;;;;;                 ;;;;;;;;;;;;;;;;;;               ;;;;;;;;;;;;;;;;;            ;;;;;;;;             
                    
    ;;; the board in array 
    
    board db 9 dup(5fh)
   

                
            
            
             
        
        
        current_play db ?
        
        turn db 0    ; 0 = player's turn, 1 = computer's turn 
        
        seed dw 0
                                                     
        board_se_print db 0ah,0dh,0ah,0dh, "                             $"
        spaces db "                             $"   
        two_spaces db "  $"
        two_lines db 0ah,0dh,0ah,0dh,"$"
                   
  .code
        main proc far
            ;; prepare the data segment 
            
            mov ax, @data
            mov ds , ax       
            
            ;; write welcome message
            lea dx , mwelcom
            mov ah , 09h
            int 21h 
            
                ;;write how to play
            
            
            ; empty the board array to start the game           
            start_game:
                
            
            
                mov bx, offset board 
                mov cx,0h        
                
                empty_square:
                mov byte ptr [bx],5fh
                inc cx
                inc bx
                cmp cx,9h
                jb empty_square
                                
            
                show_game_mechanics:
                    lea dx , game_mechanics
                    mov ah,09h
                    int 21h
                
            player_turn: ;; label for the gather input and check it 
            ;;putting in the player turn the player symbo X (it will used later to determine if he wins)
            mov turn ,58h
                ;;read value from the user 
            ;;tell the player to play
                lea dx,tell_the_player_to_play
                mov ah , 09h
                int 21h
                

                
                jmp next_instructin
            not_valid_input1:
                jmp not_valid_input 
                
            next_instructin:
                
                
                ;take the input from the player
                mov ah, 00h 
                int 16h
            
                ;; check valid input (compare to the valid range)
             
                cmp al ,31h
                jb not_valid_input1 
                cmp al ,39h
                ja not_valid_input1
                
                ;; save the value that played in current_play variable  
                mov current_play , al                                 
                ;; maket represent that index of the actual play in board array 
                sub current_play , 31h 
                
                ;make sure putting curren play in the right empty place
                ;make bx point to first index of the board array
                mov bx , offset board 
                ;now bx has the index of the current play                          
                add bl , current_play
                ;now dh has the value of the current play in the board before playing it 
                mov dh , byte ptr [bx]
                ; check if its already played here before saving the play in this position
                
                jmp next_instruction2
            alread_played_here1:
                jmp alread_played_here
                
            next_instruction2:
                
                check_if_played_here:
                cmp dh , 5Fh
                jne alread_played_here1
                
                ; put the curren play in the right plce
                mov bx , offset board
                add bl , current_play
                mov byte ptr [bx],58h
                
                ;move to checking winner phase
                jmp print_the_board
                            
            ;;;;;;;;;;;;computer turn 
            computer_turn:
                mov turn , 4fh ; make the turn into the symbol of computer   
                
                ;check for draw 
                mov bx, offset board
                mov cx,0 
                
                check_draw:
                cmp cx,9h
                ja draw
                
                ; check if there any empty place
                mov dl, [bx]
                inc bx
                inc cx 
                cmp dl,5fh
                jne check_draw
                
                              
                
                ; get a random number form 0 to 9
                mov ax, 0h
                int 1ah
                mov [seed], dx
                
                mov ax, 25173
                mul word ptr [seed]
                add ax, 13849
                mov [seed], ax   
                
                
                xor dx, dx
                mov cx, 10
                div cx
                
             
                ;;;extra saftry to try again if the number not in the range between 0 : 8   
                cmp dl ,0h
                jb computer_turn
                cmp dl , 8h
                ja computer_turn 
                
                mov current_play , dl
                
                ;make bx point to first index of the board array
                mov bx , offset board 
                ;now bx has the index of the current play                          
                add bl , current_play
                ;now dh has the value of the current play in the board before playing it 
                mov dh , byte ptr [bx] 
                
   
                
                ; check if its already played here before saving the play in this position
                cmp dh , 5Fh  
                jne computer_turn
                
                ; put the curren play in the right place
                mov bx , offset board
                add bl , current_play
                mov byte ptr [bx],4fh
                
                jmp print_the_board                     
                
           
              
                
              draw:    
              lea dx,mdraw
              mov ah,09h 
              int 21h
              
                
                  
                
                
                
                 
                    
                
                                                       
                                                       
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;  end of the game loop ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
            end_game_loop: 
            play_again:
                lea dx , mplayagain
                mov ah , 09h
                int 21h
                
                ; get input from the user
                mov ah, 00h 
                int 16h
                
                jmp next_instrucion3
                
            start_game1:
                jmp start_game
                
            next_instrucion3:
                
                
                ;check if the player want to see game mechanics again
                
                cmp al ,59h ;compare with Y  , 79h, 0dh
                je start_game1
                
                cmp al, 79h ; complare with y
                je start_game1
                
                cmp al, 0Dh ; compare with enter key
                je start_game1 
            
            ;;:: end the program
            mov ah , 4cH
            int 21h    
            
            
            ;;;;;;;;;;;;;;;;;;;finish the main function for me :;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
            ;;print message for player to correct the input and suggest to show the game mechanics
            not_valid_input:
                lea dx , eminvalid_input
                mov ah , 09h
                int 21h
                
                ; get input from the user
                mov ah, 00h 
                
                int 16h
                
                jmp next_instruction4
                
            show_game_mechanics1:
                jmp show_game_mechanics
                
            player_turn1:
                jmp player_turn
                
            computer_already_here1:
                jmp computer_already_here
                
            next_instruction4:
                
                ;check if the player want to see game mechanics again
                
                cmp al ,59h ;compare with Y  , 79h, 0dh
                je show_game_mechanics1
                
                cmp al, 79h ; complare with y
                je show_game_mechanics1
                
                cmp al, 0Dh ; compare with enter key
                je show_game_mechanics1 
                ; else state to just start without showing game mechnics
                jne player_turn1
                
                                                
             
            ; makeing the use try again after trying reserved place
             alread_played_here:
             ;check if the player who the one already played in this place
             cmp dh ,58h
             ; if it not the last option is the computer played in this place
             jne computer_already_here1
             
             ;printing the right message and make the player play again 
             lea dx ,mplayer_already_here 
             mov ah , 09h
             int 21h
             jmp player_turn
             
             ;printing the right message and make the player play again
             computer_already_here:
             lea dx,mcomputer_already_here
             mov ah , 09h
             int 21h
             jmp player_turn
                                       
                                       
                                       
             
;;; check if someone won after a game ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print_the_board:
;;; this part feel confusing because last version it was checking if there is a winner before it print the board we fixied this now 

                 
                 
;print the board
     mov bx , offset board
    ;ckeck if we reached row 
    mov cx ,0
    
    
    lea dx , board_se_print
    mov ah , 09h
    int 21h       
    
    ; print character in the board 
    new_line:             
    
    lea dx , two_lines
    mov ah,09h
    int 21h
    
    cmp cl,08h
    ja  check_if_there_winner_now
    
    ;; write spaces before starting new line          
    lea dx , spaces
    mov ah , 09h
    int 21h       
               

    
     
    print_character_form_board:
    
    mov dl , byte ptr [bx]
    mov ah ,02h
    int 21h  
    
    ; print space 
    lea dx, two_spaces
    mov ah , 09 
    int 21h
    
    inc bx 
    inc ch
    inc cl   
    
    ;check if needed to print new line

    mov ax ,0
    mov al,ch
    mov dl,3h
    div dl   
    
    
    cmp ah,0
    je new_line
    
    cmp cl , 09h
    jb print_character_form_board
                                    
    
    check_if_there_winner_now:

    mov bx, offset board   ; start of board array
    mov al, turn           ; whose turn we are checking (player/computer)

; ----------------------------
; Check first row (tl, tm, tr)
; ----------------------------
check_first_row:
    mov dl, [bx]           ; TL
    cmp dl, al
    jne check_second_row
    mov dl, [bx+1]         ; TM
    cmp dl, al
    jne check_second_row
    mov dl, [bx+2]         ; TR
    cmp dl, al
    jne check_second_row
    jmp winner_first_row

; ----------------------------
; Check second row (ml, mm, mr)
; ----------------------------
check_second_row:
    mov bx, offset board + 3
    mov dl, [bx]           ; ML
    cmp dl, al
    jne check_third_row
    mov dl, [bx+1]         ; MM
    cmp dl, al
    jne check_third_row
    mov dl, [bx+2]         ; MR
    cmp dl, al
    jne check_third_row
    jmp winner_second_row

; ----------------------------
; Check third row (bl, bm, br)
; ----------------------------
check_third_row:
    mov bx, offset board + 6
    mov dl, [bx]           ; BL
    cmp dl, al
    jne check_first_col
    mov dl, [bx+1]         ; BM
    cmp dl, al
    jne check_first_col
    mov dl, [bx+2]         ; BR
    cmp dl, al
    jne check_first_col
    jmp winner_third_row

; ----------------------------
; Check columns
; ----------------------------

; First column (tl, ml, bl)
check_first_col:
    mov bx, offset board
    mov dl, [bx]           ; TL
    cmp dl, al
    jne check_second_col
    mov dl, [bx+3]         ; ML
    cmp dl, al
    jne check_second_col
    mov dl, [bx+6]         ; BL
    cmp dl, al
    jne check_second_col
    jmp winner_first_col

; Second column (tm, mm, bm)
check_second_col:
    mov bx, offset board + 1
    mov dl, [bx]           ; TM
    cmp dl, al
    jne check_third_col
    mov dl, [bx+3]         ; MM
    cmp dl, al
    jne check_third_col
    mov dl, [bx+6]         ; BM
    cmp dl, al
    jne check_third_col
    jmp winner_second_col

; Third column (tr, mr, br)
check_third_col:
    mov bx, offset board + 2
    mov dl, [bx]           ; TR
    cmp dl, al
    jne check_diagonal1
    mov dl, [bx+3]         ; MR
    cmp dl, al
    jne check_diagonal1
    mov dl, [bx+6]         ; BR
    cmp dl, al
    jne check_diagonal1
    jmp winner_third_col

; ----------------------------
; Check diagonals
; ----------------------------

; Diagonal TL->BR
check_diagonal1:
    mov bx, offset board
    mov dl, [bx]           ; TL
    cmp dl, al
    jne check_diagonal2
    mov dl, [bx+4]         ; MM
    cmp dl, al
    jne check_diagonal2
    mov dl, [bx+8]         ; BR
    cmp dl, al
    jne check_diagonal2
    jmp winner_diagonal1

; Diagonal TR->BL
check_diagonal2:
    mov bx, offset board + 2
    mov dl, [bx]           ; TR
    cmp dl, al
    jne no_winner
    mov dl, [bx+2]         ; MM
    cmp dl, al
    jne no_winner
    mov dl, [bx+4]         ; BL (wait, careful index)
    cmp dl, al
    jne no_winner
    jmp winner_diagonal2

; ----------------------------
; No winner found
; ----------------------------  

no_winner:  

      jmp next_instruction9

        computer_turn2:
            jmp computer_turn
            
        player_turn2:
            jmp player_turn

    next_instruction9:
          
    
    
    ; if no winner in the player turn now it's the computer turn and the opposite
    next_game:
    cmp turn , 58h
    je computer_turn2 
    jne player_turn2
    
    

; ----------------------------
; Winner messages blocks
; ----------------------------

winner_first_row:
    cmp al, 58h          ; check if turn is player (58h)
    je print_player_win_row1
    jmp print_computer_win_row1

print_player_win_row1:
    lea dx, mpwinrow1
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_row1:
    lea dx, mcwinrow1
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_second_row:
    cmp al, 58h
    je print_player_win_row2
    jmp print_computer_win_row2

print_player_win_row2:
    lea dx, mpwinrow2
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_row2:
    lea dx, mcwinrow2
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_third_row:
    cmp al, 58h
    je print_player_win_row3
    jmp print_computer_win_row3

print_player_win_row3:
    lea dx, mpwinrow3
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_row3:
    lea dx, mcwinrow3
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_first_col:
    cmp al, 58h
    je print_player_win_col1
    jmp print_computer_win_col1

print_player_win_col1:
    lea dx, mpwincol1
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_col1:
    lea dx, mcwincol1
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_second_col:
    cmp al, 58h
    je print_player_win_col2
    jmp print_computer_win_col2

print_player_win_col2:
    lea dx, mpwincol2
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_col2:
    lea dx, mcwincol2
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_third_col:
    cmp al, 58h
    je print_player_win_col3
    jmp print_computer_win_col3

print_player_win_col3:
    lea dx, mpwincol3
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_col3:
    lea dx, mcwincol3
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_diagonal1:
    cmp al, 58h
    je print_player_win_dia1
    jmp print_computer_win_dia1

print_player_win_dia1:
    lea dx, mpwindia1
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_dia1:
    lea dx, mcwindia1
    mov ah, 09h
    int 21h
    jmp end_game_loop

; ----------------------------
winner_diagonal2:
    cmp al, 58h
    je print_player_win_dia2
    jmp print_computer_win_dia2

print_player_win_dia2:
    lea dx, mpwindia2
    mov ah, 09h
    int 21h
    jmp end_game_loop

print_computer_win_dia2:
    lea dx, mcwindia2
    mov ah, 09h
    int 21h
    jmp end_game_loop
          
            
        main endp 
    end main                        
    