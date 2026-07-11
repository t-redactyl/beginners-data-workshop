# Beginners Data Workshop

<p align="center">
  <img src="media/humble-data-logo-transparent.png" alt="Humble Data logo" width="500"/>
</p>

Welcome! This workshop is for **absolute beginners**. You don't need any programming experience to follow along. By the end, you'll have Python running on your computer and you'll be exploring real data using tools that professional data scientists use every day.

We'll be using:
- **Python 3.14**: the programming language;
- **JupyterLab**: a friendly notebook-style app for writing and running Python;
- **pandas**, **numpy**, **matplotlib**, **seaborn**: libraries for working with data and making charts.

Don't worry about what any of that means yet. Just follow the steps below for your operating system.

---

## 📋 What You Need Before You Start

- A computer running **macOS**, **Windows**, or **Linux**;
- An internet connection;
- About **20 minutes** for setup;
- A willingness to learn and problem solve!

---

## What Is the Terminal?

Most of the setup happens in an app called the **Terminal** (on Mac/Linux) or **PowerShell** (on Windows). It's a program where you **type commands** instead of clicking buttons.

It might look scary - a black or white window with just text - but all you're just going to copy and paste the commands from this guide. You've got this!

Here's how to open it:

- **Mac:** Press `Cmd + Space`, type `Terminal`, and press `Enter`.
- **Windows:** Press the `Windows` key, type `PowerShell`, and press `Enter`.
- **Linux:** Press `Ctrl + Alt + T` (works on most distros), or search for "Terminal" in your apps.

Keep that window open, as you'll use it for the next few steps.

---

## 📦 Step 1: Install `uv`

`uv` is a small tool that installs Python and manages the workshop's dependencies for you. It saves us from a lot of manual setup headaches.

### Mac / Linux

Copy this whole line, paste it into your Terminal, and press `Enter`:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

When it finishes, **close the Terminal window and open a new one**. This makes sure your computer notices the new tool.

### Windows
Copy this line, paste it into PowerShell, and press `Enter`:

```bash
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

When it finishes, **close PowerShell and open a new PowerShell window**.

### Verify It Worked
In your new Terminal / PowerShell window, type:

``` bash
uv --version
```

You should see something like uv 0.x.x. If you do: awesome, you're ready for Step 2. If you see "command not found," try closing and reopening the Terminal one more time. If it still doesn't work, ask for help from your mentor.
 
## Step 2: Download the Workshop Files
You need to get a copy of this workshop onto your computer. If you have git installed, run:

``` bash
git clone https://github.com/t-redactyl/beginners-data-workshop/
cd beginners-data-workshop
```

Don't have git? No problem. Do this instead:
- Go to https://github.com/t-redactyl/beginners-data-workshop in your web browser.
- Click the green "Code" button, then click "Download ZIP".
- Find the downloaded ZIP file (usually in your Downloads folder), and double-click it to unzip.
- In your Terminal, navigate into the folder. For example:

### Mac / Linux:
``` bash
cd ~/Downloads/beginners-data-workshop-main
```

### Windows:
``` powershell
cd $HOME\Downloads\beginners-data-workshop-main
```

Tip: `cd` means "change directory" (i.e. move into a folder). If you get lost, type `pwd` to see where you are. 

## Step 3: Install Python and the Workshop's Dependencies
Still in the same Terminal window, and still inside the `beginners-data-workshop` folder, run:

``` bash
uv sync
```

That's it! This single command will:
- Download and install Python 3.14 (if you don't already have it);
- Create a private "sandbox" folder called .venv inside the project so nothing messes with the rest of your computer;
- Install all the workshop's libraries at the exact versions we need;
- The first time you run it, it might take a few minutes;
- When it finishes, you'll see a summary of everything that was installed.
 
## Step 4: Launch JupyterLab
You're ready to go! Run:

``` bash
uv run jupyter lab
```

Your web browser should automatically open a new tab with JupyterLab, a friendly interface where you can open the workshop notebooks (files ending in .ipynb) and run code by clicking a play button.

If it doesn't open automatically, look in the Terminal for a line that starts with http://localhost:8888/... and click it (or copy and paste it into your browser).

## How to Stop JupyterLab
When you're done for the day, go back to the Terminal window where JupyterLab is running and press Ctrl + C (yes, Ctrl even on a Mac). It'll ask if you want to shut down — type `y` and press Enter.
 
## Coming Back Later
Next time you want to work on the workshop, you only need two commands:

``` bash
cd path/to/beginners-data-workshop
uv run jupyter lab
```

Replace `path/to/beginners-data-workshop` with wherever you saved the folder. No need to reinstall anything.
 
## 🆘 Troubleshooting

Feel free to ask your mentor if you don't feel comfortable trying these troubleshooting steps alone.

<details>
<summary><strong>"command not found: uv"</strong></summary>

Close all Terminal windows and open a fresh one. If it still doesn't work, the `uv` installer may not have added itself to your system path. Visit https://docs.astral.sh/uv/getting-started/installation/ for platform-specific help.

</details>

<details>
<summary><strong>"uv sync" fails with a dependency error</strong></summary>

Make sure you're inside the `beginners-data-workshop` folder (run `ls` on Mac/Linux or `dir` on Windows — you should see a `pyproject.toml` file). If you are, copy the full error message and share it with the workshop organisers.

</details>

<details>
<summary><strong>JupyterLab didn't open in my browser</strong></summary>

Look at the Terminal output for a URL like `http://localhost:8888/lab?token=...`. Copy and paste that into your browser manually.

</details>

<details>
<summary><strong>Windows says "running scripts is disabled on this system"</strong></summary>

Open PowerShell **as Administrator** (right-click → "Run as Administrator") and run:

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

</details>
 
## About This Workshop

<p align="center">
  <img src="media/humble-data-logo-transparent.png" alt="Humble Data logo" width="500"/>
</p>

This workshop is run by [Humble Data](https://humbledata.org/), a community organisation that helps people from underrepresented backgrounds get started in data science. 