from pathlib import Path

class Config:
    def __init__(self, local_dir: str) -> None:
        self.local_dir = local_dir
    
    @property
    def local_dir(self):
        return self._local_dir
    
    @local_dir.setter
    def local_dir(self, value: str):
        path = Path(value)
        if not path.exists():
            path.mkdir(parents=True)
        elif not path.is_dir():
            raise NotADirectoryError(f"Not a directory: {path}")
        self._local_dir = path
    
    @property
    def pyenv_root(self):
        return self.local_dir.joinpath('opt', 'pyenv')
    
    @property
    def nvm_root(self):
        return self.local_dir.joinpath('opt', 'nvm')
    
    @property
    def ohmyzsh_root(self):
        return self.local_dir.joinpath('opt', 'oh-my-zsh')

