df["city"] = df["city"].str.replace(r"/\w*", "", regex=True)