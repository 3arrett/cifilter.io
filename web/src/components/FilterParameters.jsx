import React from 'react';
import styled from 'styled-components';
import FilterParameter from './FilterParameter';

const Heading = styled.div`
    font-size: 14px;
    font-weight: bold;
    color: #F5BD5D;
    text-transform: uppercase;
`;

function filterHasLongParameterNames(parameters) {
    for (let parameter of parameters) {
        if (parameter.classType.length > 15) {
            return true;
        }
    }
    return false;
}

const FilterParameters = (props) => {
    return (
        <div>
            <Heading className="margin-bottom--md margin-top--lg">
                {props.parameters.length > 0 ? "Parameters" : "This filter takes no parameters"}
            </Heading>
            <div>{props.parameters.sort((p1, p2) => p1.name.localeCompare(p2.name)).map(
                (parameter) => <FilterParameter
                                    key={parameter.name}
                                    longType={filterHasLongParameterNames(props.parameters)}
                                    parameter={parameter} />
            )}</div>
        </div>
    )
};
export default FilterParameters;