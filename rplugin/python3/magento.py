import neovim

@neovim.plugin
class MagentoPlugin(object):

    def __init__(self, nvim):
        self.nvim = nvim

    def get_filename(self, filename):
        return filename.split('.')[0]

    @neovim.function("MagentoClassName", sync=True)
    def magento_classname(self, args):
        path = self.nvim.eval("expand('%:p')")
        dirs = path.split('/')
        if ('controllers' in dirs):
            dirs.remove('controllers')
        filename = dirs[-1]
        if (filename in dirs):
            dirs.remove(filename)
        if 'community' in dirs:
            idx = dirs.index('community')
            mage_path = dirs[idx+1:len(dirs)]
            return '_'.join(mage_path) + '_' + self.get_filename(filename)
        return self.get_filename(filename)
