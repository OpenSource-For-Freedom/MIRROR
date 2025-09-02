#!/usr/bin/env bash

set -euo pipefail

recipe_pancakes(){ cat <<TXT
Fluffy Pancakes
Ingredients:
- 1 cup flour
- 2 tbsp sugar
- 2 tsp baking powder
- 1/4 tsp salt
- 1 cup milk
- 1 egg
- 2 tbsp melted butter
Steps:
1) Whisk dry.
2) Add wet, mix just until combined.
3) Cook 2–3 min/side on medium.
TXT
}

recipe_garlic_pasta(){ cat <<TXT
Garlic Butter Pasta
Ingredients:
- 8 oz pasta
- 3 tbsp butter
- 3 cloves garlic, minced
- 1/4 cup grated parmesan
- Salt, pepper, parsley
Steps:
1) Boil pasta.
2) Melt butter, sauté garlic 30s.
3) Toss pasta + parmesan; season.
TXT
}
###
main(){
  case "${1:-}" in
    pancakes) recipe_pancakes ;;
    garlic-pasta|garlic_pasta) recipe_garlic_pasta ;;
    *) echo "Recipes: pancakes, garlic-pasta" >&2; exit 2 ;;
  esac
}
main "$@"

