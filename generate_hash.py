import bcrypt

password = b"abc1d2aa"
# Generate salt with a cost factor of 12
salt = bcrypt.gensalt(rounds=12)
hashed_password = bcrypt.hashpw(password, salt)
print(hashed_password.decode('utf-8'))
