import React from "react";

const Mandatory: React.FC<{content: string}> = ({content}): JSX.Element => {
    return (
        <span className="text-gray-500">(*) {content}</span>
    )
}

export {
    Mandatory
}