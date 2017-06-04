# Arrows

## About

Ruby toy project.

Converts a given string, composed of the follwing four characters (arrows) to an integer pair: `v`, `^`, `<`, `>`. For example, the string `>>>>` evaluates to `(4, 0)` and the string `<<<^^^` evaluates to `(-3, 3)`.

## Implementation

The project is composed of two classes:
- `Arrows::Coordinates`
- `Arrows::Directions`

`Arrows::Directions` is responsible for calculating the aforementioned tuple as per the arrow directions. Consider the excerpt below:

```ruby
directions = Arrows::Directions.new('>>><<<^^^^^^^^vv')

coordinates = directions.to_coordinates # => #<Arrows::Coordinates:0x007fe76913d8e8 @abscissa=0, @ordinate=6>

coordinates.abscisa # => 0
coordinates.ordinate # => 6

```
