import React from 'react'
import Banner from '../Home/Banner'
import Course from '../Home/Course'
import Zodiac from '../Home/Zodiac'
import Testimonial from './Testimonial'
import Panchanga from './Panchanga'
import LastestNews from './LastestNews'
import Service from './Service'
import AboutUs from './AboutUs'

function Home() {
    return (
        <>
            <Banner />
            <AboutUs />
            <Service />
            <Course />
            <Zodiac />
            <Testimonial />
            <Panchanga />
            <LastestNews />
        </>
    )
}

export default Home