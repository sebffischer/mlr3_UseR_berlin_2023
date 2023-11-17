library(data.table)

dataset = fread("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

# split in train and test
set.seed(123)
train = sample(nrow(dataset), 0.7 * nrow(dataset))
test = setdiff(seq_len(nrow(dataset)), train)

data_train = dataset[train, ]
data_test = dataset[test, ]
data_test$Survived = NULL
fwrite(data_train, "data_train.csv")
fwrite(data_test, "data_test.csv")
