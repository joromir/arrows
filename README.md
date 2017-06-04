# Arrows

## About

Ruby toy project.

Converts a given string, composed of the follwing four characters (arrows) to an integer pair: `v`, `^`, `<`, `>`. For example, the string `>>>>` evaluates to `(4, 0)` and the string `<<<^^^` evaluates to `(-3, 3)`.

## Implementation

The project is composed of the following classes:
- `Arrows::Coordinates`
- `Arrows::Directions`
- `Arrows::BuildDirections`

`Arrows::Directions` is responsible for calculating the aforementioned tuple as per the arrow directions. Consider the excerpt below:

```ruby
directions = Arrows::Directions.new('>>><<<^^^^^^^^vv')

coordinates = directions.to_coordinates # => #<Arrows::Coordinates:0x007fe76913d8e8 @abscissa=0, @ordinate=6>

coordinates.abscissa # => 0
coordinates.ordinate # => 6

```

A directions string could be build on the basis of a given `Arrows::Coordinates` instance. Simply invoke the class `Arrows::BuildDirections` with the desired input.

```ruby
pair = Arrows::Coordinates.new(3, -12)
builder = Arrows::BuildDirections.new(pair)

builder.to_s # => '>>>vvvvvvvvvvvv'
```
