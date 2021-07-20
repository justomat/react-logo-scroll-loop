import React from 'react';

const whiteGradient = `linear-gradient(to right, rgba(255,255,255,1) 0%, rgba(255,255,255,0) 100%)`;
const gradient = {
	backgroundImage: whiteGradient,
	height: 100,
	position: 'absolute',
	width: 200,
	zIndex: 2,
};

export const Gradient = ({ style }) => (
	<div style={{ ...gradient, ...style }} />
);
