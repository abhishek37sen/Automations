import openpyxl

wk = openpyxl.Workbook()
sh = wk.active
sh.title = "HelloTesting"
print(sh.title)
print(sh)
sh['A4'].value = "testing"

wk.create_sheet(title="testing")
sh1= wk["testing"]
sh1['A3'] = "3433"

# wk.remove_sheet(sh1)
del wk["testing"]
wk.save('G:\\pysheet.xlsx')
