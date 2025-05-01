//
//  Movies.swift
//  Mallina_MovieApp
//
//  Created by Sohitha Mallina on 4/26/25.
//

import Foundation
struct Movies {
    var genre: String
    var list_Array: [MovieList]
}

struct MovieList {
    var movieName: String
    var movieImage: String
    var movieInfo: String
}
let movieGenres: [Movies] = [
    Movies(genre: "Action", list_Array: [
        MovieList(movieName: "Baahubali: The Beginning", movieImage: "baahubali1", movieInfo: "Epic action film about a lost prince's journey."),
        MovieList(movieName: "Sye", movieImage: "sye", movieInfo: "Rugby-based college rivalry drama."),
        MovieList(movieName: "Akhanda", movieImage: "akhanda", movieInfo: "A powerful man battles evil for justice."),
        MovieList(movieName: "Dhruva", movieImage: "dhruva", movieInfo: "A determined police officer fights corruption."),
        MovieList(movieName: "Eega", movieImage: "eega", movieInfo: "A man reincarnates as a housefly for revenge.")
    ]),
    Movies(genre: "Comedy", list_Array: [
        MovieList(movieName: "Manmadhudu", movieImage: "manmadhudu", movieInfo: "A man who hates women falls for one unexpectedly."),
        MovieList(movieName: "Nuvvu Naaku Nachav", movieImage: "nuvvunaakunachav", movieInfo: "Heartwarming romantic comedy with loads of humor and emotions."),
        MovieList(movieName: "Bommarillu", movieImage: "bommarillu", movieInfo: "A young man struggles for independence from his over-controlling father."),
        MovieList(movieName: "Malliswari", movieImage: "malliswari", movieInfo: "A hilarious tale of a common man falling for a princess."),
        MovieList(movieName: "Athadu", movieImage: "athadu", movieInfo: "A professional killer's mistaken identity leads to emotional and funny adventures.")
    ]),
    Movies(genre: "Drama", list_Array: [
        MovieList(movieName: "Mahanati", movieImage: "mahanati", movieInfo: "Biopic of legendary actress Savitri."),
        MovieList(movieName: "Seethamma Vakitlo Sirimalle Chettu", movieImage: "svsc", movieInfo: "A beautiful story about family values and relationships."),
        MovieList(movieName: "Jersey", movieImage: "jersey", movieInfo: "A late-bloomer cricketer's emotional journey."),
        MovieList(movieName: "Rangasthalam", movieImage: "rangasthalam", movieInfo: "Story of a hearing-impaired man fighting injustice."),
        MovieList(movieName: "Vedam", movieImage: "vedam", movieInfo: "Interwoven stories of different people's struggles.")
    ]),
    Movies(genre: "Horror", list_Array: [
        MovieList(movieName: "Arundhati", movieImage: "arundhati", movieInfo: "A woman fights an evil spirit from her past."),
        MovieList(movieName: "Avunu", movieImage: "avunu", movieInfo: "A newly married couple faces paranormal activities."),
        MovieList(movieName: "Prema Katha Chitram", movieImage: "premakathachitram", movieInfo: "Friends plan a suicide pact but get haunted."),
        MovieList(movieName: "Raju Gari Gadhi", movieImage: "rajugarigadhi", movieInfo: "A group of people trapped in a haunted resort."),
        MovieList(movieName: "Geethanjali", movieImage: "geethanjali", movieInfo: "A comedy horror centered around a haunted house.")
    ])
]
