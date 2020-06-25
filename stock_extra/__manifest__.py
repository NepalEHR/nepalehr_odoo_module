
# -*- coding: utf-8 -*-
{
 'name': 'Stock Extra',
    'version': '7.0.1.0.0',
    'category': 'Stock',
    'sequence': 19,
    'summary': 'Stock Extra',
'author':'Possible Health', 
'description': 'Stock Extra Module',
'website': 'https://www.nepalehr.org/',

  'installable': True,
    'auto_install': False,
    'application': False,
   

    'category': 'Product',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': ['product_stock_type','stock','sale','mrp'],
    'data': [
       'views/stock_view.xml'
    ],
}
