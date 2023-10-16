import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { FormControl, FormLabel } from '@chakra-ui/react'

// import ProfileBg from '../../assets/slider1.jpeg'

const Contact = () => {
    const [data, setData] = useState([]);
    const [contact, setContact] = useState([])
    const [isSuccessMessageVisible, setIsSuccessMessageVisible] = useState(false);
    const [isErrorMessageVisible, setIsErrorMessageVisible] = useState(false); // State for displaying the error message

    const [formData, setFormData] = useState({
        name: "",
        email: "",
        number: "",
        message: "",

    });

    // const [successMessage, setSuccessMessage] = useState("");

    const showSuccessMessage = () => {
        setIsSuccessMessageVisible(true);
        // Set a timeout to hide the success message after 5 seconds (adjust as needed)
        setTimeout(() => {
            setIsSuccessMessageVisible(false);
        }, 5000);
    };

    const showErrorMessage = () => {
        setIsErrorMessageVisible(true);
        // Set a timeout to hide the error message after 5 seconds (adjust as needed)
        setTimeout(() => {
            setIsErrorMessageVisible(false);
        }, 5000);
    };

    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );


            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Contact"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
            }

            const response1 = await axios.get('http://127.0.0.1:8000/api/globals/');
            // Handle the response data here
            response1.data && setContact(response1.data[0]);

        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const handleInputChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({
            ...prevData,
            [name]: value,
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (formData.name && formData.email && formData.number && formData.message) {
            try {
                const response = await axios.post(
                    "http://127.0.0.1:8000/api/contacts/",
                    formData
                );

                if (response.status === 201) {
                    // Show a success message to the user
                    showSuccessMessage(); // Call the function to show the success message
                    // Optionally, reset the form fields
                    setFormData({
                        name: "",
                        email: "",
                        number: "",
                        message: "",
                    });
                } else {
                    console.error("Form submission failed with status:", response.status);
                    // Display a user-friendly error message here if needed
                }
            } catch (error) {
                console.error("Error submitting form:", error);

                if (error.response && error.response.status === 400) {

                    console.log("Validation errors:", error.response.data);

                }
                else {
                }
            }
        }
        else {
            showErrorMessage();
        }
    }

    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, []);

    return (
        <>
            {/* ------- Top Part ------ */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-70 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'> {data.title}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4 hidden xl:flex" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <a className="flex items-center text-gray-500" href="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </a>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {data.title}
                        </li>
                    </ol>
                </div>
            </div>

            {/* ------ Address Part ------ */}
            <div className='w-full py-16'>
                <div className='container'>
                    <div className='w-full flex justify-between flex-col gap-10 xl:flex-row md:flex-row'>
                        <div className='flex flex-row items-center gap-4 xl:flex-col md:flex-col xl:w-1/3'>
                            <div className='w-10 h-10 flex justify-center items-center rounded-full xl:w-16 xl:h-16 bg-red'>
                                <i className="fa-solid fa-phone text-2xl text-white"></i>
                            </div>
                            <p className='text-gray-900 text-lg'>{contact.Sitecontact}</p>
                        </div>
                        <div className='flex flex-row items-center gap-4 xl:flex-col md:flex-col xl:w-1/3'>
                            <div className='w-10 h-10 flex justify-center items-center rounded-full xl:w-16 xl:h-16 bg-red'>
                                <i className="fa-solid fa-envelope text-2xl text-white"></i>
                            </div>
                            <p className='text-gray-900 text-lg'>{contact.Siteaddress1}</p>
                        </div>
                        <div className='flex flex-row items-center gap-4 xl:flex-col md:flex-col xl:w-1/3'>
                            <div className='w-10 h-10 flex justify-center items-center rounded-full xl:w-16 xl:h-16 bg-red'>
                                <i className="fa-solid fa-location-dot text-2xl text-white"></i>
                            </div>
                            <p className='w-60 text-gray-900 text-lg xl:w-full'>{contact.Siteaddress2}</p>
                        </div>
                    </div>
                </div>
            </div>

            {/* ------ Form Part ------ */}
            <div className='w-full pb-16 xl:pt-16 xl:pb-32'>
                <div className='w-full flex justify-center text-4xl font-semibold pb-4'>
                    <h3>{data.meta_title}</h3>
                </div>
                <form onSubmit={handleSubmit}>
                    <div className='container flex justify-center'>
                        <div className='w-full flex flex-col gap-4 xl:bg-white xl:border xl:drop-shadow-2xl xl:w-3/5 xl:p-8 md:w-4/5 md:bg-white md:drop-shadow-xl md:p-8'>
                            <div>
                                <FormControl isRequired>
                                    <input
                                        type="text"
                                        name="name"
                                        placeholder="Your Name"
                                        className='w-full p-2 border'
                                        value={formData.name}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                            <div>
                                <FormControl isRequired>
                                    <input
                                        type="email"
                                        name="email"
                                        placeholder="Your Email"
                                        className='w-full p-2 border'
                                        value={formData.email}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                            <div>
                                <FormControl isRequired>
                                    <input
                                        type="text"
                                        name="number"
                                        placeholder="Your Number"
                                        className='w-full p-2 border'
                                        value={formData.number}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                            <div>
                                <FormControl isRequired>
                                    <textarea
                                        type="text"
                                        name="message"
                                        rows="5"
                                        placeholder="Your Message"
                                        className='w-full p-2 border'
                                        value={formData.message}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>

                            </div>
                            <div className='pt-4 text-center'>
                                <button className='bg-red text-white px-4 py-2 tracking-wide font-semibold transition duration-300'>SEND NOW</button>
                            </div>
                        </div>
                    </div>

                    {/* Display the error message */}
                    {isErrorMessageVisible && (
                        <div className="text-red mt-4 text-center">
                            All fields must be filled.
                        </div>
                    )}

                    {/* Display the success message */}
                    {isSuccessMessageVisible && (
                        <div className="text-green-600 mt-4 text-center">
                            Submitted successfully! {/* Display your success message here */}
                        </div>
                    )}
                </form >
            </div >

            {/* ------ Google Map Iframe ------ */}
            <div div >
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14128.506643849727!2d85.32045116738283!3d27.713375295762827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198d1d49ecd1%3A0x660ab42526f75d5e!2z4KS44KSw4KWN4KS14KWH4KS24KWN4KS14KSwIOCknOCljeCkr-Cli-CkpOCkv-CktyDgpKTgpKXgpL4g4KS14KS-4KS44KWN4KSk4KWBIOCkuOClh-CkteCkviDgpJXgpYfgpKjgpY3gpKbgpY3gpLA!5e0!3m2!1sen!2snp!4v1693553105981!5m2!1sen!2snp" className='w-full h-96' allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </>
    )
}

export default Contact