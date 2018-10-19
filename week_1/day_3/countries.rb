countries = {
  uk: { capital: "london",
        name: "United Kingdom",
        population: "60,000,000-ish",
        tagline: "sorry for the inconvenience"
      },
  france: { capital: "paris",
            name: "France",
            tagline: "Liberty, Equality, Brotherhood",
            population: "67,000,000-ish"
          },

  USA: { capital: "Washington D.C.",
         name: "United States of America",
         population: "327,700,000-ish",
         tagline: "in god we trust"
       }
  }

p countries[:uk][:capital]
p countries[:france][:tagline]
