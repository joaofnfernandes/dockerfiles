# The problem space

Since the first state of the product development lifecycle is doing research, PMs need to make this a structured and
data-driven activity. If not, they risk doing what all marketing organizations where doing in the 90's, use your gut.
Of course most of the times they would not really understand what users really want, and would ship products and
campaigns that no one cared about.

The most important thing when running research activities is to be focused in the problem space, and not be bound by
possible solutions.
You do this in an iterative way, each time funneling down the problem space, until you end up with a problem that you
think deserves to be solved.

![](img/problem-space.svg)

There's a lot of ways that you could go about musing about problems, but a good way is to break it down in two parts:
finding the personas you want to cater to, and finding what are their user stories that are underserved.

## Personas

A persona is a fictional person that you develop and is repressentative of a type of user that you'll cater to.
The best way to create personas is by doing user research, and talking with real people. This will allow you to
identify people with the same needs, goals, and interests.

![](img/personas.svg)

You can create as many personas as you want, but the goal of creating personas in the first place is so that you
can refer to them when identifying underserved needs, and comming up with potential solutions for them.
This means that if you have a ton of personas it will be hard to remember them all and to make trade-offs between
competing problems and priorities that two personas might have. So shoot for creating and maintaining three to five
personas.

This might seem few in the beginning, but don't forget that personas are both a shared language and a moving target.
So it's best that everyone in the team understands and refers back to a couple of personas you might have, instead
of kind of getting and constantly being confused about the tens of personas you might have.

Personas are also a moving target in the sense that they are not static. They are not a formal role in a company or
a job title. Personas are specific to the problem space you're working on. This means that you should spend time
reviewing them and iterating on them based on continuous user research.

Here's what you'll want to know for each persona:

* Made up name - This makes it easy for everyone in the team to refer to
* Job title - In well established industries a job title has a well defined set of responsabilities
* Responsabilities, goals, and needs
* Challenges and painpoints

You can also keep track of demografics like age, and gender, but from my experience those are not very
meaningful data points, unless you're targeting a very specific age group or gender.

Above all else, personas should be grounded in existing people. No matter how well you develop your personas, if they
are completely fictionalized, and no one in the world has the same goals, needs, and challenges as them, then
you'll be developing a product for no one in particular. You won't be able to achieve product/market fit for such
a product.

By taking the time to develop personas, you'll be able to quickly:
* Priotize competing problems/solutions
* Validate design decisions
* Get feedback from key stakeholders

## User stories

User stories are a nice and concise way to describe a user pain point or underserved need. Without them it's
very easy to talk about features and goals, without thinking about the underlying painpoint users have.
Without this you'll be building features blindingly. Some times you'll nail it and people will want to use the
feature. Other times you'll fail and no one will care about the new feature you're developing. And why take that risk?

So here's how a user story looks like:

```
As a <persona>, I want to <goal>, in order to <underlying reason>
```

Of course sometimes you'll have to work on something that might not make sense to write a user story for. Things like
refactoring a code base. But those are the exception rather than the rule. And of course you could write it as user
story if you really want to: "As the front-end team, I want to have a clean API to develop against, in order to be more
productive and introduce less bugs in the product."

You can write user stories with different abstraction levels. If a single user story is too complex to implement or
leaves a lot of room for interpretation, you can break it down into smaller ones. In that case the industry lingo
for the top, main one is "epic".

Just like personas, you don't come up with user stories out of thin air. They are refined from explicit user requests,
feedback from customer advisory groups, competitive analysis, user research, and feedback from marketing and sales.


1. personas
2. user stories
3. metrics
