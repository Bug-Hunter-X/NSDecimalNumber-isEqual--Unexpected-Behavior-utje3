In Objective-C, a tricky error can occur when dealing with `NSDecimalNumber` and comparing them for equality using the `isEqual:` method.  This method performs a precise comparison, which might not always yield expected results when dealing with floating-point numbers that have undergone calculations.  For instance, due to the way floating point numbers are represented in memory, seemingly equal numbers might have tiny differences that cause `isEqual:` to return `NO`. Consider this code:

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@