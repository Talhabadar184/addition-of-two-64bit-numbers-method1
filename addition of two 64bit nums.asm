.model small
.stack 200h
.data

arr1 db 8 dup(?)
arr2 db 8 dup(?)  
arr3 db 8 dup(?)
n1 db 0x54
n2 db 0xCD
n3 db 0x45
n4 db 0xEF
n5 db 0x67
n6 db 0xAB
n7 db 0x00
n8 db 0x77 

n9  db 0x23
n10 db 0xFF
n11 db 0x45
n12 db 0x6B
n13 db 0xB9
n14 db 0x87
n15 db 0xEF
n16 db 0x45


.code
     
     mov ax, @data
     mov ds,ax
     mov ax,0h
    mov al,n1
    mov arr1[0],al
    mov ah,n2
    mov arr1[1],ah
    mov bl,n3
    mov arr1[2],bl
    mov bh,n4
    mov arr1[3],bh
    mov cl,n5
    mov arr1[4],cl
    mov ch,n6
    mov arr1[5],ch
    mov dl,n7
    mov arr1[6],dl
    mov dh,n8
    mov arr1[7],dh 
    
    mov ax,0x0
     mov bx,0x0
      mov cx,0x0
       mov dx,0x0
    
      mov al,n9
    mov arr2[0],al
    mov ah,n10
    mov arr2[1],ah
    mov bl,n11
    mov arr2[2],bl
    mov bh,n12
    mov arr2[3],bh
    mov cl,n13
    mov arr2[4],cl
    mov ch,n14
    mov arr2[5],ch
    mov dl,n15
    mov arr2[6],dl
    mov dh,n16
    mov arr2[7],dh 
    
        
    mov ax,0x0
     mov bx,0x0
      mov cx,0x0
       mov dx,0x0  
       ;mov ax,offset arr1
       ;mov bx,offset arr2 
      
       
       mov cx,8
       add cx,0x0 
       mov si,8

l1:       
       mov al,[arr1+si]
       adc al,[arr2+si]  
        
       mov [arr3+si],al
       dec si
       
                   
                   
loop l1                  
                   
    .exit