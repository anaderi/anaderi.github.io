+++
date = "2016-08-04T17:05:38+03:00"
draft = false
title = "off-by-mind"
# tags = ["one", "two"]
comments = false
category = "English"
description = "a mandatory blog part"
+++

~~Dear diary, ...~~

There is a [popular saying](http://martinfowler.com/bliki/TwoHardThings.html) that in Computer Science there are only 2 hard things: naming, cache invalidation ... and _off-by-one_.

Those _off-by-one_ relate to an error of accessing array elements in logically incorrect order. You can have many errors of that kind even in a short piece of code:

```python
a = [-2, -1, 0, -1, -2]
for i in range(1, 5): # error_1 - omitting 1st element
    if a[i] < 0: a.remove(a[i]) # error_2, altering list inside iterator
```

running it would result in exception:

```text
IndexError: list index out of range
```

Actually the code above is quite nasty, but why do I bother?

Just like arrays store numbers, human mind store & process [memes](https://en.wikipedia.org/wiki/Meme). So occasional writing to unprepared mind might look completely similar to off-by-one error. The difference is that there is no entity to check boundary condition and subjectively it is treated as learning something new or addicting to something unexpected. Also it is not treated as an _error_ at all, and instead of exception we get involved in discussions, rants or just writing blog posts. So as more memes continue hitting my mind I'd respond to some of them with a blog post that without much futher explanation could be called _off-by-mind_ posts and so is called the blog.

__PS__ also the date seems to be rather good excuse for the start `16 - 08 - 04`