import os

def get_filename(__file__):
    return __file__.split('.')[0]

def get_mage_filename():
    path = os.path.dirname(os.path.abspath(__file__))
    dirs = path.split('/')
    dirs.remove('controllers')
    if 'community' in dirs:
        idx = dirs.index('community')
        mage_path = dirs[idx+1:len(dirs)]
        return '_'.join(mage_path) + '_' + get_filename(__file__)
    return get_filename(__file__)

print get_mage_filename()
