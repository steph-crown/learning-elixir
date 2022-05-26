# A Cgpa Calculator Module

## Requirements

-   Has a free variable to store the list of course names and scores and units
-   Has a function to add a course name and score to array of scores and units
-   Has a function to remove the first occurence a course by passing the key to match and the value e.g `remove("name", "Ade")`
-   Has a function to remove the first occurence a course by passing the key to match and the value e.g `remove("name", "Ade")`
-   Has a function to get the list of course names and scores and units
-   Has a function to get the total scores from the list
-   Has a function that returns the grade of a particular score using the following definition:

````
{
    0<=score<=39: 0
    40<=score<=44: 1
    45<=score<=49: 2
    50<=score<=59: 3
    60<=score<=69: 4
    70<=score<=100: 5

}
- Has a function to get the `grade point` of each course by multiplying grade of the score by the unit
-   Has a function to calculate the total units
-   Has a function to get the cummulative grade point average of these scores

Note: Cgpa calculation algorithm:

```jsx
- Get List of maps maps representing each course:
maps = {
    name: String,
    score: number,
    unit: number
}[]
`0 <= score <= 100`

- The total scores is calculated by adding all scores across all courses.
- The total units is calculated by adding all the units across all courses.
- The total grade point is calculated by adding all the grade points of each course
- The cummulative grade point average is gotten by dividing the total grade point by the total unit

````
