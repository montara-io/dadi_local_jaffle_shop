
# AUTO GENERATED BY MONTARA
#<ORIGINAL_CODE>
'''
List sources and models in the function definition as below
def test_pyt(sourceA, modelA)  
'''
def test_pyt(test2):
  return test2
#</ORIGINAL_CODE>
def model(dbt, session):
    test2 = dbt.ref('test2')
    result = test_pyt(test2)
    return result
