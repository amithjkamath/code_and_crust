import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.dates import DateFormatter
from matplotlib.dates import HourLocator


def print_average_time():
    df = pd.read_csv("datasets/timestampsMilan.csv")
    arrivalTimes = pd.to_datetime(df.arrivalTimes, format="%d-%b-%Y %H:%M:%S")
    departureTimes = pd.to_datetime(df.departureTimes, format="%d-%b-%Y %H:%M:%S")

    durations = arrivalTimes - departureTimes
    print("Average time spent traveling to Milan is: ", durations.mean())

    durations.plot(title="DataFrame Plot")
    #plt.figure()
    #plt.plot(range(0, len(durations)), durations)
    #ax = plt.subplot()
    #ax.yaxis.set_major_locator(HourLocator())
    #ax.yaxis.set_major_formatter(DateFormatter('%H:%M:%S'))
    #plt.axhline(y=durations.mean(), color="red", linestyle="-")
    plt.show()


if __name__ == "__main__":
    print_average_time()
