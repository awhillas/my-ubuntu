cat > $1 <<EOF
from pathlib import Path

import hydra
from dotenv import load_dotenv
from loguru import logger as log
from omegaconf import DictConfig, OmegaConf

load_dotenv()


@hydra.main(config_path="conf", config_name="some-file-in-the-conf-dir")
def main(cfg: DictConfig) -> None:
    print(OmegaConf.to_yaml(cfg))  # print the working config

    owd = hydra.utils.get_original_cwd()  # original working dir.


if __name__ == "__main__":
    main()

EOF