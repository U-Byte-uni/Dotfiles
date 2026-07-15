Credit to randomboi404 for original config files

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9e3f015e-4f0c-4004-a76a-c9ba7ac49c1c" />

Installation

1.Install the eww-git ver NOT the simple eww version

2.Copy files to .config/eww/widgets folder

3.Create a eww.yuck file in eww folder

(include "./widgets/bg-panel/bg-panel.yuck")
(include "./widgets/activate-linux/activate-linux.yuck")

4.Create a eww.scss file also

// Import pywal generated colors
@import "/home/<username>/.cache/wal/colors.scss";

// Pywal generated color aliases
$shadow-primary: #06060b;
$shadow-secondary: rgba($color0, 0.9);
$shadow-tertiary: rgba($color0, 0.3);
$border-primary: $color8;
$bg-primary: rgba($color0, 0.98);
$bg-secondary: rgba($color0, 0.92);
$bg-tertiary: rgba($color0, 0.75);
$bg-dark: rgba($color0, 0.28);
$bg-darker: rgba($color0, 0.3);
$text-primary: $foreground;
$text-secondary: $foreground;
$text-accent: $foreground;
$text-muted: $color1;
$text-info: $foreground;
$bar-bg: $background;
$bar-text: $foreground;
$bar-accent: $color4;
$text-disabled: #737373;

tooltip {
  background-color: $bar-bg;
  color: #EBDBB2;
}

.divider-h {
  min-height: 3px;
  margin-top: 22px;
  margin-bottom: 22px;
  background-color: rgb(0, 0, 0);
}

.divider-v {
  min-width: 3px;
  min-height: 10px;
  margin-right: 22px;
  background-color: rgba(#ffffff, 0.5);
}


/* Widgets */
// Background Panel
@import "./widgets/bg-panel/bg-panel.scss";
// Activate Linux
@import "./widgets/activate-linux/activate-linux.scss";
* {
  all: unset;
 font-family: "JetBrains  Mono", "Noto Sans", monospace;
}

5.Create quotes.json file to display quotes (Add custom quotes )

[
  {
    "quote": "You will be warm again.",
    "author": "Wit"
  },
  {
    "quote": "Im tall enough to save him now ,aren't i.",
    "author": "Beak from Malazan"
  },
  {
    "quote": "Zura ja nai! Katsura da! .",
    "author": "Katsura Kotaro"
  },
  {
    "quote": "Going back to where you started isn't the same as never leaving.",
    "author": "Terry Pratchett"
  },
  {
    "quote": "If you've got time to fantasize about a beautiful death, why not live beautifully until the end? ",
    "author": "Sakata Gintoki"
  },
  {
    "quote": "Tears are handy for washing away troubling and sad feelings. But when you grow up, you'll learn that there are things so sad, they can never be washed away by tears. That there are painful memories that should never be washed away. So people who are truly strong laugh when they want to cry. They endure all of the pain and sorrow while laughing with everybody else",
    "author": "Hajime from Gintama"
  },
  {
    "quote": "Seven, Brienne thought again, despairing. She had no chance against seven, she knew. No chance, and no choice. She stepped out into the rain, Oathkeeper in hand.",
    "author": "Brienne of Tarth"
  },
  {
    "quote": "Wisdom grows by stripping away beliefs, until the last tether is cut, and suddenly you float free. Only, because your eyes are wide open, you see right away that you can’t float in what you’re in. You can only sink. That’s why the meanest religions work so hard at keeping their followers ignorant. Knowledge is poison. Wisdom is depthless. Staying ignorant keeps you in the shallows",
    "author": "Dust of Dreams"
  },
  {
    "quote": "It is said that life is a tragedy for those who feel, and a comedy for those who think.",
    "author": "Gardens of the Moon"
  },
  {
    "quote": "Ook",
    "author": "The Librarian"
  },
  {
    "quote": "In life, there are no absolute truths, only perspectives.",
    "author": "Elric of Melnibone"
  },
  {
    "quote": "If you trust in yourself. . .and believe in your dreams. . .and follow your star. . . you’ll still get beaten by people who spent their time working hard and learning things and weren’t so lazy",
    "author": "Terry Pratchet "
  },
  {
    "quote": "You listen sharp, think deep, and guard your tongue. That’s good advice for any dealings beyond.",
    "author": "Eye of the World"
  },
  {
    "quote": "Stories of imagination tend to upset those without one.",
    "author": "Terry Pratchett"
  },
  {
    "quote": "The most important step a man can take? It’s not the first one, is it? It’s the next one. Always the next step, Dalinar.",
    "author": "Stormlight Archives"
  },
  {
    "quote": "I will defend even those I hate, even if the one I hate most is myself",
    "author": "Teft"
  },
  {
    "quote": "Children are dying.’ Lull nodded. ‘That’s a succinct summary of humankind, I’d say. Who needs tomes and volumes of history? Children are dying. The injustices of the world hide in those three words.",
    "author": "Deadhouse Gates"
  },
  {
    "quote": "Honor is dead, but I'll see what I can do.",
    "author": "Kaladin Stormblessed"
  },
  {
    "quote": "Preoccupied with a single leaf...  you won't see the tree. Preoccupied with a single tree... you'll miss the entire forest.",
    "author": "Vagabond"
  },
  {
    "quote": "Better to do it than to live with the fear of it",
    "author": "Logen Ninefingers"
  },
  {
    "quote": "All truly strong people are kind ",
    "author": "Vagabond"
  },
  {
    "quote": "I think the most beautiful souls are the one that remain gentle after everything they have survived .they have every reason to become cold,yet they still choose kindness, still choose Love, still believe people can be better",
    "author": "Dosteovesky"
  },
  {
    "quote": "But sometimes the world does not reward gentle souls. Sometimes it takes everything soft inside them until they become strangers even to themselves",
    "author": "Logen Ninefingers"
  },
  {
    "quote": "You know a people have given up when they stop teaching their Children",
    "author": "Red Rising"
  },
  {
    "quote": "People have beautiful things to say about you but first u must die",
    "author": "Dosteovesky"
  },
  {
    "quote": "When you are born in a burning home,you think the whole world is on fire",
    "author": "Richard Kadrey"
  },
  {
    "quote": "So many broken Children living in grown bodies mimicking adult lives",
    "author": "Ijeoma Umebinyuo"
  },
  {
    "quote": "There are ships sailing many ports,but not a single one goes where life is not painfull",
    "author": "Fernando Pessao"
  },
  {
    "quote": "Give a man a fire and he's warm for a day, but set fire to him and he's warm for the rest of his life.",
    "author": "Terry Pratchett, Jingo"
  },
  {
    "quote": "I'd kill the Mule",
    "author": "A Faithfull Husband"
  }
]


