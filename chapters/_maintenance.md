# Maintenance

So far we've described the software development life cycle for new products
or features. But let's be real, you don't get to build products that people
care and love just by shipping new features.

Nothing beats real user feedback. Even when you build minimum viable
products and gather user feedback early and frequently, as your product
gets more adoption, different users will use your product in different ways.

Along the way they'll try to push your product to its limits, try to do
things that your product doesn't fully support, or use a feature in a
different way than what you thought it would be used.

As a product manager it's also your responsibility to understand how existing
users are using your product and how the product can be improved to support
those users.

When most people think about maintenance, the thing that comes to mind is bugs.
But I think that it makes sense to separate maintenance in two different
categories:

* Bugs - Your product crashes or misbehaves when users try to use a feature
* Restrictive functionality - Your try to use existing features to execute
a user story you never thought of. So in most cases it won't be possible to
fully execute the user story, or at least it's not going to be easy.

It makes sense to separate between the two because they create a different
level of frustration for users.

When a user experiences a bug, at best they lost time doing something and will
have to start from scratch. At worse a bug can lead them to lose data. Either
way, users will be highly frustrated and lose the confidence in your product.

This is the fastest way to lose users, specially if they are paying customers.

Restrictive functionality on the other end isn't so frustrating. Sure users
will be trying to jump through a lot of hops to do something that could be
simpler.

## Prioritize and fix bugs

In an perfect world were you have infinite time and resources, you can work
in the next generation of your product, and fix existing bugs at the same
time.

But in the real world you can't have it all. The time and resources you spend
fixing existing bugs, is time you're not spending creating the next generation
of your product.

Of course this is obvious, but if you're a perfectionist like me, and
my experience tells me that most engineers feel that way, you'll have your
ego bruised every time a user finds a bug. So your first instinct will be
to try and fix a bug as soon as someone finds it. Every single one.

As your project complexity grows, and user adoption increases you won't be able
to keep up. And that's OK. Instead of trying to jump on every single issue, what
you need to have is a straightforward process for people to communicate bugs,
and a framework to prioritize them once they are reported.



- bug reports have a ton of useful information, so as a product manager
you should keep and eye on them, and help the team prioritize
- PM needs to protect the team from chaos, and that can mean implementing
processes on how to raise issues to the team so that they don't spend
all their time
- At the same time you don't want to silo the team, otherwise they won't feel
the user painpoints, and will be developing the product in a vacuum.
- Multi-tier support
- How do dogfooding initiatives fit into this?



## Protect your team from the chaos

As your Product Manager you need to set a direction for your team and let them
lose so that they can focus and work deeply on solving the problems you
presented to them.

But for the team to be able to focus and do deep work, you need to protect
them from the chaos around them.
This is specially true in startups where everything is burning. All the time.

And the way to minimize the chaos for your teams is to create a bit of
process. Not a long and rigid process, but just the minimum enough that allows
things to still get noticed and not follow in the cracks, but still makes sure
teams are not being interrupted all the time.

This advice is not so obvious for startups. By definition startups are trying
to fight the establishment, so it's very easy for startups to think that
process is only needed in big companies. Or that process is what makes big
companies so slow.

So the instinct if small startups is to avoid processes at all costs. I
definitely saw that at Docker a lot. The problem with that is that you
end up dying by a thousand paper cuts. You have so many interruptions that
you don't have enough time to focus deeply in solving problems and thinking
about the next generation of your product.

So as a Product Manager you need to learn how to navigate these waters and
instill a minimum viable process, explain to the team why that is needed,
and making sure that the process is followed, until it becomes part of the
company DNA.

- Some teams will fight it at the beginning, so you need to stick with it
- You'll know its working when people default to using the process instead
of working around it


## How to triage bugs

One way to triage bugs is to classify them with a `frequency` and `severity`.
Frequency is a metric of how many users are going to be affected by the issue.

Severity is a metric of how serious the problem is in terms of impact to the
user. Does the issue lead to users losing data, is the issue happening on
production, or is the issue more of a nuisance to the users.


- There's tons of ways to classify issues, but you should keep it really simple.
That way it's easier to communicate across the company why a bug needs to
be fixed immediately or why it can be postponed.
- Do some math so that the value falls between 0-1

One other vector that you can use to assign an importance to the issue is
whether or not there is a workaround for the issue or not.

Most often than not, there's a workaround the team can provide to users so
that they can achieve what they were trying to achieve when they ran into
the problem.

Genuine product problems that don't have a workaround should be prioritized
higher than problems that have a workaround.

- Transparency to the rest of the company is super important
- Stakeholders will never fully agree on frequency or impact

## Transparency and issue escalation

Even when the triaging process is super clear to the rest of the company,
your stakeholders are going to be super passionate about the particular
issues they found or that are affecting them.

Your stakeholders responsability is to advocate for their users, not to have
the big picture. So as a Product Manager your responsability is to give the
big picture to your stakeholders.

You need to show them constantly why your team is not working on the issues
they reported.

There's multiple ways for you to address this:

- Have a visible roadmap so that the rest of the company can see what the team
is working on and where they are headed.


A goo way to keep your stakeholders happy is to give them a forum where they
are heard. Filing issues and bug reports sometimes feels too unpersonal. It
might seem that their issue just falls in a black hole that no one cares about.

Just like the suggestion box at your local supermarket.

A good way to avoid this is to have a face-to-face meeting with stakeholders
from the different teams that might have a stake in the product.
Sure, it doesn't make sense to meet with 30 people at a time, so each team
should send one or two representatives.

Another option is for you to individually meet with the members of other teams.
From my experience meeting with all stakeholders at the same time works best
since each stakeholder will get what every other stakeholder cares about.

This gives people the opportunity to have deep and meaningful discussion, and
try to advocate for their users. But also forces people to get the big picture.
