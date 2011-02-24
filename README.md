Jangaroo Flash Application Template
===================================

This project contains all files you need to build a Flash project with Jangaroo.
For general Jangaroo information, please have a look at [Jangaroo](http://www.jangaroo.net).

You need to have installed the usual Jangaroo [prerequisites](http://www.jangaroo.net/tutorial/): Java 6 and Maven 3.
Note that you do **not** have to download and / or install Jangaroo itself!

Now, just follow these simple steps:

1. Download and unzip this project to a folder of your choice, say `C:\jooflash-app`.
2. Open a command line.
3. `C:`
4. `cd \jooflash-app`
5. `mvn package`

   If this is the first time you ever invoke Maven, please be patient.
   Half the Java universe downloads, but you end up with a functioning "hello world" Jangaroo Flash Web-app!
   If not, pipe the output into a file (`mvn package > log.txt`) and send it to `frank[at]jangaroo.net`
6. `start target\jooflash-app-0.8.0-SNAPSHOT\index.html`

   opens the app in your default browser (hopefully a HTML5-enabled browser, IE8 or older do **not** work).
   For some features (like using [Embed(source=...)] for sound or text) to work, you cannot run the Web app from your
   local file system.
   Maven also offers a solution to that problem:
7. `mvn jetty:run`

   starts a local Web-server serving your project on port 8080.
8. Then, open `http://localhost:8080` in your favorite browser.
9. Because starting Jetty blocks your command line, you need a new one, in which you can then rebuild the Web-app
   after any source code changes using

   `mvn package`
10. Reload in the browser. You may have to delete your browser cache for changes to appear.

If you have to (or want to) **debug** your application, please read the
[Jangaroo debugging introduction](http://www.jangaroo.net/tutorial/debugging/).
**Note** that in contrast to the general Jangaroo "hello world" example, this projects puts the actual Jangaroo
application into an iframe. So to enable the debug mode, open the HTML page usually loaded in the iframe directly:

`http://localhost:8080/jooflash.html#joo.debug`
