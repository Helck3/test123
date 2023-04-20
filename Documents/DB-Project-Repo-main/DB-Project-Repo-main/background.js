import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import logo from '../../images/logo.png';




const Background = () => {
    return (
        <div className='home'>
            <img src={logo} alt = "Logo"/>
        </div>
    );
}

export default Background;