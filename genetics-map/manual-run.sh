#!/bin/bash

# INPUT=zdpuAvbRW8TPZ7sjz6N2nE2Fv3YY9m27pLGt1xfiqt3VtfZby # x^3
# INPUT=zdpuAyNfTucZTLfFtjXZDKcndwtjn8yUg64qjqn6fbyQtaCdw # x^3 - x
# INPUT=zdpuAwATuewe6A6xBXfDrGDZivS5UNHkmFkqjnL2GimAEiCP9 # x^3 - x (init pop only has 1 & x)
# INPUT=zdpuAogbJ8X93BZuucoPEem1GGnmYUet5DsTGfcyrypWXahxo # 2x^2+x+7
INPUT=zdpuAnd4mKNbQsHjXHwx9aX98LY6fTw87jHiHFR4Y63T7fEFE # 2x^2+x+7 (init pop only has 1)
# INPUT=zdpuAmtKj6ZTeXQGNfS1htFoUytkEXYcrJzB58J43ryroeNU3 # 2x^2+7

main() {
  set -e -o pipefail

  ipfs dag get "$INPUT" \
  | env LEIN_FAST_TRAMPOLINE=y lein trampoline run
}
main "$@"
