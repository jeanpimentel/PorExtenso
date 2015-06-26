import XCTest
import PorExtenso

class PorExtensoTest: XCTestCase {
    
    func test1_0_a_9() {
        XCTAssertEqual(PorExtenso().convert(0), "zero")
        XCTAssertEqual(PorExtenso().convert(1), "um")
        XCTAssertEqual(PorExtenso().convert(2), "dois")
        XCTAssertEqual(PorExtenso().convert(3), "três")
        XCTAssertEqual(PorExtenso().convert(4), "quatro")
        XCTAssertEqual(PorExtenso().convert(5), "cinco")
        XCTAssertEqual(PorExtenso().convert(6), "seis")
        XCTAssertEqual(PorExtenso().convert(7), "sete")
        XCTAssertEqual(PorExtenso().convert(8), "oito")
        XCTAssertEqual(PorExtenso().convert(9), "nove")
    }

    func test2_10_a_19() {
        XCTAssertEqual(PorExtenso().convert(10), "dez")
        XCTAssertEqual(PorExtenso().convert(11), "onze")
        XCTAssertEqual(PorExtenso().convert(12), "doze")
        XCTAssertEqual(PorExtenso().convert(13), "treze")
        XCTAssertEqual(PorExtenso().convert(14), "quatorze")
        XCTAssertEqual(PorExtenso().convert(15), "quinze")
        XCTAssertEqual(PorExtenso().convert(16), "dezesseis")
        XCTAssertEqual(PorExtenso().convert(17), "dezessete")
        XCTAssertEqual(PorExtenso().convert(18), "dezoito")
        XCTAssertEqual(PorExtenso().convert(19), "dezenove")
    }

	func test3_20_a_99() {
        XCTAssertEqual(PorExtenso().convert(21), "vinte e um")
        XCTAssertEqual(PorExtenso().convert(32), "trinta e dois")
        XCTAssertEqual(PorExtenso().convert(43), "quarenta e três")
        XCTAssertEqual(PorExtenso().convert(54), "cinquenta e quatro")
        XCTAssertEqual(PorExtenso().convert(65), "sessenta e cinco")
        XCTAssertEqual(PorExtenso().convert(76), "setenta e seis")
        XCTAssertEqual(PorExtenso().convert(87), "oitenta e sete")
        XCTAssertEqual(PorExtenso().convert(98), "noventa e oito")
    }

	func test4_100_a_999() {
        XCTAssertEqual(PorExtenso().convert(100), "cem")
        XCTAssertEqual(PorExtenso().convert(101), "cento e um")
        XCTAssertEqual(PorExtenso().convert(115), "cento e quinze")
        XCTAssertEqual(PorExtenso().convert(200), "duzentos")
        XCTAssertEqual(PorExtenso().convert(201), "duzentos e um")
        XCTAssertEqual(PorExtenso().convert(345), "trezentos e quarenta e cinco")
    }
}


/***************************** XCTest Assertions ******************************

- Boolean Tests
	XCTAssertTrue(expression, format...)
	XCTAssertFalse(expression, format...)

- Equality Tests
	XCTAssertEqual(expression1, expression2, format...)
	XCTAssertNotEqual(expression1, expression2, format...)

- Equalituy Tests - Floating points
	XCTAssertEqualWithAccuracy(expression1, expression2, accuracy, format...)
	XCTAssertNotEqualWithAccuracy(expression1, expression2, accuracy, format...)

- Nil Tests
	XCTAssertNil(expression, format...)
	XCTAssertNotNil(expression, format...)

- Unconditional Failure
	XCTFail(format...)

******************************************************************************/