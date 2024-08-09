# Progress Year

```
███╗                         ███╗
██╔╝ ████╗ ████╗             ╚██║
██║  ╚═══╝ ╚═══╝ ██╗ ██╗ ██╗  ██║
██║  ████╗ ████╗ ╚═╝ ╚═╝ ╚═╝  ██║
███╗ ╚═══╝ ╚═══╝             ███║
╚══╝                         ╚══╝
```

**A Bash script that turns the relentless passage of time into a series of comforting progress bars, because why not?**

# Progress Year

Welcome to the ultimate **Progress Year**.
Because who doesn't need a constant reminder of the relentless passage of time?

## Overview

This meticulously crafted script provides real-time visual updates on how much of your year, month, week, and day has slipped through your fingers.
Perfect for those moments when you want to feel both productive and existentially overwhelmed.

### Sample Output

```
$ ./progress_year.sh 
ven 9 ago 2024, 15:10:05
Year    60.65% [==========================.................]
Month   29.03% [============...............................]
Week    71.42% [==============================.............]
Day     63.19% [===========================................]
```

Isn't it comforting to know exactly how much time you've already lost today or this year? (Or how much time was wasted reading this?)

## How It Works

The script breaks down time into the following critical progress bars:

- **Year**: Measures how much of the year has vanished into the abyss.
- **Month**: Tracks how fast you're hurtling towards the end of the month.
- **Week**: Keeps tabs how far are you from the weekend (or how fast your weekend is disappearing.)
- **Day**: Reminds you how little time you have left today, and how much you've already procrastinated.

Each bar is sourrounded by squared brackets `[ ]`, is lovingly rendered with `=` symbols representing time that's gone forever, and `.` symbols for the remaining illusion of control.
An example of progress bar is the logo of this program `[==...]`.
It means that `2/5` (`40%`) of the bar is filled with `=` and the remaining `3/5` (`60%`) is filled with `.`.

## Requirements

- A Unix-like operating system (Linux, macOS, or any machine with a bash shell). No Windows support, because Windows users have all the time in the world.
- A healthy sense of humor.

## Installation

1. **Clone this highly sophisticated repository**:

   ```bash
   git clone https://github.com/Alessandrostr95/ProgressYear.git
   ```

2. **Navigate to the cutting-edge technology directory**:

    ```bash
    cd ProgressYear
    ```

3. **Grant yourself the power to execute the script**:

    ```bash
    chmod +x progress_year.sh
    ```

4. **Add this program to your path (OPTIONAL)**:

    ```bash
    cd ProgressYear
    echo "export PATH=\"\$PATH:$(pwd)\"" >> ~/.bashrc
    ``` 

## Usage

Simply run the script whenever you feel the need to quantify your impending doom:

```bash
./progress_year.sh
```

## Customization

Not satisfied with how time is portrayed?
Feel free to dive into the code and tweak the bar length, characters, or even the entire concept of time itself.

## Contribution

While this script is already near perfection, we are open to contributions.
Whether you want to add more bars (because who doesn't want more reminders?) or improve the humor (though it's already pretty top-notch), feel free to submit a pull request.

## License

This project is licensed under the GPL-3.0 License.
Use it at your own risk, especially if you're prone to existential crises.

## The Origin Story

It was the 9th of August, the middle of a scorching summer, with the temperature hovering around 40 degrees Celsius (I'm sorry anglophiles, but I refuse to use Fahrenheit in 2024!).
Like any sensible developer, I was safely indoors, avoiding the sun as if it were a vampire repellent.
Bored out of my mind because stepping outside was simply not an option, I found myself aimlessly scrolling through Twitter (ok X, but i still prefer to use the name Twitter), when I stumbled upon the ["Year Progress"](https://x.com/year_progress) page.
This brilliant account posts daily updates showing what percentage of the year has slipped away, which, naturally, got me thinking.

"Wouldn't it be good to have a smartphone widget that constantly reminds me just how much of the year is gone?" I thought to myself.
It seemed like a fun way to pass the time (and maybe even a little useful).
But then reality hit: creating an Android project for something this simple felt like way too much effort, especially given my current state of lethargy induced by the oppressive heat.

So, in the spirit of minimal effort and maximum procrastination, I turned to Bash.
Why build a whole app when you can achieve the same existential dread with a few lines of shell script? And thus, this project was born: a perfect blend of boredom, laziness, and an aversion to the heat. Enjoy!

-----

**Disclaimer**: No responsibility is taken for any existential dread or sudden career changes caused by the use of this script.

-----