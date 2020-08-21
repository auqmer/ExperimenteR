

T5 <- scan(file = "https://dornsifelive.usc.edu/assets/sites/239/docs/mismatch_dat.txt")

hist(T5)


## Example

### Plasma Retinol

AGE: Age (years)
  
SEX: Sex (1=Male, 2=Female).
	
SMOKSTAT: Smoking status (1=Never, 2=Former, 3=Current Smoker)
	
QUETELET: Quetelet (weight/(height^2))
	
VITUSE: Vitamin Use (1=Yes, fairly often, 2=Yes, not often, 3=No)
	
CALORIES: Number of calories consumed per day.
	
FAT: Grams of fat consumed per day.
	
FIBER: Grams of fiber consumed per day.
	
ALCOHOL: Number of alcoholic drinks consumed per week.
	
CHOLESTEROL: Cholesterol consumed (mg per day).
	
BETADIET: Dietary beta-carotene consumed (mcg per day).
	
RETDIET: Dietary retinol consumed (mcg per day)
	
BETAPLASMA: Plasma beta-carotene (ng/ml)
	
RETPLASMA: Plasma Retinol (ng/ml)


```{r}
plasma <- read.table("data/PlasmaRetinol.txt", skip = 16)
names(plasma) <- c("age", "sex", "smokstat","quetelet","vituse", "calories", 
                   "fat", "fiber",   "alcohol", "cholesterol", "betadiet", 
                   "retdiet", "betaplasma", "retplasma")
```



```{r}
plasma <- transform(plasma, 
                    sex = factor(sex, labels = c("male", "female")),
                    smokstat = factor(smokstat,
                                      labels = c("never", "former",
                                                 "current")),
                    vituse = factor(vituse, 
                                    labels = c("often", 
                                               "not often", 
                                               "no"))
                    )
	
```


```{r}
mod <- aov(cholesterol ~ smokstat, data = plasma)
summary(mod)
```