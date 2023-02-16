import React from "react";

const License: React.FC<{mode: 'light' | 'dark'}> = ({mode}) => {
    return (
        <div className={"text-white text-lg h-12 flex items-center px-4 bg-primary "} style={mode == 'light' ? {
					color: '#EE4D2D',
					background: 'white'
				}: {}}>
            <span className="inline-block text-center w-full text-sm font-light">&copy; 2021 Chiến binh Covid - TPDNQ</span>
        </div>
    )
}

export {
    License
}