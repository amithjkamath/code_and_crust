import pandas as pd
import matplotlib.pyplot as plt

def print_average_time():
    df = pd.read_csv("data/timestampsMilan.csv")
    print(pd.to_datetime(df.arrivalTimes, "format", "%d/%m/%y %H:%M:%S") - pd.to_datetime(df.departureTimes))



if __name__ == "__main__":
    print_average_time()
