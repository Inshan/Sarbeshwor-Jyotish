import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
// import ProfileBg from '../../assets/slider1.jpeg'
// import VideoData from '../../Data/VideoData'
import moment from 'moment'

const Video = () => {

    const [gallery, setGallery] = useState([]);
    const [gallery_1, setGallery_1] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 8; // Number of items to display per page
    const [Pages, setTotalPages] = useState(1);



    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const galleryData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Video"
                );
                setGallery(galleryData[0]); // Assuming you want to slice the filtered data

                let newGallery = [...response.data]
                newGallery = newGallery.reverse()

                const gallery_1Data = newGallery.filter(
                    (item) => item.status === "Publish" && item.page_type === "VideoData"
                );

                // Calculate the total number of pages based on the items per page
                setTotalPages(Math.ceil(gallery_1Data.length / itemsPerPage));

                // Calculate the start and end indices for the current page
                const startIndex = (currentPage - 1) * itemsPerPage;
                const endIndex = startIndex + itemsPerPage;

                // Slice the data to display only the items for the current page
                const paginatedGallery_1Data = gallery_1Data.slice(
                    startIndex,
                    endIndex
                );

                setGallery_1(paginatedGallery_1Data);
            }
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, [currentPage]);

    const uniqueAlbumTypes = [];
    const filteredVideo = gallery_1.filter((video) => {
        if (!uniqueAlbumTypes.includes(video.name)) {
            uniqueAlbumTypes.push(video.name);
            return true;
        }
        return false;
    });

    const mostRecentVideo = filteredVideo.reduce((maxPhoto, currentPhoto) => {
        const maxTimestamp = moment(maxPhoto.timestamp);
        const currentTimestamp = moment(currentPhoto.timestamp);
        return maxTimestamp.isBefore(currentTimestamp) ? currentPhoto : maxPhoto;
    }, filteredVideo[0]);

    return (
        <>
            {/* ------- Top Part ------ */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={gallery.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-70 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'> {gallery.name}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {gallery.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {gallery.name}
                        </li>
                    </ol>
                </div>
            </div>

            {/* ----- Bottom Part ------ */}
            <div className='w-full py-16'>
                <div className='container'>
                    <div className='flex flex-wrap gap-5'>
                        {mostRecentVideo && (
                            <Link key={mostRecentVideo.id} to={`/videodetail/${mostRecentVideo.name}`}>
                                <div className='p-2 border flex flex-col'>
                                    <div className='relative xl:w-[319px] md:w-[340px] w-[339px] h-60'>
                                        <div className=' absolute w-full h-full'>
                                            <img src={mostRecentVideo.slider_image} alt="" className='w-full h-full' />
                                        </div>
                                    </div>
                                    <div className='flex flex-col text-center text-gray-600'>
                                        <p className='text-2xl font-medium border-b border-orange'>{mostRecentVideo.photodate}</p>
                                        <p className='text-2xl font-medium'>{mostRecentVideo.name}</p>
                                    </div>
                                </div>
                            </Link>
                        )}
                        {filteredVideo
                            .filter(video => video !== mostRecentVideo)
                            .map((video) => (
                            <Link key={video.id} to={`/videodetail/${video.name}`}>
                                <div className='p-2 border flex flex-col'>
                                    <div className='relative xl:w-[319px] md:w-[340px] w-[339px] h-60'>
                                        <div className=' absolute w-full h-full'>
                                            <img src={video.slider_image} alt="" className='w-full h-full' />
                                        </div>
                                    </div>
                                    <div className='flex flex-col text-center text-gray-600'>
                                        <p className='text-2xl font-medium border-b border-orange'>{video.photodate}</p>
                                        <p className='text-2xl font-medium'>{video.name}</p>
                                    </div>
                                </div>
                            </Link>
                            ))}
                    </div>
                </div>
                <nav className="flex justify-center items-center space-x-2 pt-8">
                    <button
                        className="text-gray-500 hover:text-blue-600 p-4 inline-flex items-center gap-2 rounded-md"
                        onClick={() => setCurrentPage(currentPage - 1)}
                        disabled={currentPage === 1}
                    >
                        <span aria-hidden="true">«</span>
                        <span className="sr-only">Previous</span>
                    </button>
                    {Array.from({ length: Pages }).map((_, index) => (
                        <button
                            key={index + 1}
                            className={`w-10 h-10 ${currentPage === index + 1
                                ? "bg-blue-500 text-white"
                                : "text-gray-500 hover:text-blue-600"
                                } p-4 inline-flex items-center text-sm font-medium rounded-full`}
                            onClick={() => setCurrentPage(index + 1)}
                        >
                            {index + 1}
                        </button>
                    ))}
                    <button
                        className="text-gray-500 hover:text-blue-600 p-4 inline-flex items-center gap-2 rounded-md"
                        onClick={() => setCurrentPage(currentPage + 1)}
                        disabled={currentPage === Pages}
                    >
                        <span className="sr-only">Next</span>
                        <span aria-hidden="true">»</span>
                    </button>
                </nav>
            </div>
        </>
    )
}

export default Video