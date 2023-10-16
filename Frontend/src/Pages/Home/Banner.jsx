import React,{useState, useEffect} from 'react'
import axios from 'axios'
import BannerImageData from '../../Data/BannerImageData'
import { Link } from 'react-router-dom'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

function SampleNextArrow(props) {
  const { className, style, onClick } = props;
  return (
    <div
      className={className}
      style={{ ...style, display: "none" }}
      onClick={onClick}
    />
  );
}
function SamplePrevArrow(props) {
  const { className, style, onClick } = props;
  return (
    <div
      className={className}
      style={{ ...style, display: "none" }}
      onClick={onClick}
    />
  );
}
function Banner() {
  const settings = {
    dots: false,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    fade: true,
    speed: 3000,
    autoplay: true,
    autoplaySpeed: 5000,
    nextArrow: <SampleNextArrow />,
    prevArrow: <SamplePrevArrow />,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 4,
          // infinite: true,
          // dots: true
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          initialSlide: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,

        }
      }
    ],


  };

  const [data, setData] = useState([]);
  const [image, setImage] = useState([])
  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const DocumentData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Banner"
        );
        setData(DocumentData[0]); // Assuming you want to slice the filtered data

        if (response.data) {
          const DocumentData = response.data.filter(
            (item) => item.status === "Publish" && item.page_type === "BannerData"
          );
          setImage(DocumentData); // Assuming you want to slice the filtered data

      }}}
      catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);

  return (
    <>
      <div className='w-full'>
        <div className='relative w-full h-[700px] md:h-[568px]'>
          <Slider {...settings}>
            {image.map((item) => (
              <div className='relative w-full h-[700px] md:h-[568px] overflow-hidden'>
                <img src={item.bannerimage} alt="" className='absolute w-full h-full object-cover animate-upscale' />
              </div>
            ))}
          </Slider>
          <div className='absolute top-0 left-0 w-full h-[700px] bg-black opacity-60 md:h-[568px]'></div>
          <div className='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2  text-creamyWhite font-medium z-10 w-full text-center xl:text-9xl text-6xl'>{data.title}</div>
          <div className='w-full flex justify-center absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 mt-28 z-20'>
            <Link to='/Appointment'>
              <button className='bg-red py-2 px-6 text-white text-xl  md:text-2xl rounded-2xl hover:bg-lightCream transition duration-500 hover:text-red font-medium'>{data.caption}</button>
            </Link>
          </div>
          <div className='absolute xl:left-32 top-0 left-1/2 -translate-x-1/2 z-30'>
            {/* <iframe
              title="Nepali Calendar Widget"
              src="src/Pages/Iframes/daycalendar.html"
              className='w-48 md:w-60 h-60 pl-5'
            ></iframe> */}
          </div>
        </div>
      </div>
    </>
  )
}

export default Banner


// ज्योतिर्यस्य स ज्योतिष: