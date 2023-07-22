//
//  Data.swift
//  NDP app
//
//  Created by klifton Cheng stu on 22/7/23.
//

import Foundation

struct Video: Identifiable, Codable {
    var id = UUID()
    
    var title: String
    var year: Int
    var link: URL?
    var lyrics: String?
    var like: Bool? = false
}

enum Sizes: Double {
    case smallSize = 5
    case defaultSize = 10
    case large = 30
}

let NationalDayYears : [Video] = [
    .init(title: "2023 - Shine Your Light  ", year: 2023, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=1.%20Shine%20Your%20Light%20(2023)%20by%2053A%2C%20The%20Island%20Voices%2C%20lewloh%2C%20Olivia%20Ong%2C%20ShiGGa%20Shay%2C%20Iman%20Fandi%2C%20Lineath")),
    .init(title: "Stronger Together (2022) by Taufik Batisah", year: 2022, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=Stronger%20Together%20(2022)%20by%20Taufik%20Batisah")),
    .init(title: " The Road Ahead (2021) by Linying, Sezairi Sezali, Shye and Shabir", year: 2021, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=The%20Road%20Ahead%20(2021)%20by%20Linying%2C%20Sezairi%20Sezali%2C%20Shye%20and%20Shabir")),
    .init(title: "“Everything I Am (2020)” by Nathan Hartono", year: 2020, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%E2%80%9CEverything%20I%20Am%20(2020)%E2%80%9D%20by%20Nathan%20Hartono")),
    .init(title: "“Our Singapore (2019 Remake)” by Rahimah Rahim, Jacintha Abisheganaden, Stefanie Sun. JJ Lin, Dick Lee, Kit Chan", year: 2019, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%E2%80%9COur%20Singapore%20(2019%20Remake)%E2%80%9D%20by%20Rahimah%20Rahim%2C%20Jacintha%20Abisheganaden%2C%20Stefanie%20Sun.%20JJ%20Lin%2C%20Dick%20Lee%2C%20Kit%20Chan")),
    .init(title: "“We Are Singapore (2018 Remake)” by Charlie Lim, Vanessa Fernandez, Aisyah Aziz, Shak'thiya Subramaniamm, Joanna Dong and THELIONCITYBOY", year: 2018, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%E2%80%9CWe%20Are%20Singapore%20(2018%20Remake)%E2%80%9D%20by%20Charlie%20Lim%2C%20Vanessa%20Fernandez%2C%20Aisyah%20Aziz%2C%20Shak%27thiya%20Subramaniamm%2C%20Joanna%20Dong%20and%20THELIONCITYBOY")),
    .init(title: "'Because it's Singapore (2017)' by Jay Lim", year: 2017, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Because%20it%27s%20Singapore%20(2017)%22%20by%20Jay%20Lim")),
    .init(title: "'Tomorrow's Here Today (2016)' by 53A", year: 2016, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Tomorrow%27s%20Here%20Today%20(2016)%22%20by%2053A")),
    .init(title: "'Our Singapore (2015)' by Dick Lee and JJ Lin", year: 2015, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Our%20Singapore%20(2015)%22%20by%20Dick%20Lee%20and%20JJ%20Lin")),
    .init(title: "'We Will Get There (2014)' by Farisha Ishak, Fauzi Laili, Tay Ke Wei, Rahimah Rahim and Tabitha Nauser", year: 2014, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22We%20Will%20Get%20There%20(2014)%22%20by%20Farisha%20Ishak%2C%20Fauzi%20Laili%2C%20Tay%20Ke%20Wei%2C%20Rahimah%20Rahim%20and%20Tabitha%20Nauser")),
    .init(title: "'One Singapore (2013)' by Elaine Chan", year: 2013, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22One%20Singapore%20(2013)%22%20by%20Elaine%20Chan")),
    .init(title: "'Love At First Light (2012)' by Olivia Ong and Natanya Tan", year: 2012, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Love%20At%20First%20Light%20(2012)%22%20by%20Olivia%20Ong%20and%20Natanya%20Tan")),
    .init(title: "'In a Heartbeat (2011)' by Sylvia Ratonel", year: 2011, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22In%20a%20Heartbeat%20(2011)%22%20by%20Sylvia%20Ratonel")),
    .init(title: "'Song for Singapore (2010)' by Corrine May", year: 2010, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Song%20for%20Singapore%20(2010)%22%20by%20Corrine%20May")),
    .init(title: "'What Do You See? (2009)' by Electrico", year: 2009, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22What%20Do%20You%20See%3F%20(2009)%22%20by%20Electrico")),
    .init(title: "'Shine for Singapore (2008)' by Hady Mirza", year: 2008, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Shine%20for%20Singapore%20(2008)%22%20by%20Hady%20Mirza")),
    .init(title: "'There's No Place I'd Rather Be (2007)' by Kit Chan", year: 2007, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22There%27s%20No%20Place%20I%27d%20Rather%20Be%20(2007)%22%20by%20Kit%20Chan")),
    .init(title: "'My Island Home (2006)' by Kaira Gong", year: 2006, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22My%20Island%20Home%20(2006)%22%20by%20Kaira%20Gong")),
    .init(title: "'Reach Out for the Skies (2005)' by Taufik Batisah and Rui En", year: 2005, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Reach%20Out%20for%20the%20Skies%20(2005)%22%20by%20Taufik%20Batisah%20and%20Rui%20En")),
    .init(title: "'Home (2004)' by Kit Chan", year: 2004, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Home%20(2004)%22%20by%20Kit%20Chan")),
    .init(title: "'One United People (2003)' by Stefanie Sun", year: 2003, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22One%20United%20People%20(2003)%22%20by%20Stefanie%20Sun")),
    .init(title: "'We Will Get There (2002)' by Stefanie Sun", year: 2002, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22We%20Will%20Get%20There%20(2002)%22%20by%20Stefanie%20Sun")),
    .init(title: "'Where I Belong (2001)' by Tanya Chua", year: 2001, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Where%20I%20Belong%20(2001)%22%20by%20Tanya%20Chua")),
    .init(title: "'Shine on Me (2000)' by Mavis Hee and Jai Wahab", year: 2000, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Shine%20on%20Me%20(2000)%22%20by%20Mavis%20Hee%20and%20Jai%20Wahab")),
    .init(title: "'Together (1999)' by Evelyn Tan & Dreamz FM", year: 1999, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Together%20(1999)%22%20by%20Evelyn%20Tan%20%26%20Dreamz%20FM")),
    .init(title: "'Home (1998)' by Kit Chan and Dick Lee", year: 1998, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Home%20(1998)%22%20by%20Kit%20Chan%20and%20Dick%20Lee")),
    .init(title: "'Singapore Town (1997)' by The Sidaislers", year: 1997, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Singapore%20Town%20(1997)%22%20by%20The%20Sidaislers")),
    .init(title: "'Count On Me Singapore (1996)' by Clement Chow", year: 1996, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Count%20On%20Me%20Singapore%20(1996)%22%20by%20Clement%20Chow")),
    .init(title: "'My People My Home (1995)' by Dr Lee Tzu Pheng", year: 1995, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22My%20People%20My%20Home%20(1995)%22%20by%20Dr%20Lee%20Tzu%20Pheng")),
    .init(title: "none", year: 1994),
    .init(title: "none", year: 1993),
    .init(title: "none", year: 1992),
    .init(title: "'It's the Little Things (1991)' by Patrick Seet and Ivan Chua", year: 1991, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22It%27s%20the%20Little%20Things%20(1991)%22%20by%20Patrick%20Seet%20and%20Ivan%20Chua")),
    .init(title: "'One People, One Nation, One Singapore (1990)' by Faridah Ali, Jacintha Abisheganaden, Stephen Francis and Clement Chow", year: 1990, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22One%20People%2C%20One%20Nation%2C%20One%20Singapore%20(1990)%22%20by%20Faridah%20Ali%2C%20Jacintha%20Abisheganaden%2C%20Stephen%20Francis%20and%20Clement%20Chow")),
    .init(title: "'Five Stars Arising (1989)' by Lim Su Chong", year: 1989, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Five%20Stars%20Arising%20(1989)%22%20by%20Lim%20Su%20Chong")),
    .init(title: "'We are Singapore (1987-1988)' by Jonathan Tan, Roslinda Baharudin, Anne Weerapass and Robert Fernando", year: 1988, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22We%20are%20Singapore%20(1987%2D1988)%22%20by%20Jonathan%20Tan%2C%20Roslinda%20Baharudin%2C%20Anne%20Weerapass%20and%20Robert%20Fernando")),
    .init(title: "1988", year: 1987, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22We%20are%20Singapore%20(1987%2D1988)%22%20by%20Jonathan%20Tan%2C%20Roslinda%20Baharudin%2C%20Anne%20Weerapass%20and%20Robert%20Fernando")),
    .init(title: "'Count On Me Singapore (1986)' by Clement Chow", year: 1986, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Count%20On%20Me%20Singapore%20(1986)%22%20by%20Clement%20Chow")),
    .init(title: "'Stand Up for Singapore (1984-1985)' by Hugh Harrison ", year: 1985, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Stand%20Up%20for%20Singapore%20(1984%2D1985)%22%20by%20Hugh%20Harrison")),
    .init(title: "1985", year: 1984, link: URL(string: "https://www.musicaltouch.sg/post/ndp-songs#viewer-6dsg4:~:text=%22Stand%20Up%20for%20Singapore%20(1984%2D1985)%22%20by%20Hugh%20Harrison")),]
