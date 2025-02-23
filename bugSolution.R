```r
# Solution: Convert column names to lowercase for consistent comparison

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("a", "b")

# Convert column names to lowercase
df_lower <- data.frame(lapply(df, as.character), stringsAsFactors = FALSE)
names(df_lower) <- tolower(names(df_lower))

# Convert selection vector to lowercase
cols_to_select_lower <- tolower(cols_to_select)

# Now subset using the lowercase names
subset_df <- df_lower[, cols_to_select_lower]

print(subset_df)
```