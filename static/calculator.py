


def operation_result():
    first_input=request.form["Input1"]
    second_input=request.form["Input2"]
    operation=request.form["operation"]

    try:
        input1=float(first_input)
        input2=float(second_input)

        if operation=="+":
            result=input1+input2
        elif operation=="-":
            result=input1-input2
        elif operation=="*":
            result=input1*input2
        elif operation=="/":
            result=input1/input2
        else: 
           operation=="%"
           result=input1%input2

        return render_template("cal.html",input1=input1,input2=input2,operation=operation,result=result,calculation_success=True)

    except ZeroDivisionError:
        return render_template("cal.html",input1=input1,input2=input2,operation=operation,result="Bad Input",calculation_success=False,error="Cannot be divided by zero")

    except ValueError:
        return render_template("cal.html",input1=first_input,input2=second_input,operation=operation,result="Bad Input",calculation_success=False,error="Cannot perform numeric operation with provided input")