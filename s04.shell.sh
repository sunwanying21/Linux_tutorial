
# Shell Scripting: Loops and If Statements

Shell scripting allows you to automate tasks in Linux/Unix. Two essential features are **loops** (for repeating actions) and **if statements** (for decision making).

---

## 1. If Statements

**If statements** let your script make decisions.

**Syntax:**
```bash
if [ condition ]
then
    # commands if condition is true
fi
```

**Example:**
```bash
num=5
if [ $num -gt 3 ]
then
    echo "$num is greater than 3"
fi
```

**With else:**
```bash
if [ $num -gt 10 ]
then
    echo "$num is greater than 10"
else
    echo "$num is not greater than 10"
fi
```

**With elif:**
```bash
if [ $num -gt 10 ]
then
    echo "$num is greater than 10"
elif [ $num -eq 10 ]
then
    echo "$num is equal to 10"
else
    echo "$num is less than 10"
fi
```

---

## 2. Loops

### a) For Loop

**Syntax:**
```bash
for variable in list
do
    # commands
done
```

**Example:**
```bash
for i in 1 2 3 4 5
do
    echo "Number: $i"
done
```

**With a range:**
```bash
for i in {1..5}
do
    echo "Number: $i"
done
```

### b) While Loop

**Syntax:**
```bash
while [ condition ]
do
    # commands
done
```

**Example:**
```bash
count=1
while [ $count -le 5 ]
do
    echo "Count: $count"
    count=$((count + 1))
done
```

---

## 3. Combining Loops and If Statements

You can use if statements inside loops.

**Example: Print even numbers from 1 to 5**
```bash
for i in {1..5}
do
    if [ $((i % 2)) -eq 0 ]
    then
        echo "$i is even"
    else
        echo "$i is odd"
    fi
done
```

---

## 4. Practice Exercise

Write a script that prints numbers from 1 to 10 and says whether each is greater than 5.

**Solution:**
```bash
for i in {1..10}
do
    if [ $i -gt 5 ]
    then
        echo "$i is greater than 5"
    else
        echo "$i is not greater than 5"
    fi
done
```

