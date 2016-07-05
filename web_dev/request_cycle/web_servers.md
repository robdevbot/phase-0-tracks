2. What are some of the key design philosophies of the Linux operating system?

One big one would be to keep things small and simple. Using this idea as the basis for all design results in a clean, elegant interface.

Another major tenet is to compartmentalize the function of programs, so that each does just one major task, and does it well. This prevents programs from becoming bloated, and allows the user to mix and match them to perform the desired tasks.




3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?


A VPS is a web server that runs on a hardware system that is also running numerous other virtual servers, rather than running on a single piece of dedicated hardware.
The biggest advantage of a VPS is definitely cost. Because the hosting company can operate multiple servers on a single hardware device, they can charge less for their hosting services.
The tradeoff here is that a virtual system will not have the same peak performance as a dedicated hardware device.




4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

There are several reasons this is a bad idea, and most stem from the fact that a root user has all of the privileges and none of the failsafes.
For one thing, a program that needlessly requires root access may run properly for a root user, but fail otherwise.
Additionally, running as root could allow a program to make disasterous changes to the system that would otherwise be blocked, such as deleting important files.
Lastly, running as root means that the program has access to everything, so if it is affected by malicious software, that software will do much more damage.