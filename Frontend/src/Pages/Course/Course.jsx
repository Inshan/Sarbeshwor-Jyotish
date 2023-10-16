import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import { FormControl, FormLabel } from '@chakra-ui/react'
import { Accordion, AccordionItem, AccordionButton, AccordionPanel, AccordionIcon, Box } from '@chakra-ui/react'

// import ProfileBg from '../../assets/slider1.jpeg'
// import {
//     FormControl,
//     FormLabel,
//     FormErrorMessage,
//     FormHelperText,
// } from '@chakra-ui/react'
// import { SingleDatepicker } from "chakra-dayzed-datepicker";
// import { Textarea } from '@chakra-ui/react'
// import QRSample from '../../assets/sampleqr.webp'

const Course = () => {

    const [data, setData] = useState([]);
    const [data1, setData1] = useState([]);
    const [formData, setFormData] = useState({
        name: "",
        email: "",
        address: "",
        gender: "",
        dateofbirth: "",
        mobileno: "",
        education: "",
        prof: "",
        courselevel: "",
        nationality: "",
    });

    const [isSuccessMessageVisible, setIsSuccessMessageVisible] = useState(false);
    const [isErrorMessageVisible, setIsErrorMessageVisible] = useState(false); // State for displaying the error message


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
                    (item) => item.status === "Publish" && item.page_type === "Course"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
            }
            if (response.data) {
                const DocumentData1 = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Course Data"
                );
                setData1(DocumentData1); // Assuming you want to slice the filtered data
            }
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
        // Check if any required field is empty
        if (
            formData.name === "" ||
            formData.email === "" ||
            formData.mobileno === "" ||
            formData.dateofbirth === "" ||
            formData.gender === "" ||
            formData.timeofday === "" ||
            formData.waytoreach === "" ||
            formData.preferreddate === "" ||
            formData.preferredtime === "" ||
            formData.address === "" ||
            formData.message === "" ||
            formData.receipt === ""
        ) {
            // Fields are missing, display an error message
            showErrorMessage();
            return; // Do not proceed with form submission
        }

        try {
            const response = await axios.post(
                "http://127.0.0.1:8000/api/courses/",
                formData
            );

            if (response.status === 201) {
                // Show a success message to the user
                showSuccessMessage(); // Call the function to show the success message

                // Optionally, reset the form fields
                setFormData({
                    name: "",
                    address: "",
                    gender: "",
                    dateofbirth: "",
                    mobileno: "",
                    email: "",
                    education: "",
                    prof: "",
                    courselevel: "",
                    nationality: ""
                });
            } else {
                console.error("Form submission failed with status:", response.status);
                // Display a user-friendly error message here if needed
            }
        } catch (error) {
            console.error("Error submitting form:", error);

            if (error.response && error.response.status === 400) {
                // Handle validation errors from the server
                // You can access the error response data for more details
                console.log("Validation errors:", error.response.data);
                // Display validation error messages to the user
                // For example, you can set error messages in the state to display to the user
            } else {
                // Handle other types of errors (network, server issues, etc.)
                // You can display a generic error message to the user
                // or log the error for debugging
            }
        }
    };


    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, []);
console.log(formData)
    return (
        <>
            {/* ----- Top Part ------ */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.title}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm">
                            <a className="flex items-center text-gray-500" href="#">
                                {data.meta_title}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </a>
                        </li>
                        <li className="text-sm">
                            <Link className="flex items-center text-orange font-semibold" to="#">
                                {data.title}
                            </Link>
                        </li>
                    </ol>
                </div>
            </div>

            {/* ------ Bottom Part ----- */}
            <div className='container'>
                <div className='py-16'>
                    <div className='text-xl font-semibold'>
                        <h3>{data.title}</h3>
                    </div>
                    <div className='pt-6'>
                        <p className='md:text-xl text-base' dangerouslySetInnerHTML={{ __html: data.short_desc }}>
                        </p>
                    </div>
                    <div className='pt-16 pb-4'>
                        <h3 className='text-xl font-semibold'>{data.meta_title}</h3>
                    </div>
                    <Accordion defaultIndex={[0]} allowMultiple className='pb-8'>
                        {data1.map((item) => (
                            <AccordionItem>
                                <h2>
                                    <AccordionButton>
                                        <Box as="span" flex='1' textAlign='left' className='text-xl font-medium text-red'>
                                            {item.name}
                                        </Box>
                                        <AccordionIcon />
                                    </AccordionButton>
                                </h2>
                                <AccordionPanel pb={4} className='text-xl px-4'
                                    dangerouslySetInnerHTML={{ __html: item.short_desc }}>
                                </AccordionPanel>
                            </AccordionItem>
                        ))}
                    </Accordion>


                    <div className='pt-16 pb-4'>
                        <h3 className='text-xl font-semibold'>{data.meta_keyword}</h3>
                    </div>

                    <form className='flex flex-col w-full bg-white p-4 md:p-8 drop-shadow-xl border mt-8' onSubmit={handleSubmit}>
                        <div className=' flex flex-col gap-4 md:gap-20 md:flex-row'>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Name</FormLabel>                                
                                    <input
                                        type="text"
                                        name="name"
                                        placeholder="Your Full Name"
                                        className="h-10 border w-full rounded-md"
                                        value={formData.name}
                                        onChange={handleInputChange}
                                        required
                                    />
                                </FormControl>
                            </div>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Address</FormLabel>
                                    <input
                                        type="text"
                                        name="address"
                                        placeholder="Your Address"
                                        className="h-10 border w-full rounded-md"
                                        value={formData.address}
                                        onChange={handleInputChange}
                                        required
                                    />
                                </FormControl>
                            </div>
                        </div>

                        <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Gender</FormLabel>                                
                                    <select
                                        name="gender"
                                        className="h-10 border w-full rounded-md"
                                        value={formData.gender}
                                        onChange={handleInputChange}
                                        required
                                    >
                                        <option value="">Select Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </FormControl>
                            </div>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Date of Birth</FormLabel>
                                    <input
                                        type="date"
                                        name="dateofbirth"
                                        placeholder="Your Date of Birth"
                                        className="h-10 border w-full rounded-md"
                                        value={formData.dateofbirth}
                                        onChange={handleInputChange}
                                        required
                                    />
                                </FormControl>
                            </div>
                        </div>
                        <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Mobile Number</FormLabel>
                                    <input
                                        type="text"
                                        name="mobileno"
                                        placeholder="Your Mobile Number"
                                        className='h-10 border w-full rounded-md'
                                        value={formData.mobileno}
                                        onChange={handleInputChange}
                                        required
                                    />
                                </FormControl>
                            </div>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Email</FormLabel>
                                    <input
                                        type="text"
                                        name="email"
                                        placeholder="Your Email"
                                        className='h-10 border w-full rounded-md'
                                        value={formData.email}
                                        onChange={handleInputChange}
                                        required
                                    />
                                </FormControl>
                            </div>
                        </div>

                        <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Education</FormLabel>
                                    <input
                                        type="text"
                                        name="education"
                                        placeholder="Your Education"
                                        className='h-10 border w-full rounded-md'
                                        value={formData.education}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Profession</FormLabel>
                                    <input
                                        type="text"
                                        name="prof"
                                        placeholder="Your Profession"
                                        className='h-10 border w-full rounded-md'
                                        value={formData.prof}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                        </div>

                        <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Course Level</FormLabel>
                                    <select
                                        name="courselevel"
                                        className="h-10 border w-full rounded-md"
                                        value={formData.courselevel}
                                        onChange={handleInputChange}
                                    >
                                        <option value="">Select Course-Level</option>
                                        <option value="Course1">Course 1</option>
                                        <option value="Course2">Course 2</option>
                                        <option value="Course3">Course 3</option>
                                        <option value="Course4">Course 4</option>
                                        <option value="Course5">Course 5</option>
                                        <option value="Course6">Course 6</option>
                                        <option value="Course7">Course 7</option>
                                    </select>
                                </FormControl>
                            </div>
                            <div className='md:w-1/2'>
                                <FormControl isRequired>
                                    <FormLabel>Nationality</FormLabel>
                                    <input
                                        type="text"
                                        name="nationality"
                                        placeholder="Your Nationality"
                                        className='h-10 border w-full rounded-md'
                                        value={formData.nationality}
                                        onChange={handleInputChange}
                                    />
                                </FormControl>
                            </div>
                        </div>
                        <div className='mt-10'>
                            <button type="submit" className="bg-red px-6 py-2 rounded-xl text-white text-xl">Submit</button>
                        </div>

                        {/* Display the error message if isErrorMessageVisible is true */}
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
                    </form>
                </div >
            </div >
        </>
    )
}

export default Course





