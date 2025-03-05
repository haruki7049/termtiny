const std = @import("std");

/// A mouse related event
pub const MouseEvent = union(enum) {
    /// A mouse button was pressed
    Press: struct {
        button: MouseButton,
        x: u16,
        y: u16,
    },

    /// A mouse button was released
    Release: struct {
        x: u16,
        y: u16,
    },

    /// A mouse button is held over the given coordinates
    Hold: struct {
        x: u16,
        y: u16,
    },
};

/// A mouse button
pub const MouseButton = enum {
    /// The left mouse button
    Left,

    /// The right mouse button
    Right,

    /// The middle mouse button.
    Middle,

    /// Mouse wheel is going up
    WheelUp,

    /// Mouse wheel is going down
    WheelDown,

    /// Mouse wheel is going left
    WheelLeft,

    /// Mouse wheel is going right
    WheelRight,
};
