javascript_fix = Resource.find_by_title('Codecademy: Python')

javascript_fix.update_attributes!(title: 'Codecademy: JavaScript')

python_fix = Resource.find(17)

python_fix.update_attributes!(title: 'Codecademy: Python')