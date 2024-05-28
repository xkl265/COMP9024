# **************************** Auto-Generated by scc  *******************************#
#                                                                                    #
# 1. For better understanding of C, recursion, call stack, tree and linked list.     #
#                                                                                    #
# 2. No code optimization.                                                           #
#                                                                                    #
# 3. Three columns in the assembly file: assembly code, IR, and comments             #
#                                                                                    #
#                                                           COMP9024 24T2            #
# ***********************************************************************************#



                                                                        # Data Section
.data
        .input_fmtstr: .string "%ld"
        .output_fmtstr: .string "%ld\012"
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Global Var
                                                                        # ----------------------------
                                                                        #       result        result
                                                                        # ----------------------------
                                                                        

        .comm	result, 8
                                                                        




# *****************************  f(n)  *****************************
                                                                        # Code Section
.text
.globl f
f:
                                                                        # Function Prologue
        pushq %rbp
        movq %rsp, %rbp
                                                                        # Frame size = 80
                                                                        # Number of Parameters/Locals/Temps = 1(6 registers), 0, 4
                                                                        # Frame size = (6 + 0 + 4) * 8 = 80
                                                                        # 16-byte-aligned frame size = 80
        subq $80, %rsp
                                                                        

                                                                        

                                                                        # Table of Function Parameters
                                                                        # ----------------------------
                                                                        #   AccessName        Name
                                                                        # ----------------------------
                                                                        #     -8(%rbp)        n
                                                                        # ----------------------------
                                                                        

                                                                        # Table of Local Variables
                                                                        # ----------------------------
                                                                        #   AccessName        Name
                                                                        # ----------------------------
                                                                        #
                                                                        # ----------------------------
                                                                        

                                                                        # Simple policy for saving arguments passed in registers
        movq %rdi, -8(%rbp)
                                                                        

                                                                        # Pass an argument: n
        movq -8(%rbp), %rdi
                                                                        # Pass an argument: 1
        movq $1, %rsi
                                                                        # No floating-point numbers when calling a variadic function
        movq $0, %rax
                                        # t0 = SccLessEqual(n,1)
        call SccLessEqual
                                                                        # Copy the return value from SccLessEqual() to a temporary variable t0
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Temp Var
                                                                        # ----------------------------
                                                                        #    -56(%rbp)        t0
                                                                        # ----------------------------
                                                                        

        movq %rax, -56(%rbp)
                                                                        

                                        # start of if(t0) {} else {}
                                        # if(!t0) goto Label_0
        cmpq $0, -56(%rbp)
        je Label_0
                                        # return 1;
                                                                        # Save current function's return value 1 in register rax
        movq $1, %rax
                                        # goto Label_1
        jmp Label_1
                                                                        

                                        # else
Label_0:
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Temp Var
                                                                        # ----------------------------
                                                                        #    -64(%rbp)        t1
                                                                        # ----------------------------
                                                                        

                                        # t1 = n - 1
        movq -8(%rbp), %rax
        subq $1, %rax
        movq %rax, -64(%rbp)
                                                                        # Pass an argument: t1
        movq -64(%rbp), %rdi
                                                                        # No floating-point numbers when calling a variadic function
        movq $0, %rax
                                        # t2 = f(t1)
        call f
                                                                        # Copy the return value from f() to a temporary variable t2
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Temp Var
                                                                        # ----------------------------
                                                                        #    -72(%rbp)        t2
                                                                        # ----------------------------
                                                                        

        movq %rax, -72(%rbp)
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Temp Var
                                                                        # ----------------------------
                                                                        #    -80(%rbp)        t3
                                                                        # ----------------------------
                                                                        

                                        # t3 = t2 * n
        movq -72(%rbp), %rax
        imulq -8(%rbp), %rax
        movq %rax, -80(%rbp)
                                        # return t3;
                                                                        # Save current function's return value t3 in register rax
        movq -80(%rbp), %rax
                                        # end of if(t0) {} else {}
Label_1:
                                                                        # Function Epilogue
        movq %rbp, %rsp
        popq %rbp
        ret
                                                                        

                                                                        




# *****************************  main(argc,argv,env)  *****************************
                                                                        # Code Section
.text
.globl main
main:
                                                                        # Function Prologue
        pushq %rbp
        movq %rsp, %rbp
                                                                        # Frame size = 64
                                                                        # Number of Parameters/Locals/Temps = 3(6 registers), 1, 1
                                                                        # Frame size = (6 + 1 + 1) * 8 = 64
                                                                        # 16-byte-aligned frame size = 64
        subq $64, %rsp
                                                                        

                                                                        

                                                                        # Table of Function Parameters
                                                                        # ----------------------------
                                                                        #   AccessName        Name
                                                                        # ----------------------------
                                                                        #     -8(%rbp)        argc
                                                                        #    -16(%rbp)        argv
                                                                        #    -24(%rbp)        env
                                                                        # ----------------------------
                                                                        

                                                                        # Table of Local Variables
                                                                        # ----------------------------
                                                                        #   AccessName        Name
                                                                        # ----------------------------
                                                                        #
                                                                        #    -56(%rbp)        i
                                                                        # ----------------------------
                                                                        

                                                                        # Simple policy for saving arguments passed in registers
        movq %rdi, -8(%rbp)
        movq %rsi, -16(%rbp)
        movq %rdx, -24(%rbp)
                                                                        

                                        # i = 4;
        movq $4, %rax
        movq %rax, -56(%rbp)
                                                                        # Pass an argument: i
        movq -56(%rbp), %rdi
                                                                        # No floating-point numbers when calling a variadic function
        movq $0, %rax
                                        # t0 = f(i)
        call f
                                                                        # Copy the return value from f() to a temporary variable t0
                                                                        

                                                                        # ----------------------------
                                                                        #   AccessName        Temp Var
                                                                        # ----------------------------
                                                                        #    -64(%rbp)        t0
                                                                        # ----------------------------
                                                                        

        movq %rax, -64(%rbp)
                                        # result = t0;
        movq -64(%rbp), %rax
        movq %rax, result
                                        # output(result);
        leaq .output_fmtstr, %rdi
        movq result, %rsi
        movq $0, %rax
        call printf
                                        # return 0;
                                                                        # Save current function's return value 0 in register rax
        movq $0, %rax
                                                                        # Function Epilogue
        movq %rbp, %rsp
        popq %rbp
        ret
                                                                        

        

   .section .note.GNU-stack,"",@progbits
