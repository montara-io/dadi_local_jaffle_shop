
# AUTO GENERATED BY MONTARA
#<ORIGINAL_CODE>
'''
List sources and models in the function definition as below
def test_py(sourceA, modelA)  
'''
def test_py(stg_orders):
  return stg_orders
#</ORIGINAL_CODE>
def model(dbt, session):
    stg_orders = dbt.ref('stg_orders')
    result = test_py(stg_orders)
    
    return result
