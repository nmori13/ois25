# Création de données fictives
set.seed(123)
x <- rnorm(100, mean = 50, sd = 10)
y <- rnorm(100, mean = 100, sd = 20)
category <- sample(c("A", "B", "C"), 100, replace = TRUE)

# Associer chaque catégorie à une couleur
colors <- c("A" = "tomato", "B" = "steelblue", "C" = "darkgreen")
point_colors <- colors[category]

# Création du plot
plot(x, y,
     col = point_colors,
     pch = 19,
     cex = 1.5,
     xlab = "Variable X",
     ylab = "Variable Y",
     main = "github 11. plot()",
     sub = "Données aléatoires par catégorie")

# Ajout de la légende
legend("topright",
       legend = names(colors),
       col = colors,
       pch = 19,
       pt.cex = 1.5,
       title = "Catégories")
