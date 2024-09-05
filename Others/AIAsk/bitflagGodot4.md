# c'est quoi les bit flags et ses export dans godot 4, stp ?

Les **bit flags** (ou "drapeaux binaires") sont une méthode pour stocker plusieurs valeurs booléennes dans une seule variable numérique, en utilisant les **bits** individuels d'un nombre entier (généralement un entier non signé). Chaque bit de cette variable représente un état (vrai ou faux, ou activé/désactivé).

Dans **Godot 4**, les bit flags sont souvent utilisés pour gérer des options, des états ou des propriétés qui peuvent être combinés, comme des couches de collision, des paramètres graphiques, ou des options de configuration.

### Comment fonctionnent les bit flags ?

Dans un entier, chaque bit a une position spécifique et une valeur en puissance de deux :
- Bit 0 (le bit le plus à droite) vaut `1` (2^0),
- Bit 1 vaut `2` (2^1),
- Bit 2 vaut `4` (2^2),
- Et ainsi de suite.

Cela permet de stocker plusieurs options dans un seul entier en utilisant des opérations logiques comme **ET** (`&`), **OU** (`|`), et **NON** (`~`).

Par exemple, si l'on veut activer plusieurs options :
- Option 1 : 0001 (binaire) ou 1 (décimal),
- Option 2 : 0010 (binaire) ou 2 (décimal),
- Option 3 : 0100 (binaire) ou 4 (décimal).

Pour activer à la fois l'option 1 et l'option 3, on peut faire un **OU** binaire (1 | 4) qui donne 0101 en binaire, soit 5 en décimal.

### Exporter des bit flags dans Godot 4

Dans Godot, pour faciliter l'édition des bit flags dans l'éditeur, on peut utiliser l'annotation `@export` avec le type `Flags` dans une variable pour créer une interface plus visuelle. Cela permet de sélectionner facilement les options via des cases à cocher dans l'éditeur.

Voici un exemple simple en GDScript dans **Godot 4** :

```gdscript
enum Layers {
	GROUND = 1 << 0,  # 0001
	WATER  = 1 << 1,  # 0010
	AIR    = 1 << 2,  # 0100
	FIRE   = 1 << 3   # 1000
}

@export var layers: int = Layers.GROUND | Layers.WATER
```

Dans cet exemple :
- `Layers` est une énumération qui définit différents états avec des puissances de deux.
- `@export var layers` crée un champ modifiable dans l'éditeur Godot avec une interface utilisateur qui permet de cocher plusieurs "layers" à la fois.

#### Exemple avec `@export_flags` (nouveau dans Godot 4)

Godot 4 introduit la possibilité d'utiliser directement l'annotation `@export_flags` pour simplifier encore plus la gestion des bit flags. Voici comment cela fonctionne :

```gdscript
@export_flags("GROUND", "WATER", "AIR", "FIRE")
var layers: int
```

Dans cet exemple, une interface avec des cases à cocher pour chaque "layer" apparaîtra dans l'éditeur, et chaque option cochée modifiera les bits correspondants dans la variable `layers`.

### Opérations courantes sur les bit flags
- **Vérifier si un bit est activé** :
  ```gdscript
  if layers & Layers.GROUND != 0:
	  print("GROUND est activé")
  ```

- **Ajouter un bit** :
  ```gdscript
  layers |= Layers.FIRE
  ```

- **Retirer un bit** :
  ```gdscript
  layers &= ~Layers.WATER
  ```

Les bit flags sont très utiles pour stocker des combinaisons d'options de manière compacte et efficace tout en offrant une flexibilité maximale dans la gestion des états.
